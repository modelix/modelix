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
import org.w3c.dom.Document
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.nio.charset.StandardCharsets
import java.util.concurrent.TimeUnit
import javax.xml.parsers.DocumentBuilderFactory

class BuildScriptGenerator(val inputFolders: List<File>, val modulesToGenerate: List<ModuleId>? = null) {

    val modulesMiner = ModulesMiner(inputFolders)

    fun buildModules(antScriptFile: File = File.createTempFile("mps-build-script", ".xml", File(".")), outputHandler: ((String)->Unit)? = null) {
        val xml = generateXML()
        FileUtils.writeStringToFile(antScriptFile, xml, StandardCharsets.UTF_8)

        val ant = ProcessBuilder(getAntPath(), "-f", antScriptFile.canonicalPath).start()
        var lastOutput = System.currentTimeMillis()
        val outputThread = Thread() {
            val reader = BufferedReader(InputStreamReader(ant.inputStream))
            var line = reader.readLine()
            while (line != null) {
                lastOutput = System.currentTimeMillis()
                if (outputHandler != null) {
                    outputHandler(line)
                } else {
                    println(line)
                }
                line = reader.readLine()
            }
        }
        outputThread.start()
        while (!ant.waitFor(10, TimeUnit.SECONDS)) {
            if (System.currentTimeMillis() - lastOutput > 120_000) {
                outputThread.interrupt()
                throw RuntimeException("Generating MPS modules timed out")
            }
        }
        val exitValue = ant.exitValue()
        if (exitValue != 0) throw RuntimeException("Generating MPS modules failed with exit value $exitValue")
    }

    fun getAntPath(): String {
        return listOf("/usr/local/bin/ant").firstOrNull { File(it).exists() } ?: "ant"
    }

    fun generateXML(): String {
        val doc = generateAnt()
        return xmlToString(doc)
    }

    fun generateAnt(): Document {
        val plan = generatePlan(modulesToGenerate ?: modulesMiner.collectModules().modules.values.filter { it.owner is SourceModuleOwner }.map { it.moduleId }.toList())

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("default", "generate")

            val mpsHome = modulesMiner.collectModules().mpsHome
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
        val planBuilder = GenerationPlanBuilder(modulesMiner.collectModules())
        planBuilder.build(modulesToGenerate.mapNotNull { modulesMiner.collectModules().modules[it] })
        return planBuilder.plan
    }
}
