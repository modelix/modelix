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

@JvmInline
@kotlinx.serialization.Serializable
value class PermissionId(val id: String) {
    override fun toString() = id
}

@kotlinx.serialization.Serializable
data class AuthorizationData(
    val knownUsers: Set<String>,
    val knownGroups: Set<String>,
    val knownPermissions: Set<PermissionId>,
    val grantedPermissions: List<PermissionData>
) {
    fun getAllKnownPermissions(): Set<PermissionId> = knownPermissions + grantedPermissions.map { it.permissionId }
    fun withGrantedPermission(grant: PermissionData) = AuthorizationData(
        knownUsers, knownGroups, knownPermissions, (grantedPermissions + grant).distinct()
    )
    fun withUser(id: String) = AuthorizationData(knownUsers + id, knownGroups, knownPermissions, grantedPermissions)
    fun withGroup(id: String) = AuthorizationData(knownUsers, knownGroups + id, knownPermissions, grantedPermissions)
    fun withPermission(id: PermissionId) = AuthorizationData(knownUsers, knownGroups, knownPermissions + id, grantedPermissions)
}

@kotlinx.serialization.Serializable
data class PermissionData(val userOrGroupId: String, val permissionId: PermissionId, val type: EPermissionType)

enum class EPermissionType(vararg val includedTypes: EPermissionType) {
    READ,
    WRITE(READ);

    fun includes(type: EPermissionType): Boolean = type == this || includedTypes.any { it.includes(type) }
}