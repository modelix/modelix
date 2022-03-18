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
import org.w3c.dom.Element
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.FileInputStream
import java.io.InputStream
import java.util.*
import java.util.zip.ZipEntry
import kotlin.collections.HashMap

class ModulesMiner() {

    private val modules: FoundModules = FoundModules()

    fun getModules(): FoundModules {
        return modules
    }

    fun searchInFolder(folder: ModuleOrigin) {
        searchInFolder(folder) { true }
    }

    fun searchInFolder(folder: File, fileFilter: (File)->Boolean) {
        searchInFolder(ModuleOrigin(folder.toPath()), fileFilter)
    }

    fun searchInFolder(folder: File) {
        searchInFolder(folder) { true }
    }

    fun searchInFolder(folder: ModuleOrigin, fileFilter: (File)->Boolean) {
        collectModules(folder.localPath.normalize().toFile(), null, folder, fileFilter)
    }

    private fun collectModules(file: File, owner: ModuleOwner?, origin: ModuleOrigin, fileFilter: (File)->Boolean) {
        if (isIgnored(file, fileFilter)) return
        if (file.isFile) {
            when (file.extension.lowercase()) {
                // see jetbrains.mps.project.MPSExtentions
                "msd", "mpl", "devkit" -> {
                    val sourceOwner = owner ?: SourceModuleOwner(origin.localModulePath(file))
                    FileInputStream(file).use { stream ->
                        loadModules(stream, sourceOwner)
                    }
                    for (module in sourceOwner.modules.values) {
                        val descriptor = module.moduleDescriptor ?: continue
                        val macros = Macros().with("module", file.parentFile.absoluteFile.toPath())
                        for (modelFolder in descriptor.resolveModelPaths(macros)) {
                            dependenciesFromModels(module, modelFolder.toFile())
                        }
                    }
                }
                "jar" -> {
                    if (file.name == "mps-workbench.jar" && file.parentFile.name == "lib") {
                        // This MPS plugin seems to use some old way of packaging a plugin
                        // The descriptor declares 'com.intellij' as the ID, but it's actually 'com.intellij.modules.mps'.
                        modules.addPlugin(PluginModuleOwner(origin.localModulePath(file), "com.intellij.modules.mps", "MPS Workbench", setOf()))
                    } else if (!file.nameWithoutExtension.endsWith("-src") && !file.nameWithoutExtension.endsWith("-generator")) {
                        val libraryModuleOwner = LibraryModuleOwner(origin.localModulePath(file), owner as? PluginModuleOwner)
                        val libraryModules: MutableMap<String, FoundModule> = HashMap()
                        val jarContentVisitor = { stream: InputStream, entry: ZipEntry ->
                            when (entry.name) {
                                "META-INF/module.xml" -> {
                                    loadModules(stream, libraryModuleOwner)
                                }
                                "META-INF/plugin.xml" -> {
                                    if (owner == null) {
                                        modules.addPlugin(PluginModuleOwner.fromPluginFolder(origin.localModulePath(file)))
                                    }
                                }
                                else -> {
                                    when (entry.name.substringAfterLast('.', "").lowercase()) {
                                        "msd", "mpl", "devkit" -> {
                                            loadModules(stream, libraryModuleOwner)
                                        }
                                    }
                                }
                            }
                        }
                        val srcAndGeneratorNames: Set<String> = (
                                setOf(file.nameWithoutExtension + "-src." + file.extension) +
                                (file.nameWithoutExtension + "-generator." + file.extension) +
                                (0..10).map { file.nameWithoutExtension + "-$it-generator." + file.extension }
                            )
                        val srcAndGeneratorJars = srcAndGeneratorNames.map { file.parentFile.resolve(it) }
                            .filter { it.exists() && it.isFile }
                        ZipUtil.iterate(file, jarContentVisitor)
                        for (srcOrGeneratorJar in srcAndGeneratorJars) {
                            ZipUtil.iterate(srcOrGeneratorJar, jarContentVisitor)
                        }
                        if (owner is PluginModuleOwner && libraryModuleOwner.modules.isNotEmpty()) {
                            owner.libraries += libraryModuleOwner
                        }

//                        if (modules.isNotEmpty()) {
//                            ZipUtil.iterate(file) { stream: InputStream, entry: ZipEntry ->
//                                when (entry.name.substringAfterLast('.', "").lowercase()) {
//                                    "mps" -> {
//                                        var module: FoundModule? = null
//                                        var parentPath: String = entry.name.substringBeforeLast("/", "")
//                                        while (module == null) {
//                                            module = modules[parentPath]
//                                            if (parentPath == "") break
//                                            parentPath = parentPath.substringBeforeLast("/", "")
//                                        }
//                                        if (module != null) {
//                                            dependenciesFromModel(stream, module)
//                                        }
//                                    }
//                                }
//                            }
//                        }
                    }
                }
                "vmoptions" -> {
                    if (file.nameWithoutExtension == "mps" || file.nameWithoutExtension == "mps64") {
                        modules.mpsHome = file.parentFile.parentFile
                    }
                }
            }
        } else if (file.isDirectory) {
            val projectSettingsDir = File(file, ".mps")
            val isProjectDir = projectSettingsDir.exists() && projectSettingsDir.isDirectory
            if (isProjectDir) {
                modules.projects += FoundProject(file)
            }
            val modulesXmlFile = File(projectSettingsDir, "modules.xml")
            if (modulesXmlFile.exists() && modulesXmlFile.isFile) {
                val moduleFiles = readProjectModulesFile(modulesXmlFile, file)
                    .filter { !isModuleFileIgnored(it, file, fileFilter) }
//                println("MPS project found in $file. Loading only modules that are part of the project:")
//                moduleFiles.forEach { println("    $it") }
                moduleFiles.forEach { moduleFile -> collectModules(moduleFile, owner, origin, fileFilter) }
            } else {
                val pluginXml = File(File(file, "META-INF"), "plugin.xml")
                val isPluginDir = pluginXml.exists()
                val pluginOwner = if (isPluginDir) PluginModuleOwner.fromPluginFolder(origin.localModulePath(file)) else null
                if (pluginOwner != null) modules.addPlugin(pluginOwner)
                val subFolders = if (pluginOwner == null) {
                    (file.listFiles() ?: arrayOf()).asList()
                } else {
                    pluginOwner.getModuleJarFolders()
                }
                subFolders.forEach { child ->
                    collectModules(child, pluginOwner ?: owner, origin, fileFilter)
                }
            }
        }
    }

    private fun isIgnored(file: File, fileFilter: (File)->Boolean): Boolean {
        return !fileFilter(file) || File(file, ".mpsbuild-ignore").exists()
    }

    private fun isModuleFileIgnored(file: File, projectDir_: File, fileFilter: (File)->Boolean): Boolean {
        val projectDir = projectDir_.canonicalFile
        var currentFile: File? = file.canonicalFile
        while (currentFile != null && currentFile != projectDir) {
            if (isIgnored(currentFile, fileFilter)) return true
            currentFile = currentFile.parentFile
        }
        return false
    }

    private fun readProjectModulesFile(modulesXmlFile: File, projectDir: File): List<File> {
        val xml = readXmlFile(modulesXmlFile)
        val moduleElements = xml.documentElement
            .findTag("component")
            ?.findTag("projectModules")
            ?.childElements()
            ?.filter { it.tagName == "modulePath" }
            ?: return listOf()
        val paths = moduleElements.map { it.getAttribute("path").replace("\$PROJECT_DIR\$", projectDir.absolutePath) }
        return paths.map { File(it) }.filter { it.exists() && it.isFile }
    }

    private fun loadModules(file: InputStream, owner: ModuleOwner) {
        loadModules(readXmlFile(file).documentElement, owner)
    }

    private val typeMap = mapOf("language" to ModuleType.Language, "solution" to ModuleType.Solution, "dev-kit" to ModuleType.Devkit, "devkit" to ModuleType.Devkit, "generator" to ModuleType.Generator)
    private fun loadModules(xml: Element, owner: ModuleOwner) {
        if (xml.tagName == "module") {
            val descriptor = DeploymentDescriptor(xml)
            modules.addModule(owner.getOrCreateModule(descriptor))
        } else {
            val type = typeMap[xml.tagName] ?: throw RuntimeException("Unknown module type: ${xml.tagName}")
            val descriptor = when (type) {
                ModuleType.Solution -> SolutionDescriptor(xml)
                ModuleType.Language -> LanguageDescriptor(xml)
                ModuleType.Generator -> GeneratorDescriptor(xml, null)
                ModuleType.Devkit -> DevkitDescriptor(xml)
            }
            modules.addModule(owner.getOrCreateModule(descriptor))
            if (descriptor is LanguageDescriptor) {
                for (generator in descriptor.generators) {
                    modules.addModule(owner.getOrCreateModule(generator))
                }
            }
        }
    }

    private fun dependenciesFromModels(module: FoundModule, file: File) {
        if (file.isFile) {
            // TODO .mpsr, .model, .mpb
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
                            module.addLanguageOrDevkitUsedInModels(ModuleIdAndName(ModuleId(id), langOrDevkit.getAttribute("name")))
                        }
                    }
                    "devkit" -> {
                        val ref = langOrDevkit.getAttribute("ref")
                        if (ref.isNotEmpty()) {
                            module.addLanguageOrDevkitUsedInModels(ModuleIdAndName.fromString(ref))
                        }
                    }
                }
            }
        }

//        val registry = doc.findTag("registry")
//        if (registry != null) {
//            // jetbrains.mps.lang.smodel
//            val smodelLang = registry.childElements().find { it.getAttribute("id") == "7866978e-a0f0-4cc7-81bc-4d213d9375e1" }
//            if (smodelLang != null) {
//                run {
//                    val moduleReferenceExpression = smodelLang.childElements().find { it.getAttribute("id") == "4040588429969021681" } ?: return@run
//                    val conceptIndex = moduleReferenceExpression.getAttribute("index")
//                    val moduleIdProperty = moduleReferenceExpression.childElements().find { it.getAttribute("id") == "4040588429969021683" } ?: return@run
//                    val propertyIndex = moduleIdProperty.getAttribute("index")
//                    visitMPSNodes(doc) { mpsNode ->
//                        if (mpsNode.getAttribute("concept") != conceptIndex) return@visitMPSNodes
//                        val property = mpsNode.childElements().find { it.tagName == "property" && it.getAttribute("role") == propertyIndex } ?: return@visitMPSNodes
//                        val moduleId = property.getAttribute("value")
//                        if (moduleId.isEmpty()) return@visitMPSNodes
//                        module.addDependency(ModuleDependency(ModuleId(moduleId), DependencyType.Model, true))
//                    }
//                }
//            }
//        }
    }

    private fun visitMPSNodes(parent: Element, visitor: (Element)->Unit) {
        if (parent.tagName == "node") visitor(parent)
        for (childElement in parent.childElements()) {
            visitMPSNodes(childElement, visitor)
        }
    }
}