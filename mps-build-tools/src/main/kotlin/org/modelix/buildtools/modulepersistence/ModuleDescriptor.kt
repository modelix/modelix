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
package org.modelix.buildtools.modulepersistence

import org.modelix.buildtools.*
import org.w3c.dom.Element
import java.nio.file.Path

abstract class ModuleDescriptor(val xml: Element) {
    val id: ModuleId
    val name: String
    val moduleVersion: Int
    val generatorOutputPath: Path
    val moduleDependencies: List<ModuleDependency>
    val languageVersions: List<LanguageVersion>
    val dependencyVersions: List<DependencyVersion>
    val runtime: List<ModuleDependency>
    private val modelRoots: List<Element>
    private val modelPaths: List<String>
    private val facets: List<Element>
    val javaLibPaths: List<String>
    val ideaPluginId: String?

    init {
        // see ModuleDescriptorPersistence in MPS
        val idString = xml.getAttribute("uuid")
        require(idString.isNotEmpty()) { "uuid missing" }
        id = ModuleId(idString)
        name = xml.getAttributeOrNull("namespace")
            ?: xml.getAttributeOrNull("name")
            ?: throw RuntimeException("name missing")
        moduleVersion = xml.getAttribute("moduleVersion").toIntOrNull() ?: 0
        generatorOutputPath = Path.of(xml.getAttribute("generatorOutputPath", getDefaultGeneratorOutputPath()))
        moduleDependencies = xml.childElements("dependencies").flatMap { it.childElements("dependency") }
            .map { ModuleDependency(it) }
        runtime = xml.childElements("runtime").flatMap { it.childElements("dependency") }
            .map { ModuleDependency(it) }
        languageVersions = xml.childElements("languageVersions").flatMap { it.childElements("language") }
            .map { LanguageVersion(it) }
        dependencyVersions = xml.childElements("dependencyVersions").flatMap { it.childElements("module") }
            .map { DependencyVersion(it) }
        modelRoots = xml.childElements("models").flatMap { it.childElements("modelRoot") }
        modelPaths = modelRoots.filter { it.getAttribute("type") == "default" }.flatMap { root ->
            val contentPath = root.getAttribute("contentPath")
            root.childElements("sourceRoot").map { contentPath + "/" + it.getAttribute("location") }
        }
        facets = xml.childElements("facets").flatMap { it.childElements("facet") }
        javaLibPaths = xml.childElements("stubModelEntries")
            .flatMap { it.childElements("stubModelEntry") }
            .map { it.getAttribute("path") }
        ideaPluginId = xml.childElements("facets").flatMap { it.childElements("facet") }
            .find { it.getAttribute("type") == "ideaPlugin" }?.getAttributeOrNull("pluginId")
    }

    fun resolveJavaLibs(macros: Macros): List<Path> {
        return javaLibPaths.map { macros.resolve(it) }
    }

    fun resolveModelPaths(macros: Macros): List<Path> {
        return modelPaths.map { macros.resolve(it) }.filter {
            val exists = it.toFile().exists()
            if (!exists) println("Model folder doesn't exist: $it")
            exists
        }
    }

    protected open fun getDefaultGeneratorOutputPath(): String = "source_gen"

    inner class ModuleDependency(val xml: Element) {
        val idAndName: ModuleIdAndName
        val reexport: Boolean
        val scope: SDependencyScope?
        init {
            idAndName = ModuleIdAndName.fromReference(xml.textContent)
            reexport = xml.getAttribute("reexport", "true").toBoolean()
            scope = SDependencyScope.fromIdentity(xml.getAttribute("scope")) ?: SDependencyScope.DEFAULT
        }
    }

    inner class LanguageVersion(val xml: Element) {
        val idAndName: ModuleIdAndName = ModuleIdAndName.fromLanguageRef(xml.getAttribute("slang"))
        val version: Int = xml.getAttribute("version").toInt()
    }

    inner class DependencyVersion(val xml: Element) {
        val idAndName: ModuleIdAndName = ModuleIdAndName.fromReference(xml.getAttribute("reference"))
        val version: Int = xml.getAttribute("version").toInt()
    }
}