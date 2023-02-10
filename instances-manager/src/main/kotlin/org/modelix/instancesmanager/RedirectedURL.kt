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

import com.auth0.jwt.JWT
import org.eclipse.jetty.server.Request
import org.modelix.authorization.AccessTokenPrincipal
import org.modelix.authorization.nullIfInvalid
import javax.servlet.http.HttpServletRequest

class RedirectedURL(
    val remainingPath: String,
    val workspaceReference: String,
    val sharedInstanceName: String,
    var instanceName: InstanceName?,
    val userToken: AccessTokenPrincipal?
) {
    fun noPersonalDeployment() {
        instanceName = null
    }

    fun getRedirectedUrl(websocket: Boolean): String {
        var url = (if (websocket) "ws" else "http") + "://"
        url += if (instanceName != null) instanceName?.name else workspaceReference
        url += if (remainingPath.startsWith("/ide/")) {
            ":8887" + remainingPath.substring("/ide".length)
        } else {
            ":33333$remainingPath"
        }
        return url
    }

    companion object {
        const val COOKIE_NAME = "modelix-mps-instance"
        fun redirect(baseRequest: Request?, request: HttpServletRequest): RedirectedURL? {
            var remainingPath = request.requestURI
            if (!remainingPath.startsWith("/")) return null
            remainingPath = remainingPath.substring(1)
            val workspaceReference = remainingPath.substringBefore('/')
            remainingPath = remainingPath.substringAfter('/')
            val sharedInstanceName = remainingPath.substringBefore('/')
            remainingPath = remainingPath.substringAfter('/')
            if (request.queryString != null) remainingPath += "?" + request.queryString

            val userId = getUserIdFromAuthHeader(request)
            return RedirectedURL("/" + remainingPath, workspaceReference, sharedInstanceName, null, userId)
        }

        fun getUserIdFromAuthHeader(request: HttpServletRequest): AccessTokenPrincipal? {
            val tokenString = request.getHeader("X-Forwarded-Access-Token") ?: run {
                val headerValue: String? = request.getHeader("Authorization")
                val prefix = "Bearer "
                if (headerValue?.startsWith(prefix) == true) {
                    headerValue.drop(prefix.length)
                } else {
                    null
                }
            } ?: return null
            return JWT.decode(tokenString).nullIfInvalid()?.let { AccessTokenPrincipal(it) }
        }
    }
}