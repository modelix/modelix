/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.authorization.ui

import io.ktor.server.application.*
import io.ktor.server.plugins.cors.*
import io.ktor.server.html.*
import io.ktor.http.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.html.*
import org.modelix.authorization.*

fun Application.authorizationModule() {

    install(Routing)

    routing {
        get("/") {
            val data = ModelixAuthorization.getData()
            call.respondHtml {
                body {
                    form(action = "update", method = FormMethod.post) {
                        h1 { +"Known Users" }
                        table {
                            for (userId in data.knownUsers) {
                                tr {
                                    td {
                                        checkBoxInput(name = "user") { value = userId }
                                        +userId
                                    }
                                }
                            }
                            tr {
                                td {
                                    textInput(name = "new-user-id")
                                    submitInput(name = "add-user") { value = "+" }
                                }
                            }
                        }
                        h1 { +"Known Groups" }
                        table {
                            for (groupId in data.knownGroups) {
                                tr {
                                    td {
                                        checkBoxInput(name = "group") { value = groupId }
                                        +groupId
                                    }
                                }
                            }
                            tr {
                                td {
                                    textInput(name = "new-group-id")
                                    submitInput(name = "add-group") { value = "+" }
                                }
                            }
                        }
                        h1 { +"Known Permissions" }
                        table {
                            for (permissionId in data.getAllKnownPermissions().sortedBy { it.id }) {
                                tr {
                                    td {
                                        checkBoxInput(name = "permission") { value = permissionId.id }
                                        +permissionId.id
                                    }
                                }
                            }
                            tr {
                                td {
                                    textInput(name = "new-permission-id")
                                    submitInput(name = "add-permission") { value = "+" }
                                }
                            }
                        }
                        div {
                            +"Grant "
                            for (type in EPermissionType.values()) {
                                submitInput(name = "type") { value = type.name }
                            }
                            +" access"
                        }
                    }
                    h1 { +"Granted Permissions" }
                    table {
                        for (grantedPermission in data.grantedPermissions) {
                            tr {
                                td { +grantedPermission.userOrGroupId }
                                td { +grantedPermission.type.name }
                                td { +grantedPermission.permissionId.id }
                                td {
                                    form(action = "removeGrantedPermission", method = FormMethod.post) {
                                        hiddenInput(name = "userOrGroupId") { value = grantedPermission.userOrGroupId }
                                        hiddenInput(name = "type") { value = grantedPermission.type.name }
                                        hiddenInput(name = "permission") { value = grantedPermission.permissionId.id }
                                        submitInput { value = "Remove" }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        post("update") {
            val params: Parameters = call.receiveParameters()
            var data = ModelixAuthorization.getData()
            if (params.contains("type")) {
                val users = params.getAll("user") ?: emptyList()
                val groups = params.getAll("group") ?: emptyList()
                val permissions = params.getAll("permission")?.map { PermissionId(it) } ?: emptyList()
                val type = params["type"]?.let { EPermissionType.valueOf(it) }
                if (type != null) {
                    for (permission in permissions) {
                        for (user in users) {
                            data = data.withGrantedPermission(PermissionData(user, permission, type))
                        }
                        for (group in groups) {
                            data = data.withGrantedPermission(PermissionData(group, permission, type))
                        }
                    }
                }
            } else if (params.contains("add-user")) {
                val id = params["new-user-id"]
                if (id != null) {
                    data = data.withUser(id)
                }
            } else if (params.contains("add-group")) {
                val id = params["new-group-id"]
                if (id != null) {
                    data = data.withGroup(id)
                }
            } else if (params.contains("add-permission")) {
                val id = params["new-permission-id"]
                if (id != null) {
                    data = data.withPermission(PermissionId(id))
                }
            }
            ModelixAuthorization.storeData(data)
            call.respondRedirect(".")
        }

        post("removeGrantedPermission") {
            val params = call.receiveParameters()
            ModelixAuthorization.updateData { data ->
                AuthorizationData(
                    data.knownUsers,
                    data.knownGroups,
                    data.knownPermissions,
                    data.grantedPermissions.filterNot {
                        it.userOrGroupId == params["userOrGroupId"] &&
                        it.type.name == params["type"] &&
                        it.permissionId.id == params["permission"]
                    }
                )
            }
            call.respondRedirect(".")
        }
    }

    install(CORS) {
        anyHost()
        allowHeader(HttpHeaders.ContentType)
        allowMethod(HttpMethod.Options)
        allowMethod(HttpMethod.Get)
        allowMethod(HttpMethod.Put)
        allowMethod(HttpMethod.Post)
    }
}
