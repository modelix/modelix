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
package org.modelix.workspace.build

import org.w3c.dom.Element
import org.w3c.dom.Text
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.FileInputStream
import java.io.InputStream
import java.util.zip.ZipEntry
import javax.xml.XMLConstants
import javax.xml.parsers.DocumentBuilderFactory

class ModulesMiner() {

    private val modules: FoundModules = FoundModules()

    fun getModules(): FoundModules {
        return modules
    }

    fun searchInFolder(folder: ModuleOrigin) {
        collectModules(folder.localPath.toFile(), null, folder, modules)
    }

    private fun collectModules(file: File, owner: ModuleOwner?, origin: ModuleOrigin, result: FoundModules) {
        if (file.isFile) {
            when (file.extension.lowercase()) {
                // see jetbrains.mps.project.MPSExtentions
                "msd", "mpl", "devkit" -> {
                    result.addModule(readModule(file, owner ?: SourceModuleOwner(origin.localModulePath(file))))
                }
                "jar" -> {
                    if (!file.nameWithoutExtension.endsWith("-src")) {
                        val libraryModuleOwner = owner ?: LibraryModuleOwner(origin.localModulePath(file))
                        ZipUtil.iterate(file) { stream: InputStream, entry: ZipEntry ->
                            if (entry.name == "META-INF/module.xml") {
                                result.addModule(readModule(stream, libraryModuleOwner))
                            }
                            when (entry.name.substringAfterLast('.', "").lowercase()) {
                                "msd", "mpl", "devkit" -> {
                                    result.addModule(readModule(stream, libraryModuleOwner))
                                }
                            }
                        }
                    }
                }
                "vmoptions" -> {
                    if (file.nameWithoutExtension == "mps" || file.nameWithoutExtension == "mps64") {
                        result.mpsHome = file.parentFile.parentFile
                    }
                }
            }
        } else if (file.isDirectory) {
            if (file.name == ".mps") {
                result.projects += FoundProject(file.parentFile)
            } else {
                val isPluginDir = File(File(file, "META-INF"), "plugin.xml").exists()
                val pluginOwner = if (isPluginDir) PluginModuleOwner(origin.localModulePath(file)) else null
                if (pluginOwner != null) modules.addPlugin(pluginOwner)
                file.listFiles()?.forEach { child ->
                    collectModules(child, owner ?: pluginOwner, origin, result)
                }
            }
        }
    }


    private fun readModule(file: File, owner: ModuleOwner): FoundModule {
        return FileInputStream(file).use { readModule(it, owner) }
    }

    private fun readModule(file: InputStream, owner: ModuleOwner): FoundModule {
        val xml = readXmlFile(file)
        val missedUUIDs = extractModuleUUIDs(xmlToString(xml)).toMutableSet()
        val doc: Element = xml.documentElement
        val uuid = ModuleId(doc.getAttribute("uuid"))
        missedUUIDs -= uuid.id
        var name = doc.getAttribute("name")
        if (name.isNullOrEmpty()) name = doc.getAttribute("namespace")
        val module = FoundModule(uuid, name, owner)
        val addDependency = { moduleId: ModuleId, type: DependencyType, ignoreIfMissing: Boolean ->
            missedUUIDs -= moduleId.id
            module.addDependency(ModuleDependency(moduleId, type, ignoreIfMissing))
        }
        doc.visitAll { node ->
            if (node is Element) {
                // Why not just use the extracted UUIDs? Because there are also foreign IDs that are not UUIDs.
                when (node.tagName) {
                    "dependency", "extendedLanguage", "extendedDevKit", "usedLanguage", "exported-solution" -> {
                        val text = node.children().filterIsInstance<Text>().first().wholeText
                        addDependency(moduleIdFromReference(text), DependencyType.Classpath, false)
                    }
                    "module" -> {
                        if (node.parentTagName() == "dependencyVersions") {
                            //addDependency(moduleIdFromReference(node.getAttribute("reference")), DependencyType.Model, true)
                            missedUUIDs -= moduleIdFromReference(node.getAttribute("reference")).id
                        } else if (node.parentTagName() == "dependencies") {
                            addDependency(moduleIdFromReference(node.getAttribute("ref")), DependencyType.Model, false)
                        }
                    }
                    "language" -> {
                        if (node.parentTagName() == "languageVersions") {
                            addDependency(moduleIdFromLanguageRef(node.getAttribute("slang")), DependencyType.Generator, true)
                        } else if (node.parentTagName() == "uses") {
                            addDependency(moduleIdFromLanguageRef(node.getAttribute("id")), DependencyType.Generator, false)
                        }
                    }
                    "exported-language" -> {
                        addDependency(moduleIdFromReference(node.getAttribute("name")), DependencyType.Classpath, false)
                    }
                    "generator" -> {
                        missedUUIDs -= moduleIdFromReference(node.getAttribute("generatorUID")).id
                    }
                }
            }
        }
        if (missedUUIDs.isNotEmpty()) {
            throw RuntimeException("More dependencies found for module $name: $missedUUIDs")
        }
        return module
    }

    private fun extractModuleUUIDs(text: String): Set<String> {
        return Regex("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}")
            .findAll(text).filter {
                // ignore model IDs
                val first = it.range.first
                first < 2 || text.substring(first - 2, first) != "r:"
            }.map { it.value }.toSet()
    }

    private fun moduleIdFromReference(text: String): ModuleId {
        // 1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)
        val matchResult = Regex("""~?(.+)\(.+\)""").matchEntire(text)
        return ModuleId(if (matchResult != null) matchResult.groupValues[1] else text)
    }

    private fun moduleIdFromLanguageRef(text: String): ModuleId {
        // l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage
        val matchResult = Regex("""l:(.+):.+""").matchEntire(text)
        return ModuleId(if (matchResult != null) matchResult.groupValues[1] else text)
    }
}