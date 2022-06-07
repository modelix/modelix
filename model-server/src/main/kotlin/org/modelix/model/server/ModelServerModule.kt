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

package org.modelix.model.server

import io.ktor.server.application.*
import io.ktor.server.plugins.cors.*
import io.ktor.server.html.*
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.html.*
import org.modelix.authorization.*
import org.modelix.authorization.ktor.installAuthentication
import org.modelix.authorization.ktor.requiresPermission

fun Application.authorizationModule() {

    install(Routing)
    installAuthentication()

    routing {
        requiresPermission(ModelixAuthorization.AUTHORIZATION_DATA_PERMISSION, EPermissionType.READ) {
            get("/") {
                val data = ModelixAuthorization.getData()
                call.respondHtml {
                    body {
                        form(action = "update", method = FormMethod.post) {
                        }
                        h1 { +"Known Users" }
                        table {
                            for (userId in data.knownUsers) {
                                tr {
                                    td {
                                        +userId
                                    }
                                }
                            }
                            tr {
                                td {
                                    form(action = "add-user", method = FormMethod.post) {
                                        textInput(name = "new-user-id")
                                        submitInput { value = "+" }
                                    }
                                }
                            }
                        }
                        h1 { +"Known Groups" }
                        table {
                            for (groupId in data.knownGroups) {
                                tr {
                                    td {
                                        +groupId
                                    }
                                }
                            }
                            tr {
                                td {
                                    form(action = "add-group", method = FormMethod.post) {
                                        textInput(name = "new-group-id")
                                        submitInput { value = "+" }
                                    }
                                }
                            }
                        }
                        h1 { +"Known Permissions" }
                        table {
                            for (permissionId in data.getAllKnownPermissions().sortedBy { it.id }) {
                                tr {
                                    td {
                                        +permissionId.id
                                    }
                                }
                            }
                            tr {
                                td {
                                    form(action = "add-permission", method = FormMethod.post) {
                                        textInput(name = "new-permission-id")
                                        submitInput { value = "+" }
                                    }
                                }
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
                            tr {
                                td {
                                    select {
                                        name = "userOrGroupId"
                                        form = "grantPermissionForm"
                                        multiple = true
                                        for (userOrGroup in data.knownUsers + data.knownGroups) {
                                            option {
                                                value = userOrGroup
                                                +userOrGroup
                                            }
                                        }
                                    }
                                }
                                td {
                                    select {
                                        name = "type"
                                        form = "grantPermissionForm"
                                        multiple = true
                                        for (type in EPermissionType.values()) {
                                            option {
                                                value = type.name
                                                +type.name
                                            }
                                        }
                                    }
                                }
                                td {
                                    select {
                                        name = "permission"
                                        form = "grantPermissionForm"
                                        multiple = true
                                        for (permission in data.knownPermissions) {
                                            option {
                                                value = permission.id
                                                +permission.id
                                            }
                                        }
                                    }
                                }
                                td {
                                    form(action = "grantPermission", method = FormMethod.post) {
                                        id = "grantPermissionForm"
                                        submitInput { value = "+" }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        requiresPermission(ModelixAuthorization.AUTHORIZATION_DATA_PERMISSION, EPermissionType.WRITE) {
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

            post("grantPermission") {
                val params = call.receiveParameters()
                ModelixAuthorization.updateData { data ->
                    var newPermissions = data.grantedPermissions
                    for (userOrGroupId in params.getAll("userOrGroupId")!!) {
                        for (type in params.getAll("type")!!) {
                            for (permission in params.getAll("permission")!!) {
                                newPermissions += PermissionData(userOrGroupId, PermissionId(permission), EPermissionType.valueOf(type))
                            }
                        }
                    }
                    AuthorizationData(
                        data.knownUsers,
                        data.knownGroups,
                        data.knownPermissions,
                        newPermissions.distinct()
                    )
                }
                call.respondRedirect(".")
            }

            post("add-user") {
                val params = call.receiveParameters()
                ModelixAuthorization.updateData { data ->
                    AuthorizationData(
                        data.knownUsers + params["new-user-id"]!!,
                        data.knownGroups,
                        data.knownPermissions,
                        data.grantedPermissions
                    )
                }
                call.respondRedirect(".")
            }

            post("add-group") {
                val params = call.receiveParameters()
                ModelixAuthorization.updateData { data ->
                    AuthorizationData(
                        data.knownUsers,
                        data.knownGroups + params["new-group-id"]!!,
                        data.knownPermissions,
                        data.grantedPermissions
                    )
                }
                call.respondRedirect(".")
            }

            post("add-permission") {
                val params = call.receiveParameters()
                ModelixAuthorization.updateData { data ->
                    AuthorizationData(
                        data.knownUsers,
                        data.knownGroups,
                        data.knownPermissions + PermissionId(params["new-permission-id"]!!),
                        data.grantedPermissions
                    )
                }
                call.respondRedirect(".")
            }
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
