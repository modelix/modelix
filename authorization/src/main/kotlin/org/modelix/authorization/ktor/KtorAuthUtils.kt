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
package org.modelix.authorization.ktor

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import org.modelix.authorization.*

class OAuthProxyAuth(authenticationConfig: Config) : AuthenticationProvider(authenticationConfig) {
    override suspend fun onAuthenticate(context: AuthenticationContext) {
        val pricipal = AuthenticatedUser.fromHttpHeaders(context.call.request.headers.entries())
        context.principal(pricipal)
    }
    public class Config internal constructor(name: String?) : AuthenticationProvider.Config(name) {

    }
}

public fun AuthenticationConfig.oauthProxy(
    name: String? = null,
    configure: OAuthProxyAuth.Config.() -> Unit
) {
    val provider = OAuthProxyAuth(OAuthProxyAuth.Config(name).apply(configure))
    register(provider)
}


fun Application.installAuthentication() {
    install(Authentication) {
        oauthProxy("oauth-proxy") { }
    }
    install(StatusPages) {
        exception<Throwable> { call, cause ->
            when (cause) {
                is NoPermissionException -> call.respondText(
                    text = cause.message ?: "",
                    status = io.ktor.http.HttpStatusCode.Unauthorized
                )
                else -> call.respondText(text = "500: $cause", status = io.ktor.http.HttpStatusCode.InternalServerError)
            }
        }
    }
}

fun Route.requiresPermission(permission: PermissionId, type: EPermissionType, body: Route.()->Unit) {
    authenticate("oauth-proxy") {
        intercept(ApplicationCallPipeline.Call) {
            ModelixAuthorization.checkPermission(
                call.principal<AuthenticatedUser>()!!,
                ModelixAuthorization.AUTHORIZATION_DATA_PERMISSION,
                type
            )
        }
        body()
    }
}