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

class AuthenticatedUser(val userIds: Set<String>, val groups: Set<String>, val jwt: String?) : Principal {
    fun getUserAndGroupIds(): Sequence<String> = userIds.asSequence() + groups

    override fun toString(): String {
        val userPart = when (userIds.size) {
            0 -> "<no user>"
            1 -> userIds.single()
            else -> userIds.joinToString("/")
        }
        val groupPart = when (groups.size) {
            0 -> ""
            else -> " (${groups.joinToString(", ")})"
        }
        return userPart + groupPart
    }

    companion object {
        val PUBLIC_GROUP = "modelix-public"
        val ANONYMOUS_USER_ID = "modelix-anonymous"
        val ANONYMOUS_USER = AuthenticatedUser(setOf(ANONYMOUS_USER_ID), setOf(PUBLIC_GROUP), null)

        fun fromHttpHeaders(headers: List<Pair<String, String>>): AuthenticatedUser {
            var users = headers.filter { it.first == "X-Forwarded-Email" || it.first == "X-Forwarded-User" }.map { it.second }
            var groups = headers.filter { it.first == "X-Forwarded-Groups" }.map { it.second }
            if (users.isEmpty()) {
                users = listOf(ANONYMOUS_USER_ID)
            }
            groups += PUBLIC_GROUP
            return AuthenticatedUser(users.toSet(), groups.toSet(), null)
        }
        fun fromHttpHeaders(headers: Iterable<Map.Entry<String, List<String>>>): AuthenticatedUser {
            return fromHttpHeaders(headers.flatMap { entry -> entry.value.map { value -> entry.key to value } })
        }
        fun fromHttpHeaders(headers: Map<String, List<String>>): AuthenticatedUser {
            return fromHttpHeaders(headers.entries)
        }
    }
}