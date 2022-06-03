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

import kotlinx.serialization.json.Json
import org.modelix.model.client.IModelClient
import org.modelix.model.client.RestWebModelClient
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString

object ModelixAuthorization {
    private val ADMIN_GROUP = "modelix-administrators"
    private val PUBLIC_GROUP = "modelix-public"
    private val ANONYMOUS_USER_ID = "modelix-anonymous"
    private val ANONYMOUS_USER = AuthenticatedUser(ANONYMOUS_USER_ID, setOf(PUBLIC_GROUP))

    var persistence: IAuthorizationPersistence = ModelServerAuthorizationPersistence()

    fun getData(): AuthorizationData {
        return persistence.loadData()
            ?: AuthorizationData(setOf(ANONYMOUS_USER_ID), setOf(ADMIN_GROUP, PUBLIC_GROUP), emptySet(), emptyList())
    }

    fun storeData(data: AuthorizationData) {
        persistence.storeData(data)
    }

    fun getPermissions(user: AuthenticatedUser, permissionId: PermissionId): Set<EPermissionType> {
        val userAndGroupIds = user.getUserAndGroupIds() + PUBLIC_GROUP
        return getData().grantedPermissions
            .filter { it.permissionId == permissionId && userAndGroupIds.contains(it.userOrGroupId) }
            .map { it.type }.toSet()
    }

    fun hasPermission(user: AuthenticatedUser, permissionId: PermissionId, type: EPermissionType): Boolean {
        return getPermissions(user, permissionId).any { it.includes(type) }
    }
}