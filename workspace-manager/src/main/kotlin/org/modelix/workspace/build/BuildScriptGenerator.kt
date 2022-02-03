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

import org.apache.commons.io.FileUtils
import org.apache.commons.io.IOUtils
import org.w3c.dom.Document
import org.w3c.dom.Element
import org.w3c.dom.Node
import org.w3c.dom.Text
import org.zeroturnaround.zip.ZipUtil
import java.io.*
import java.nio.charset.StandardCharsets
import java.util.zip.ZipEntry
import javax.xml.XMLConstants
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.OutputKeys
import javax.xml.transform.Transformer
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult

class BuildScriptGenerator(val inputFolders: List<File>, val modulesToGenerate: List<ModuleId>? = null) {

    private var modules: FoundModules? = null

    fun buildModules(antScriptFile: File = File.createTempFile("mps-build-script", ".xml", File(".")), outputHandler: ((String)->Unit)? = null) {
        val xml = generateXML()
        FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)

        val ant = ProcessBuilder("ant", "-f", antScriptFile.canonicalPath).start()
        if (outputHandler != null) {
            val reader = BufferedReader(InputStreamReader(ant.inputStream))
            var line = reader.readLine()
            while (line != null) {
                outputHandler(line)
                line = reader.readLine()
            }
        } else {
            IOUtils.copy(ant.inputStream, System.out)
        }
        val exitValue = ant.waitFor()
        if (exitValue != 0) throw RuntimeException("Generating MPS modules failed with exit value $exitValue")
    }

    fun generateXML(): String {
        val doc = generateAnt()
        return xmlToString(doc)
    }

    private fun xmlToString(doc: Document): String {
        val transformerFactory: TransformerFactory = TransformerFactory.newInstance()
        val transformer: Transformer = transformerFactory.newTransformer()
        transformer.setOutputProperty(OutputKeys.INDENT, "yes")
        val source = DOMSource(doc)
        val out = StringWriter()
        val result = StreamResult(out)
        transformer.transform(source, result)
        return out.toString()
    }

    fun generateAnt(): Document {
        val plan = generatePlan(modulesToGenerate ?: collectModules().modules.values.filter { it.owner is SourceModuleOwner }.map { it.moduleId }.toList())

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("default", "generate")

            val mpsHome = collectModules().mpsHome
            if (mpsHome != null) {
                newChild("property") {
                    setAttribute("name", "mps.home")
                    setAttribute("location", mpsHome.canonicalPath)
                }
            }
            newChild("property") {
                setAttribute("name", "mps_home")
                setAttribute("location", "\${mps.home}")
            }
            newChild("property") {
                setAttribute("name", "artifacts.mps")
                setAttribute("location", "\${mps.home}")
            }

            newChild("path") {
                setAttribute("id", "path.mps.ant.path")
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/ant/lib/ant-mps.jar")
                }
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/log4j.jar")
                }
                newChild("pathelement") {
                    setAttribute("location", "\${mps.home}/lib/jdom.jar")
                }
            }

            newChild("target") {
                setAttribute("name", "generate")
                setAttribute("depends", "declare-mps-tasks")
                newChild("echo") {
                    setAttribute("message", "generating")
                }
                newChild("generate") {
                    setAttribute("strictMode", "false")
                    setAttribute("parallelMode", "false")
                    setAttribute("useInplaceTransform", "false")
                    setAttribute("hideWarnings", "false")
                    setAttribute("createStaticRefs", "false")
                    setAttribute("fork", "true")
                    setAttribute("targetJavaVersion", "11")
                    setAttribute("skipUnmodifiedModels", "false")
                    setAttribute("logLevel", "warn")
                    for (plugin in plan.plugins) {
                        newChild("plugin") {
                            setAttribute("path", plugin.path.canonicalPath)
                        }
                    }
                    for (library in plan.libraries) {
                        newChild("library") {
                            setAttribute("file", library.path.canonicalPath)
                        }
                    }
                    for (chunk in plan.chunks) {
                        newChild("chunk") {
                            for (module in chunk.modules) {
                                newChild("module") {
                                    setAttribute("file", module.owner.path.canonicalPath)
                                }
                            }
                        }
                    }
                    newChild("jvmargs") {
                        newChild("arg") {
                            setAttribute("value", "-ea")
                        }
                        newChild("arg") {
                            setAttribute("value", "-Xmx1024m")
                        }
                    }
//                    newChild("macro") {
//                        setAttribute("name", "")
//                        setAttribute("path", "")
//                    }
                }
            }

            newChild("target") {
                setAttribute("name", "declare-mps-tasks")
                newChild("taskdef") {
                    setAttribute("resource", "jetbrains/mps/build/ant/antlib.xml")
                    setAttribute("classpathref", "path.mps.ant.path")

                }
            }
        }

        doc.createElement("target")

        return doc
    }

    fun generatePlan(modulesToGenerate: List<ModuleId>): GenerationPlan {
        val planBuilder = GenerationPlanBuilder(collectModules())
        planBuilder.build(modulesToGenerate.mapNotNull { collectModules().modules[it] })
        return planBuilder.plan
    }

    fun getModules(): List<FoundModule> = collectModules().modules.values.toList()

    fun collectModules(): FoundModules {
        if (modules == null) {
            modules = FoundModules()
            inputFolders.forEach { collectModules(it, null)}
        }
        return modules!!
    }

    fun collectModules(file: File, owner: ModuleOwner?) {
        if (file.isFile) {
            when (file.extension.lowercase()) {
                // see jetbrains.mps.project.MPSExtentions
                "msd", "mpl", "devkit" -> {
                    collectModules().addModule(readModule(file, owner ?: SourceModuleOwner(file)))
                }
                "jar" -> {
                    if (!file.nameWithoutExtension.endsWith("-src")) {
                        val libraryModuleOwner = owner ?: LibraryModuleOwner(file)
                        ZipUtil.iterate(file) { stream: InputStream, entry: ZipEntry ->
                            if (entry.name == "META-INF/module.xml") {
                                collectModules().addModule(readModule(stream, libraryModuleOwner))
                            }
                            when (entry.name.substringAfterLast('.', "").lowercase()) {
                                "msd", "mpl", "devkit" -> {
                                    collectModules().addModule(readModule(stream, libraryModuleOwner))
                                }
                            }
                        }
                    }
                }
                "vmoptions" -> {
                    if (file.nameWithoutExtension == "mps" || file.nameWithoutExtension == "mps64") {
                        collectModules().mpsHome = file.parentFile.parentFile
                    }
                }
            }
        } else if (file.isDirectory) {
            val isPluginDir = File(File(file, "META-INF"), "plugin.xml").exists()
            val pluginOwner = if (isPluginDir) PluginModuleOwner(file) else null
            file.listFiles()?.forEach { child ->
                collectModules(child, owner ?: pluginOwner)
            }
        }
    }

    private fun readModule(file: File, owner: ModuleOwner): FoundModule {
        return FileInputStream(file).use { readModule(it, owner) }
    }

    private fun readModule(file: InputStream, owner: ModuleOwner): FoundModule {
        val dbf = DocumentBuilderFactory.newInstance()
        dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true)
        val db = dbf.newDocumentBuilder()
        val xml = db.parse(file)
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

private fun Node.visitAll(visitor: (Node)->Unit) {
    visitor(this)
    val childNodes = this.childNodes
    for (i in 0 until childNodes.length) childNodes.item(i).visitAll(visitor)
}

private fun Node.parentTagName(): String? {
    if (this !is Element) return null
    val parentNode = this.parentNode
    if (parentNode !is Element) return null
    return parentNode.tagName
}

private fun Node.children(): List<Node> {
    val children = childNodes
    val result = ArrayList<Node>(children.length)
    for (i in 0 until children.length) result += children.item(i)
    return result
}

private fun Element.newChild(tag: String, body: Element.()->Unit): Element {
    val child = ownerDocument.createElement(tag)
    appendChild(child)
    child.apply(body)
    return child
}