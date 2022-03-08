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

class DeploymentDescriptor(val xml: Element) {
    val id: ModuleId
    val name: String
    val type: ModuleType
    val dependencies: List<Dependency>
    val usedLanguages: List<ModuleIdAndName>
    val classpath: List<String>
    val sourcesJarName: String
    val descriptorFileName: String
    val libraries: List<String>

    init {
        val idString = xml.getAttribute("uuid")
        require(idString.isNotEmpty()) { "uuid missing" }
        id = ModuleId(idString)
        name = xml.getAttributeOrNull("namespace")
                ?: xml.getAttributeOrNull("name")
                ?: throw RuntimeException("name missing")
        type = when (val typeString = xml.getAttribute("type")) {
            "solution" -> ModuleType.Solution
            "language" -> ModuleType.Language
            "generator" -> ModuleType.Generator
            "devkit" -> ModuleType.Devkit
            else -> throw RuntimeException("Unknown module type: $typeString")
        }
        dependencies = xml.childElements("dependencies").flatMap { it.childElements("module") }
            .map { Dependency(it) }
        usedLanguages = xml.childElements("uses").flatMap { it.childElements("language") }
            .map { ModuleIdAndName.fromLanguageRef(it.getAttribute("id")) }
        classpath = xml.childElements("classpath").flatMap { it.childElements("entry") }
            .map { it.getAttribute("path") }
        libraries = xml.childElements("library").mapNotNull { it.getAttributeOrNull("jar") }
        val sources = xml.childElements("sources").first()
        sourcesJarName = sources.getAttribute("jar")
        descriptorFileName = sources.getAttribute("descriptor")
    }

    private fun resolvePath(modulePath: Path, relativePath: String): Path {
        return modulePath.resolve(relativePath)
    }

    fun resolveSourcesJar(modulePath: Path): Path {
        return resolvePath(modulePath, sourcesJarName)
    }

    fun resolveJavaLibs(mpsHome: Path, modulePath: Path): List<Path> {
        return libraries.map {
            if (it.startsWith("/")) mpsHome.resolve(it.drop(1)) else modulePath.resolve(it)
        }
    }

    inner class Dependency(xml: Element) {
        val idAndName: ModuleIdAndName
        val scope: SDependencyScope
        init {
            idAndName = ModuleIdAndName.fromReference(xml.getAttribute("ref"))
            scope = SDependencyScope.fromIdentity(xml.getAttribute("kind")) ?: SDependencyScope.RUNTIME
        }
    }
}