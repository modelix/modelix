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

import io.ktor.server.auth.*
import kotlinx.serialization.json.Json
import org.modelix.model.client.IModelClient
import org.modelix.model.client.RestWebModelClient
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString

object ModelixAuthorization {
    private val ADMIN_GROUP = "modelix-administrators"

    var persistence: IAuthorizationPersistence = ModelServerAuthorizationPersistence()

    fun getData(): AuthorizationData {
        return persistence.loadData()
            ?: AuthorizationData(
                setOf(AuthenticatedUser.ANONYMOUS_USER_ID),
                setOf(ADMIN_GROUP, AuthenticatedUser.PUBLIC_GROUP),
                emptySet(),
                emptyList()
            )
    }

    fun storeData(data: AuthorizationData) {
        persistence.storeData(data)
    }

    fun getPermissions(user: AuthenticatedUser, permissionId: PermissionId): Set<EPermissionType> {
        val userAndGroupIds = user.getUserAndGroupIds() + AuthenticatedUser.PUBLIC_GROUP
        val data = getData()
        val result = data.grantedPermissions
            .filter { it.permissionId == permissionId && userAndGroupIds.contains(it.userOrGroupId) }
            .map { it.type }.toSet()
        if (!data.knownUsers.containsAll(user.userIds) || !data.knownGroups.containsAll(user.groups) || !data.knownPermissions.contains(permissionId)) {
            storeData(AuthorizationData(
                data.knownUsers + user.userIds,
                data.knownGroups + user.groups,
                data.knownPermissions + permissionId,
                data.grantedPermissions
            ))
        }
        return result
    }

    fun hasPermission(user: AuthenticatedUser, permissionId: PermissionId, type: EPermissionType): Boolean {
        return getPermissions(user, permissionId).any { it.includes(type) }
    }

    fun checkPermission(user: AuthenticatedUser, permissionId: PermissionId, type: EPermissionType) {
        if (!hasPermission(user, permissionId, type)) {
            throw NoPermissionException(user, permissionId, type)
        }
    }
}