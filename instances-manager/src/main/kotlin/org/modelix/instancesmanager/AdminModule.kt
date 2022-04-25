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
                                th { +"Path" }
                                th { +"User" }
                                th { +"Instance ID" }
                            }
                        }
                        for (deployment in DeploymentManager.INSTANCE.listDeployments()) {
                            tr {
                                td { +deployment.path }
                                td { +(deployment.user ?: "") }
                                td { +deployment.id }
                                td {
                                    if (deployment.disabled) {
                                        postForm("enable-instance") {
                                            hiddenInput {
                                                name = "instanceId"
                                                value = deployment.id
                                            }
                                            submitInput {
                                                value = "Enable"
                                            }
                                        }
                                    } else {
                                        postForm("disable-instance") {
                                            hiddenInput {
                                                name = "instanceId"
                                                value = deployment.id
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
    }
}