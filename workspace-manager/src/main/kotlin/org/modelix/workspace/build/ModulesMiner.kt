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
                    val module = readModule(file, owner ?: SourceModuleOwner(origin.localModulePath(file)))
                    dependenciesFromModels(module, file.parentFile)
                    result.addModule(module)
                }
                "jar" -> {
                    if (file.name == "mps-workbench.jar" && file.parentFile.name == "lib") {
                        // This MPS plugin seems to use some old way of packaging a plugin
                        // The descriptor declares 'com.intellij' as the ID, but it's actually 'com.intellij.modules.mps'.
                        result.addPlugin(PluginModuleOwner(origin.localModulePath(file), "com.intellij.modules.mps", "MPS Workbench", setOf()))
                    } else if (!file.nameWithoutExtension.endsWith("-src")) {
                        val libraryModuleOwner = owner ?: LibraryModuleOwner(origin.localModulePath(file))
                        val modules: MutableMap<String, FoundModule> = HashMap()
                        ZipUtil.iterate(file) { stream: InputStream, entry: ZipEntry ->
                            if (entry.name == "META-INF/module.xml") {
                                val module = readModule(stream, libraryModuleOwner)
                                result.addModule(module)
                                modules[""] = module
                            }
                            when (entry.name.substringAfterLast('.', "").lowercase()) {
                                "msd", "mpl", "devkit" -> {
                                    val module = readModule(stream, libraryModuleOwner)
                                    result.addModule(module)
                                    modules[entry.name.substringBeforeLast("/", "")] = module
                                }
                            }
                        }
                        if (modules.isNotEmpty()) {
                            ZipUtil.iterate(file) { stream: InputStream, entry: ZipEntry ->
                                when (entry.name.substringAfterLast('.', "").lowercase()) {
                                    "mps" -> {
                                        var module: FoundModule? = null
                                        var parentPath: String = entry.name.substringBeforeLast("/", "")
                                        while (module == null) {
                                            module = modules[parentPath]
                                            if (parentPath == "") break
                                            parentPath = parentPath.substringBeforeLast("/", "")
                                        }
                                        if (module != null) {
                                            dependenciesFromModel(stream, module)
                                        }
                                    }
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
                val pluginXml = File(File(file, "META-INF"), "plugin.xml")
                val isPluginDir = pluginXml.exists()
                val pluginOwner = if (isPluginDir) PluginModuleOwner.fromPluginFolder(origin.localModulePath(file)) else null
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

    private fun dependenciesFromModels(module: FoundModule, file: File) {
        if (file.isFile) {
            if (file.extension == "mps") {
                FileInputStream(file).use {
                    dependenciesFromModel(it, module)
                }
            }
        } else {
            file.listFiles()?.forEach { child ->
                dependenciesFromModels(module, child)
            }
        }
    }

    /**
     * DevKits don't appear as a dependency in the module. The module only references languages.
     * That's why we also have to extract dependencies from the models.
     */
    private fun dependenciesFromModel(xmlStream: InputStream, module: FoundModule) {
        val xml = readXmlFile(xmlStream)
        val doc: Element = xml.documentElement
        val languages = doc.findTag("languages")
        if (languages != null) {
            for (langOrDevkit in languages.childElements()) {
                when (langOrDevkit.tagName()) {
                    "use" -> {
                        val id = langOrDevkit.getAttribute("id")
                        if (id.isNotEmpty()) {
                            module.addDependency(ModuleDependency(ModuleId(id), DependencyType.Generator, false))
                        }
                    }
                    "devkit" -> {
                        val ref = langOrDevkit.getAttribute("ref")
                        if (ref.isNotEmpty()) {
                            val id = moduleIdFromReference(ref)
                            module.addDependency(ModuleDependency(id, DependencyType.Generator, false))
                        }
                    }
                }
            }
        }

        val registry = doc.findTag("registry")
        if (registry != null) {
            // jetbrains.mps.lang.smodel
            val smodelLang = registry.childElements().find { it.getAttribute("id") == "7866978e-a0f0-4cc7-81bc-4d213d9375e1" }
            if (smodelLang != null) {
                run {
                    val moduleReferenceExpression = smodelLang.childElements().find { it.getAttribute("id") == "4040588429969021681" } ?: return@run
                    val conceptIndex = moduleReferenceExpression.getAttribute("index")
                    val moduleIdProperty = moduleReferenceExpression.childElements().find { it.getAttribute("id") == "4040588429969021683" } ?: return@run
                    val propertyIndex = moduleIdProperty.getAttribute("index")
                    visitMPSNodes(doc) { mpsNode ->
                        if (mpsNode.getAttribute("concept") != conceptIndex) return@visitMPSNodes
                        val property = mpsNode.childElements().find { it.tagName == "property" && it.getAttribute("role") == propertyIndex } ?: return@visitMPSNodes
                        val moduleId = property.getAttribute("value")
                        if (moduleId.isEmpty()) return@visitMPSNodes
                        module.addDependency(ModuleDependency(ModuleId(moduleId), DependencyType.Model, true))
                    }
                }
            }
        }
    }

    private fun visitMPSNodes(parent: Element, visitor: (Element)->Unit) {
        if (parent.tagName == "node") visitor(parent)
        for (childElement in parent.childElements()) {
            visitMPSNodes(childElement, visitor)
        }
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