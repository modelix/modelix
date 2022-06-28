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
package org.modelix.authorization

import com.auth0.jwt.interfaces.DecodedJWT
import org.keycloak.authorization.client.AuthzClient
import org.keycloak.authorization.client.Configuration
import org.keycloak.representations.idm.authorization.AuthorizationRequest
import org.keycloak.representations.idm.authorization.Permission
import org.keycloak.representations.idm.authorization.PermissionRequest
import org.modelix.authorization.ktor.getClientSecret

object KeycloakUtils {
    val authzClient = AuthzClient.create(Configuration(
        "http://172.16.2.56:31310/",
        "modelix",
        "modelix",
        mapOf("secret" to getClientSecret()),
        null
    ))

    fun getPermissions(accessToken: DecodedJWT): List<Permission> {
        try {
            val rpt = authzClient.authorization(accessToken.token).authorize(AuthorizationRequest()).token
            val introspect = authzClient.protection().introspectRequestingPartyToken(rpt)
            return introspect.permissions
        } catch (e: Exception) {
            throw RuntimeException("Can't get permissions for token: ${accessToken.token}", e)
        }
    }

    fun hasPermissions(accessToken: DecodedJWT, permissionNames: List<String>): Boolean {
        try {
            val ticket = authzClient.protection(accessToken.token).permission().create(permissionNames.map { PermissionRequest(it) }).ticket
            val rpt = authzClient.authorization(accessToken.token).authorize(AuthorizationRequest(ticket)).token
            val introspect = authzClient.protection().introspectRequestingPartyToken(rpt)
            return introspect.active
        } catch (e: Exception) {
            throw RuntimeException("Can't get permissions for token: ${accessToken.token}", e)
        }
    }

}