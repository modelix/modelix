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
import java.net.URL
import java.nio.file.Path
import java.util.stream.Collectors

open class MPSBuildSettings {
    private val mpsVersionPattern = Regex("(\\d+\\.\\d+)(\\.\\d+)?")
    private lateinit var project: Project
    lateinit var dependenciesConfig: Configuration
    var mpsDependenciesConfig: Configuration? = null
    private val publications: MutableMap<String, PublicationSettings> = LinkedHashMap()
    var mpsHome: String? = null
    private val searchPaths: MutableList<String> = ArrayList()
    private val macros: MutableMap<String, String> = HashMap()
    var generatorHeapSize: String = "2G"
    var mpsMajorVersion: String? = null
    private var mpsMinorVersion: String? = null
    var mpsFullVersion: String? = null
    private var mpsDownloadUrl: URL? = null
    private val taskDependencies: MutableList<Any> = ArrayList()

    fun getTaskDependencies(): List<Any> = taskDependencies

    fun dependsOn(vararg tasks: Any) {
        taskDependencies.addAll(tasks)
    }

    fun getPublications(): List<PublicationSettings> = publications.values.toList()

    fun getPluginModuleNames(): Set<String> {
        return getPublications().flatMap { it.ideaPlugins }.map { it.getImplementationModuleName() }.toSet()
    }

    fun mpsVersion(v: String) {
        require(mpsFullVersion == null) { "MPS version is already set ($mpsFullVersion)" }
        val match = mpsVersionPattern.matchEntire(v)
            ?: throw RuntimeException("Not a valid MPS version: $v")
        mpsFullVersion = v
        mpsMajorVersion = match.groupValues[1]
        mpsMinorVersion = match.groupValues.getOrNull(2)
        mpsFromMaven(getMpsMavenCoordinates())
    }

    fun getMpsDownloadUrl(): URL? {
        if (mpsDownloadUrl != null) return mpsDownloadUrl
        if (mpsFullVersion != null) {
            return URL("https://download.jetbrains.com/mps/$mpsMajorVersion/MPS-$mpsFullVersion.zip")
        }
        return null
    }

    fun getMpsMavenCoordinates(): String {
        return "com.jetbrains:mps:$mpsFullVersion"
    }

    fun setProject(p: Project) {
        project = p
        dependenciesConfig = project.configurations.create("mpsBuild-dependencies")
    }

    fun externalModules(coordinates: Any) {
        project.dependencies.add(dependenciesConfig.name, coordinates)
    }

    fun stubs(coordinates: Any) {
        project.dependencies.add(dependenciesConfig.name, coordinates)
    }

    fun mps(spec: Any) {
        if (spec is String && mpsVersionPattern.matches(spec)) {
            mpsVersion(spec)
        } else if (spec is String && spec.contains("://")) {
            mpsDownloadUrl = URL(spec)
        } else {
            mpsFromMaven(spec)
        }
    }

    fun mpsFromMaven(coordinates: Any) {
        require(mpsDependenciesConfig == null) { "MPS dependency is already set" }
        mpsDependenciesConfig = project.configurations.create("mpsBuild-mps")
        project.dependencies.add(mpsDependenciesConfig!!.name, coordinates)
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
        searchPaths.add(path)
    }

    fun macro(name: String, value: String) {
        macros[name] = value
    }

    fun resolveModulePaths(workdir: Path): List<Path> {
        return if (searchPaths.isEmpty()) listOf(workdir) else searchPaths.stream().map { path: String? -> workdir.resolve(path).normalize() }.distinct().collect(Collectors.toList())
    }

    fun getMacros(workdir: Path): Macros {
        val resolvedMacros: MutableMap<String, Path> = HashMap()
        for ((key, value) in macros) {
            resolvedMacros[key] = workdir.resolve(value).toAbsolutePath().normalize()
        }
        return Macros(resolvedMacros)
    }

    fun publication(name: String, action: Action<PublicationSettings>): PublicationSettings {
        require(!publications.containsKey(name)) { "Duplicate publication '$name'" }
        require(name != "all") { "publication name '$name' already exists" }
        val publication = PublicationSettings(name)
        publications[name] = publication
        action.execute(publication)
        return publication
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

    inner class PublicationSettings(val name: String) {
        private val includedPaths: MutableList<String> = ArrayList()
        private val includedModuleNames: MutableSet<String> = HashSet()
        val ideaPlugins: MutableList<IdeaPluginSettings> = ArrayList()

        fun includePath(pathToInclude: String) {
            includedPaths.add(pathToInclude)
        }

        fun resolveIncludedModules(workdir: Path): List<Path>? {
            return if (includedPaths.isEmpty()) null else includedPaths.stream().map { path: String? -> workdir.resolve(path).toAbsolutePath().normalize() }.distinct().collect(Collectors.toList())
        }

        fun getIncludedModuleNames(): Set<String>? {
            return if (includedModuleNames.isEmpty()) null else includedModuleNames
        }

        fun module(moduleName: String) {
            includedModuleNames.add(moduleName)
        }

        fun ideaPlugin(action: Action<IdeaPluginSettings>) {
            val plugin = IdeaPluginSettings()
            ideaPlugins += plugin
            action.execute(plugin)
        }
    }
}