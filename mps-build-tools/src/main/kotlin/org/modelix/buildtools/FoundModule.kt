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

    init {
        owner.modules[moduleId] = this
    }

    fun getGenerationDependencies(availableModules: ModuleResolver): Set<ModuleIdAndName> {
        val result = HashSet<ModuleIdAndName>()
        result += languageOrDevkitUsedInModels

        val moduleDescriptor = moduleDescriptor
        if (moduleDescriptor != null) {
            result += moduleDescriptor.moduleDependencies.map { it.idAndName }
            result += moduleDescriptor.runtime.map { it.idAndName }

            when (moduleDescriptor) {
                is LanguageDescriptor -> {
                    result += moduleDescriptor.extendedLanguages
                }
                is GeneratorDescriptor -> {
                    moduleDescriptor.getLanguage()?.let { result += it }
                }
                is DevkitDescriptor -> {
                    result += moduleDescriptor.exportedLanguages
                    result += moduleDescriptor.exportedSolutions
                    result += moduleDescriptor.extendedDevkits
                }
            }
        }

        return result
    }

    fun getClassPathDependencies(resolver: ModuleResolver): Set<FoundModule> {
        val result: MutableSet<FoundModule> = HashSet()
        val runtimes = getAllUsedLanguages(resolver)
            .map { it to it.moduleDescriptor }
            .filter { it.second is LanguageDescriptor }
            .flatMap { lang -> (lang.second as LanguageDescriptor).runtime
                                    .mapNotNull { rt -> resolver.resolveModule(rt.idAndName, lang.first) }
            }
        result += runtimes
        val moduleDescriptor = moduleDescriptor
        if (moduleDescriptor != null) {
            val moduleDeps = moduleDescriptor.moduleDependencies
                .mapNotNull { resolver.resolveModule(it.idAndName, this) }
            result += moduleDeps
            result += moduleDeps.flatMap { it.getReexportedDeps(resolver) }
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
        val usedDevkits = HashSet<FoundModule>()
        val usedInModels = languageOrDevkitUsedInModels
            .mapNotNull { resolver.resolveModule(it, this) }

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