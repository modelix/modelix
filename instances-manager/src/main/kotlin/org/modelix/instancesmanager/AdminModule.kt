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
package org.modelix.instancesmanager

import io.ktor.application.*
import io.ktor.features.*
import io.ktor.html.*
import io.ktor.http.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import kotlinx.html.*
import org.modelix.workspaces.WorkspaceHash

fun Application.adminModule() {
    install(Routing)
    install(CORS) {
        anyHost()
        header(HttpHeaders.ContentType)
        method(HttpMethod.Options)
        method(HttpMethod.Get)
        method(HttpMethod.Put)
        method(HttpMethod.Post)
    }

    routing {
        get("/") {
            call.respondHtml(HttpStatusCode.OK) {
                head {
                    title = "Manage MPS Instances"
                    style {
                        +"""
                            table {
                                border-collapse: collapse;
                            }
                            td, th {
                                border: 1px solid #888;
                                padding: 3px 12px;
                            }
                        """.trimIndent()
                    }
                }
                body {
                    table {
                        thead {
                            tr {
                                th {
                                    +"Workspace Name"
                                    br {  }
                                    +"Workspace ID"
                                    br {  }
                                    +"Workspace Hash"
                                }
                                th {
                                    +"Max. Unassigned"
                                    br {}
                                    +"Instances"
                                }
                                th { +"Instance ID" }
                                th { +"User" }
                            }
                        }
                        for (assignment in DeploymentManager.INSTANCE.getAssignments().sortedBy { it.workspace.hash().hash }.sortedBy { it.workspace.id }) {
                            val assignmentCells: TR.() -> Unit = {
                                td {
                                    rowSpan = assignment.instances.size.coerceAtLeast(1).toString()
                                    +(assignment.workspace.name ?: "<no name>")
                                    br{}
                                    +assignment.workspace.id
                                    br{}
                                    +assignment.workspace.hash().hash
                                }
                                td {
                                    rowSpan = assignment.instances.size.coerceAtLeast(1).toString()
                                    postForm("change-unassigned") {
                                        hiddenInput {
                                            name = "workspaceHash"
                                            value = assignment.workspace.hash().hash
                                        }
                                        numberInput {
                                            name = "numberOfUnassigned"
                                            value = assignment.unassignedInstances.toString()
                                        }
                                        submitInput {
                                            value = "Apply"
                                        }
                                    }
                                }
                            }

                            if (assignment.instances.isEmpty()) {
                                tr {
                                    assignmentCells()
                                }
                            } else {
                                for (instanceAndIndex in assignment.instances.withIndex()) {
                                    val instance = instanceAndIndex.value
                                    tr {
                                        if (instanceAndIndex.index == 0) assignmentCells()
                                        td {
                                            if (instance.disabled) style = "color: #aaa"
                                            +instance.id
                                        }
                                        td {
                                            if (instance.disabled) style = "color: #aaa"
                                            +(instance.user ?: "<unassigned>")
                                        }
                                        td {
                                            if (instance.disabled) {
                                                postForm("enable-instance") {
                                                    hiddenInput {
                                                        name = "instanceId"
                                                        value = instance.id
                                                    }
                                                    submitInput {
                                                        value = "Enable"
                                                    }
                                                }
                                            } else {
                                                postForm("disable-instance") {
                                                    hiddenInput {
                                                        name = "instanceId"
                                                        value = instance.id
                                                    }
                                                    submitInput {
                                                        value = "Disable"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                        }
                    }
                }
            }
        }

        post("disable-instance") {
            val instanceId = call.receiveParameters()["instanceId"]!!
            DeploymentManager.INSTANCE.disableInstance(instanceId)
            call.respondRedirect(".")
        }

        post("enable-instance") {
            val instanceId = call.receiveParameters()["instanceId"]!!
            DeploymentManager.INSTANCE.enableInstance(instanceId)
            call.respondRedirect(".")
        }

        post("change-unassigned") {
            val parameters = call.receiveParameters()
            val workspaceHash = parameters["workspaceHash"]!!
            val numberOfUnassigned = parameters["numberOfUnassigned"]!!
            DeploymentManager.INSTANCE.changeNumberOfAssigned(WorkspaceHash(workspaceHash), numberOfUnassigned.toInt().coerceIn(0..100))
            call.respondRedirect(".")
        }
    }
}