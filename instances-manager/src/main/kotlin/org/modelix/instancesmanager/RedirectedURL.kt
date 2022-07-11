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
import org.eclipse.jetty.http.HttpCookie
import org.eclipse.jetty.server.Request
import org.modelix.authorization.AccessTokenPrincipal
import org.modelix.authorization.nullIfInvalid
import java.util.*
import javax.servlet.http.HttpServletRequest

class RedirectedURL(val remainingPath: String, val originalDeploymentName: String, var personalDeploymentName: String?, val userId: String?) {
    fun noPersonalDeployment() {
        personalDeploymentName = null
    }

    fun getRedirectedUrl(websocket: Boolean): String {
        var url = (if (websocket) "ws" else "http") + "://"
        url += if (personalDeploymentName != null) personalDeploymentName else originalDeploymentName
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
            val path = request.requestURI
            if (path[0] != '/') return null
            val indexOfSlash = path.indexOf('/', 1)
            if (indexOfSlash < 0) return null
            val originalDeploymentName = path.substring(1, indexOfSlash)
            //        originalDeploymentName = originalDeploymentName.replace("*", "");
            var remainingPath = path.substring(indexOfSlash)
            if (request.queryString != null) remainingPath += "?" + request.queryString

            val userId = getUserIdFromAuthHeader(request) ?: run {
                // TODO use the ID of an authenticated user instead (or in addition)
                var cookieValue: String? = null
                val cookies = request.cookies
                if (cookies != null) {
                    for (cookie in cookies) {
                        if (COOKIE_NAME == cookie.name) {
                            cookieValue = cookie.value
                        }
                    }
                }
                baseRequest?.response?.addCookie(HttpCookie(COOKIE_NAME, cookieValue
                    ?: UUID.randomUUID().toString(), null, "/", 30 * 24 * 60 * 60, false, false))
                cookieValue
            }

            return RedirectedURL(remainingPath, originalDeploymentName, null, userId)
        }

        fun getUserIdFromAuthHeader(request: HttpServletRequest): String? {
            val tokenString = request.getHeader("X-Forwarded-Access-Token") ?: run {
                val headerValue: String? = request.getHeader("Authorization")
                val prefix = "Bearer "
                if (headerValue?.startsWith(prefix) == true) {
                    headerValue.drop(prefix.length)
                } else {
                    null
                }
            } ?: return null
            return JWT.decode(tokenString).nullIfInvalid()?.let { AccessTokenPrincipal(it) }?.getUserName()
        }
    }
}