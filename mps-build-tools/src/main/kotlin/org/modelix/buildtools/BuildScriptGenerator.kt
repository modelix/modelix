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

import org.modelix.headlessmps.ProcessExecutor
import org.w3c.dom.Document
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.io.path.pathString

class BuildScriptGenerator(val modulesMiner: ModulesMiner, val modulesToGenerate: List<ModuleId>? = null, val ignoredModules: Set<ModuleId> = HashSet()) {

    fun buildModules(antScriptFile: File = File.createTempFile("mps-build-script", ".xml", File(".")), outputHandler: ((String)->Unit)? = null) {
        val xml = generateXML()
        antScriptFile.writeText(xml)

        outputHandler?.let { it(xml) }

        val ant = ProcessExecutor()
        outputHandler?.let { ant.outputHandler = it }
        ant.exec(listOf(getAntPath(), "-f", antScriptFile.canonicalPath))
    }

    fun getAntPath(): String {
        return listOf("/usr/local/bin/ant").firstOrNull { File(it).exists() } ?: "ant"
    }

    fun generateXML(): String {
        val doc = generateAnt()
        return xmlToString(doc)
    }

    fun generateAnt(): Document {
        val modulesToGenerate_ = modulesToGenerate
            ?: modulesMiner.getModules().getModules().values
                .filter { it.owner is SourceModuleOwner && it.moduleType == ModuleType.Language }
                .map { it.moduleId }
                .toList()
        val plan = generatePlan(modulesToGenerate_ - ignoredModules.toSet())

        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("default", "generate")

            val mpsHome = modulesMiner.getModules().mpsHome
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
                    for (plugin in plan.getPlugins()) {
                        newChild("plugin") {
                            setAttribute("path", plugin.path.getLocalAbsolutePath().pathString)
                        }
                    }
                    for (library in plan.getLibraries()) {
                        newChild("library") {
                            setAttribute("file", library.path.getLocalAbsolutePath().pathString)
                        }
                    }
                    for (chunk in plan.chunks) {
                        newChild("chunk") {
                            for (module in chunk.modules.map { it.owner.path.getLocalAbsolutePath().pathString }.distinct()) {
                                newChild("module") {
                                    setAttribute("file", module)
                                }
                            }
                        }
                    }
                    newChild("jvmargs") {
                        newChild("arg") {
                            setAttribute("value", "-ea")
                        }
                        newChild("arg") {
                            setAttribute("value", "-Xmx2G")
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
        val planBuilder = GenerationPlanBuilder(modulesMiner.getModules(), ignoredModules)
        planBuilder.build(modulesToGenerate.mapNotNull { modulesMiner.getModules().getModules()[it] })
        return planBuilder.plan
    }
}
