/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.buildtools

import org.modelix.buildtools.modulepersistence.*
import java.io.File

class FoundModule(val moduleId: ModuleId,
                  val owner: ModuleOwner,
                  var moduleType: ModuleType) {
//    private val dependencies: MutableSet<ModuleDependency> = LinkedHashSet()
    var moduleDescriptor: ModuleDescriptor? = null
    var deploymentDescriptor: DeploymentDescriptor? = null
    private val languageOrDevkitUsedInModels: MutableSet<ModuleIdAndName> = HashSet()

    val name: String
        get() = moduleDescriptor?.name
            ?: deploymentDescriptor?.name
            ?: throw RuntimeException("module has no descriptor: $moduleId in ${owner.path.getLocalAbsolutePath()}")
    val idAndName: ModuleIdAndName
        get() = ModuleIdAndName(moduleId, name)

    fun getModuleIdString() = moduleId.id

    init {
        owner.modules[moduleId] = this
    }

    fun getGenerationDependencies(resolver: ModuleResolver): Set<FoundModule> {
        val result = HashSet<FoundModule>()
        result += languageOrDevkitUsedInModels.mapNotNull { resolver.resolveModule(it, this) }
        result += getAllUsedLanguages(resolver).map { ModuleIdAndName(it.moduleId, it.name) }
            .mapNotNull { resolver.resolveModule(it, this) }

        val moduleDescriptor = moduleDescriptor
        if (moduleDescriptor != null) {
            result += moduleDescriptor.moduleDependencies.map { it.idAndName }
                .mapNotNull { resolver.resolveModule(it, this) }
            result += moduleDescriptor.dependencyVersions.map { it.idAndName }
                .mapNotNull { resolver.resolveModule(it, this, false) }
            result += moduleDescriptor.runtime.map { it.idAndName }
                .mapNotNull { resolver.resolveModule(it, this) }

            when (moduleDescriptor) {
                is LanguageDescriptor -> {
                    result += moduleDescriptor.extendedLanguages.mapNotNull { resolver.resolveModule(it, this) }
                    result += moduleDescriptor.generators.map { ModuleIdAndName(it.id, it.name) }
                        .mapNotNull { resolver.resolveModule(it, this) }
                }
                is GeneratorDescriptor -> {
                    moduleDescriptor.getLanguage()?.let { resolver.resolveModule(it, this) }?.let { result += it }
                }
                is DevkitDescriptor -> {
                    result += moduleDescriptor.exportedLanguages.mapNotNull { resolver.resolveModule(it, this) }
                    result += moduleDescriptor.exportedSolutions.mapNotNull { resolver.resolveModule(it, this) }
                    result += moduleDescriptor.extendedDevkits.mapNotNull { resolver.resolveModule(it, this) }
                }
            }
        }

        return result
    }

    fun getClassPathDependencies(resolver: ModuleResolver): Set<FoundModule> {
        val result: MutableSet<FoundModule> = HashSet()
        val allUsedLanguages = getAllUsedLanguages(resolver)
        result += allUsedLanguages
        val runtimes = allUsedLanguages
            .map { it to it.moduleDescriptor }
            .filter { it.second is LanguageDescriptor }
            .flatMap { lang -> (lang.second as LanguageDescriptor).runtime
                                    .mapNotNull { rt -> resolver.resolveModule(rt.idAndName, lang.first) }
            }
        result += runtimes
        val moduleDescriptor = moduleDescriptor
        if (moduleDescriptor != null) {
            val moduleDeps = moduleDescriptor.moduleDependencies
                .mapNotNull { resolver.resolveModule(it.idAndName, this) } +
                moduleDescriptor.dependencyVersions
                    .mapNotNull { resolver.resolveModule(it.idAndName, this, false) }
            result += moduleDeps
            result += moduleDeps.flatMap { it.getReexportedDeps(resolver) }
        }
        return result
    }

    fun getOwnJars(macros: Macros): Set<File> {
        val result = HashSet<File>()
        val moduleDescriptor = moduleDescriptor
        if (moduleDescriptor != null) {
            var modulePath = owner.getRootOwner().path.getLocalAbsolutePath().toFile()
            if (modulePath.isFile) modulePath = modulePath.parentFile
            val moduleMacro = "module" to modulePath.toPath()
            val marcosWithModule = macros.with(moduleMacro)
            result += moduleDescriptor.resolveJavaLibs(marcosWithModule)
                .map { it.normalize().toFile() }.filter {
                    val exists = it.exists()
                    if (!exists && it.name != "classes" && deploymentDescriptor == null) {
                        println("File not found: $it, usedBy: $name")
                    }
                    exists
                }
        }
        val deploymentDescriptor = deploymentDescriptor
        if (deploymentDescriptor != null) {
            var moduleHome = owner.path.getLocalAbsolutePath().toFile()
            if (moduleHome.isFile) moduleHome = moduleHome.parentFile
            val mpsHome = macros.macros["mps.home"] ?: throw RuntimeException("mps.home not specified")
            result += deploymentDescriptor.resolveJavaLibs(mpsHome, moduleHome.toPath())
                .map { it.normalize().toFile() }.filter {
                    val exists = it.exists()
                    if (!exists) {
                        println("File not found: $it, usedBy: $name")
                    }
                    exists
                }
        }
        return result
    }

    fun getReexportedDeps(resolver: ModuleResolver): List<FoundModule> {
        val moduleDescriptor = moduleDescriptor ?: return listOf()
        return moduleDescriptor.moduleDependencies
            .filter { it.reexport }
            .mapNotNull { resolver.resolveModule(it.idAndName, this) }
    }

    fun getAllUsedLanguages(resolver: ModuleResolver): Set<FoundModule> {
        val result = HashSet<FoundModule>()
        val usedInModels: MutableSet<FoundModule> = languageOrDevkitUsedInModels
            .mapNotNull { resolver.resolveModule(it, this) }.toMutableSet()

        object : GraphWithCyclesVisitor<FoundModule>() {
            override fun onVisit(element: FoundModule) {
                result += element
                val descriptor = element.moduleDescriptor
                if (descriptor is DevkitDescriptor) {
                    visit(descriptor.exportedLanguages.mapNotNull { resolver.resolveModule(it, element) })
                    visit(descriptor.extendedDevkits.mapNotNull { resolver.resolveModule(it, element) })
                }
            }
        }.visit(usedInModels)

        moduleDescriptor?.also { descriptor ->
            result += descriptor.languageVersions.mapNotNull { resolver.resolveModule(it.idAndName, this, false) }
        }

        return result
    }

    fun addLanguageOrDevkitUsedInModels(module: ModuleIdAndName) {
        languageOrDevkitUsedInModels += module
    }

//    private fun addDependency(dep: ModuleDependency) {
//        if (dep.id.id.isNotEmpty()) {
//            dependencies += dep
//        }
//    }

    override fun toString(): String {
        return "$moduleId($name)"
    }
}

enum class ModuleType {
    Solution, Language, Generator, Devkit
}