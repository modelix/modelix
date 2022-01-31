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

import org.w3c.dom.Document
import org.w3c.dom.Element
import org.w3c.dom.Node
import org.w3c.dom.Text
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.StringWriter
import java.nio.charset.StandardCharsets
import javax.xml.XMLConstants
import javax.xml.parsers.DocumentBuilderFactory
import javax.xml.transform.OutputKeys
import javax.xml.transform.Transformer
import javax.xml.transform.TransformerFactory
import javax.xml.transform.dom.DOMSource
import javax.xml.transform.stream.StreamResult

class BuildScriptGenerator(val inputFolders: List<File>, val modulesToGenerate: List<ModuleId>? = null) {

    private val modules: MutableMap<ModuleId, FoundModule> = LinkedHashMap()

    fun generateXML(): String {
        val doc = generateAnt()
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
        val plan = generatePlan(modulesToGenerate ?: modules.keys.toList())

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)

            newChild("property") {
                setAttribute("name", "mps_home")
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
                    setAttribute("skipUnmodifiedModels", "true")
                    setAttribute("logLevel", "ERROR")
                    newChild("plugin") {
                        setAttribute("path", "")
                    }
                    newChild("library") {
                        setAttribute("file", "")
                    }
                    for (chunk in plan.chunks) {
                        newChild("chunk") {
                            for (module in chunk.modules) {
                                newChild("module") {
                                    setAttribute("file", module.path.canonicalPath)
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
                    newChild("macro") {
                        setAttribute("name", "")
                        setAttribute("path", "")
                    }
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
        collectModules()
        val planBuilder = GenerationPlanBuilder(modules)
        planBuilder.build(modulesToGenerate.mapNotNull { modules[it] })
        return planBuilder.plan
    }

    fun getModules(): List<FoundModule> = modules.values.toList()

    fun collectModules() {
        inputFolders.forEach { collectModules(it)}
    }

    fun collectModules(parent: File) {
        if (parent.isFile) {
            when (parent.extension.lowercase()) {
                // see jetbrains.mps.project.MPSExtentions
                "msd", "mpl", "devkit" -> {
                    val module = readModule(parent)
                    if (module.moduleId.id.isNotEmpty()) {
                        modules[module.moduleId] = module
                    }
                }
            }
        } else if (parent.isDirectory) {
            parent.listFiles()?.forEach { child ->
                collectModules(child)
            }
        }
    }

    private fun readModule(file: File): FoundModule {
        val dbf = DocumentBuilderFactory.newInstance()
        dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true)
        val db = dbf.newDocumentBuilder()
        val xml = db.parse(file)
        val doc: Element = xml.documentElement
        val uuid = ModuleId(doc.getAttribute("uuid"))
        var name = doc.getAttribute("name")
        if (name.isNullOrEmpty()) name = doc.getAttribute("namespace")
        val module = FoundModule(file, uuid, name)
        doc.visitAll { node ->
            if (node is Element) {
                when (node.tagName) {
                    "dependency", "extendedLanguage" -> {
                        val text = node.children().filterIsInstance<Text>().first().wholeText
                        module.addDependency(moduleIdFromReference(text))
                    }
                    "module" -> {
                        if (node.parentTagName() == "dependencyVersions") {
                            module.addDependency(moduleIdFromReference(node.getAttribute("reference")))
                        }
                    }
                    "language" -> {
                        if (node.parentTagName() == "languageVersion") {
                            module.addDependency(moduleIdFromLanguageRef(node.getAttribute("slang")))
                        }
                    }
                }
            }
        }
        return module
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
    return if (this is Element) this.tagName else null
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