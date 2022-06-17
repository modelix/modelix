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

import com.auth0.jwt.JWT
import io.ktor.client.*
import io.ktor.client.engine.cio.*
import io.ktor.client.request.*
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.plugins.*
import io.ktor.server.plugins.forwardedheaders.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.util.pipeline.*
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

val keycloakOAuth = "keycloakOAuth"
fun Application.installAuthentication() {
    install(XForwardedHeaders)
    install(Authentication) {
        oauth(keycloakOAuth) {
            client = HttpClient(CIO)
            providerLookup = {
                val keycloakAddress = "http://localhost:30761/keycloak"
                OAuthServerSettings.OAuth2ServerSettings(
                    name = "keycloak",
                    authorizeUrl = "http://localhost:31310/realms/modelix/protocol/openid-connect/auth",
                    accessTokenUrl = "http://keycloak:8080/realms/modelix/protocol/openid-connect/token",
                    clientId = "modelix",
                    clientSecret = "jMTF3rOTzXB16hN3qzxp3VKPPSwdTFty",
                    accessTokenRequiresBasicAuth = false,
                    requestMethod = HttpMethod.Post, // must POST to token endpoint
                    defaultScopes = listOf("roles")
                )
            }
            urlProvider = {
                (request.headers["X-Forwarded-Url"] ?:
                    """${request.origin.scheme}://${request.host()}:${request.port()}${request.uri}""").substringBefore("?")
            }
        }
    }
    install(StatusPages) {
        exception<Throwable> { call, cause ->
            when (cause) {
                is NoPermissionException -> call.respondText(
                    text = cause.message ?: "",
                    status = io.ktor.http.HttpStatusCode.Forbidden
                )
                else -> {
                    val text = """
                        |500: $cause
                        |
                        |${cause.stackTraceToString()}
                    """.trimMargin()
                    call.respondText(text = text, status = io.ktor.http.HttpStatusCode.InternalServerError)
                }
            }
        }
    }
}

fun Route.requiresPermission(permission: PermissionId, type: EPermissionType, body: Route.()->Unit) {
    authenticate(keycloakOAuth) {
        intercept(ApplicationCallPipeline.Call) {
            ModelixAuthorization.checkPermission(
                call.getUser(),
                ModelixAuthorization.AUTHORIZATION_DATA_PERMISSION,
                type
            )
        }
        body()
    }
}

fun PipelineContext<Unit, ApplicationCall>.getUser(): AuthenticatedUser {
    return call.getUser()
}

fun ApplicationCall.getUser(): AuthenticatedUser {
    val tokenResponse = principal<OAuthAccessTokenResponse.OAuth2>() ?: return AuthenticatedUser.ANONYMOUS_USER
    val token = JWT.decode(tokenResponse.accessToken)
    val name = token.getClaim("name").toString()
    return AuthenticatedUser(setOf(name), setOf(AuthenticatedUser.PUBLIC_GROUP))
}

fun RequestConnectionPoint.fullUri(): String {
    return """$scheme://$host$uri"""
}