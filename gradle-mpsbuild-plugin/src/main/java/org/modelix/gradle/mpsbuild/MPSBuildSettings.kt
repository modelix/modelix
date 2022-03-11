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
package org.modelix.gradle.mpsbuild

import org.gradle.api.Action
import org.gradle.api.Project
import org.gradle.api.artifacts.Configuration
import org.modelix.buildtools.Macros
import org.modelix.buildtools.readXmlFile
import org.w3c.dom.Document
import java.io.ByteArrayInputStream
import java.nio.file.Path
import java.util.HashMap
import java.util.stream.Collectors
import kotlin.collections.ArrayList
import kotlin.collections.HashSet

open class MPSBuildSettings {
    private lateinit var project: Project
    lateinit var moduleDependenciesConfig: Configuration
    lateinit var stubsDependenciesConfig: Configuration

    var mpsHome: String? = null
    private val modules: MutableList<String> = ArrayList()
    private val includedPaths: MutableList<String> = ArrayList()
    private val includedModuleNames: MutableSet<String> = HashSet()
    private val macros: MutableMap<String, String> = HashMap()
    var generatorHeapSize: String = "2G"
    val ideaPlugins: MutableList<IdeaPluginSettings> = ArrayList()

    fun setProject(p: Project) {
        project = p
        moduleDependenciesConfig = project.configurations.create("mpsBuildModules")
        stubsDependenciesConfig = project.configurations.create("mpsBuildStubs")
    }

    fun externalModules(coordinates: String) {
        project.dependencies.add(moduleDependenciesConfig.name, coordinates)
    }

    fun stubs(coordinates: String) {
        project.dependencies.add(stubsDependenciesConfig.name, coordinates)
    }

    fun mpsHome(value: String) {
        mpsHome = value
    }

    fun usingExistingMps(): Boolean {
        return mpsHome != null
    }

    fun validate() {
        // nothing to check at the moment
    }

    fun search(path: String) {
        modules.add(path)
    }

    fun include(pathToInclude: String) {
        includePath(pathToInclude)
    }

    fun includePath(pathToInclude: String) {
        includedPaths.add(pathToInclude)
    }

    fun includeModule(moduleName: String) {
        includedModuleNames.add(moduleName)
    }

    fun getIncludedModuleNames(): Set<String>? {
        return if (includedModuleNames.isEmpty()) null else includedModuleNames
    }

    fun macro(name: String, value: String) {
        macros[name] = value
    }

    fun resolveModulePaths(workdir: Path): List<Path> {
        return if (modules.isEmpty()) listOf(workdir) else modules.stream().map { path: String? -> workdir.resolve(path).normalize() }.distinct().collect(Collectors.toList())
    }

    fun resolveIncludedModules(workdir: Path): List<Path>? {
        return if (includedPaths.isEmpty()) null else includedPaths.stream().map { path: String? -> workdir.resolve(path).toAbsolutePath().normalize() }.distinct().collect(Collectors.toList())
    }

    fun getMacros(workdir: Path): Macros {
        val resolvedMacros: MutableMap<String, Path> = HashMap()
        for ((key, value) in macros) {
            resolvedMacros[key] = workdir.resolve(value).toAbsolutePath().normalize()
        }
        return Macros(resolvedMacros)
    }

    fun ideaPlugin(action: Action<IdeaPluginSettings>) {
        val plugin = IdeaPluginSettings()
        ideaPlugins += plugin
        action.execute(plugin)
    }

    inner class IdeaPluginSettings {
        private var implementationModule: String? = null
        var description: String? = null
        var pluginXml: Document? = null
        fun getImplementationModuleName() = implementationModule
            ?: throw RuntimeException("No implementation module specified for the IDEA plugin")
        fun implementationModule(name: String) {
            require(implementationModule == null) {
                "Only one implementation module is supported. It's already set to $implementationModule"
            }
            implementationModule = name
        }
        fun description(value: String) {
            description = value
        }
        fun pluginXml(content: String) {
            pluginXml = readXmlFile(content.byteInputStream())
        }
    }
}