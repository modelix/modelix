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
import org.w3c.dom.Node
import org.w3c.dom.Text
import java.io.File
import javax.xml.XMLConstants
import javax.xml.parsers.DocumentBuilderFactory

class BuildScriptGenerator(val inputFolders: List<File>) {

    private val modules: MutableMap<String, FoundModule> = LinkedHashMap()

    fun getGenerationOrder(): List<FoundModule> {
        val result = LinkedHashMap<String, FoundModule>()
        for (module in modules.values) {
            collectGenerationOrder(module, result)
        }
        return result.values.toList()
    }

    private fun collectGenerationOrder(module: FoundModule, result: MutableMap<String, FoundModule>) {
        if (result.containsKey(module.moduleId)) return

        // just add it to prevent processing the same module again
        result[module.moduleId] = module

        for (dep in module.dependsOnModuleId) {
            val depModule = modules[dep] ?: continue
            collectGenerationOrder(depModule, result)
        }

        // move the module itself to the end after all its dependencies
        result.remove(module.moduleId)
        result[module.moduleId] = module
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
                    if (module.moduleId.isNotEmpty()) {
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
        val uuid = doc.getAttribute("uuid")
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

    private fun moduleIdFromReference(text: String): String {
        // 1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)
        val matchResult = Regex("""~?(.+)\(.+\)""").matchEntire(text)
        return if (matchResult != null) matchResult.groupValues[1] else text
    }

    private fun moduleIdFromLanguageRef(text: String): String {
        // l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage
        val matchResult = Regex("""l:(.+):.+""").matchEntire(text)
        return if (matchResult != null) matchResult.groupValues[1] else text
    }

    class FoundModule(val path: File, val moduleId: String, val name: String) {
        val dependsOnModuleId: MutableSet<String> = LinkedHashSet()

        fun addDependency(moduleId: String) {
            if (moduleId.isNotEmpty()) {
                dependsOnModuleId += moduleId
            }
        }
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
