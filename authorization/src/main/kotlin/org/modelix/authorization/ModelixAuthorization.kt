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

object ModelixAuthorization {
    private val ADMIN_GROUP = "modelix-administrators"
    val AUTHORIZATION_DATA_PERMISSION = PermissionId("authorization-data")

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

    fun updateData(body: (AuthorizationData)->AuthorizationData) {
        storeData(body(getData()))
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
        val result = getPermissions(user, permissionId).any { it.includes(type) }
        if (permissionId == AUTHORIZATION_DATA_PERMISSION && !result) {
            if (!getData().grantedPermissions.any { it.permissionId == permissionId && it.type.includes(EPermissionType.WRITE) }) {
                // if nobody has the permission to edit permissions we would have a problem
                return true
            }
        }
        return result
    }

    fun checkPermission(user: AuthenticatedUser, permissionId: PermissionId, type: EPermissionType) {
        if (!hasPermission(user, permissionId, type)) {
            throw NoPermissionException(user, permissionId, type)
        }
    }
}