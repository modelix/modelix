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

import com.auth0.jwk.JwkProviderBuilder
import com.auth0.jwt.JWT
import com.auth0.jwt.algorithms.Algorithm
import com.auth0.jwt.interfaces.DecodedJWT
import com.auth0.jwt.interfaces.Payload
import io.ktor.client.*
import io.ktor.client.engine.cio.*
import io.ktor.http.*
import io.ktor.http.auth.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.auth.jwt.*
import io.ktor.server.plugins.*
import io.ktor.server.plugins.forwardedheaders.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.sessions.*
import io.ktor.util.pipeline.*
import org.json.JSONObject
import org.modelix.authorization.*
import java.net.URL
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.security.interfaces.RSAPublicKey

private const val keycloakOAuth = "keycloakOAuth"
private const val sessionAuth = "sessionAuth"
private const val jwtAuth = "jwtAuth"
private const val callbackEndpointName = "oauth-callback"
private const val originalUrlParameterName = "originalUrl"
private const val KEYCLOAK_INTERNAL_HOST = "keycloak:8080"
private const val KEYCLOAK_REALM = "modelix"
private const val KEYCLOAK_CLIENT = "modelix"
private val jwkProvider = JwkProviderBuilder(URL("http://$KEYCLOAK_INTERNAL_HOST/realms/$KEYCLOAK_REALM/protocol/openid-connect/certs")).build()

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

private const val SESSION_COOKIE_NAME = "modelix-session"

fun Application.installAuthentication() {
    install(XForwardedHeaders)
    install(Authentication) {
        // REST clients can provide an "Authorization: Bearer ..." header to get access
        jwt(jwtAuth) {
            verifier(jwkProvider) {
                acceptLeeway(60L)
            }
            challenge { _, _ -> } // login and token generation is done by OAuth
            this.validate {
                it.payload.toUser()
            }
        }
        // After a successful OAuth login store the token in a cookie. The token is signed and can be verified without
        // any state on the ktor server and without any request to the OIDC server.
        session<UserSession>(sessionAuth) {
            validate {
                it.getJWT().nullIfInvalid()?.toUser()
            }
        }
        // If no authentication data is provided redirect to keycloak and let the user login. Keycloak may remember the
        // user and immediately redirect without showing any UI.
        oauth(keycloakOAuth) {
            client = HttpClient(CIO)
            providerLookup = {
                OAuthServerSettings.OAuth2ServerSettings(
                    name = "keycloak",
                    authorizeUrl = "http://${request.host()}:${request.port()}/realms/$KEYCLOAK_REALM/protocol/openid-connect/auth",
                    accessTokenUrl = "http://$KEYCLOAK_INTERNAL_HOST/realms/$KEYCLOAK_REALM/protocol/openid-connect/token",
                    clientId = KEYCLOAK_CLIENT,
                    clientSecret = "9MMUb1aWd9uCKJZ4cfoXCbTx3bgpyJPi", // TODO make configurable
                    accessTokenRequiresBasicAuth = false,
                    requestMethod = HttpMethod.Post,
                    defaultScopes = listOf("roles")
                )
            }
            urlProvider = {
                val forwardedUrl = request.headers["X-Forwarded-Url"]
                var originalUrl = (this.request.queryParameters[originalUrlParameterName] ?: forwardedUrl ?:
                    """${request.origin.scheme}://${request.host()}:${request.port()}${request.uri}""").substringBefore("?")
                val pathPrefix = if (forwardedUrl == null) "" else {
                    val forwardedPath = "/" + forwardedUrl.substringBefore("?").substringAfter("://").substringAfter("/")
                    if (!forwardedPath.endsWith(request.path())) "" else forwardedPath.substringBefore(this.request.path())
                }

                originalUrl = URLEncoder.encode(originalUrl, StandardCharsets.UTF_8)
                """${request.origin.scheme}://${request.host()}:${request.port()}$pathPrefix/$callbackEndpointName?$originalUrlParameterName=$originalUrl"""
            }
        }

        // If OAuth fails because of an invalid client secret a 401 is returned instead of a 500.
        // This provider returns the correct status code with a description.
        register(object : AuthenticationProvider(object : AuthenticationProvider.Config("errorHandler") {}) {
            override suspend fun onAuthenticate(context: AuthenticationContext) {
                val error = context.allErrors.firstOrNull()
                if (error != null) {
                    throw RuntimeException(error.message)
                }
            }

        })
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
    install(Sessions) {
        cookie<UserSession>(SESSION_COOKIE_NAME) {
            cookie.path = "/"
            cookie.maxAgeInSeconds = 14*24*60*60
            cookie.httpOnly = false
//            serializer = object : SessionSerializer<UserSession> {
//                override fun deserialize(text: String) = UserSession(text)
//                override fun serialize(session: UserSession) = session.token
//            }
        }
    }
    routing {
        authenticate(jwtAuth, sessionAuth, keycloakOAuth) {
            get("/$callbackEndpointName") {
                val originalUrl = call.parameters[originalUrlParameterName] ?: "/"
                val oauthResponse = call.principal<OAuthAccessTokenResponse.OAuth2>()
                val token = call.getJWTAsString()
                if (token == null) {
                    call.respondText("Token missing", status = HttpStatusCode.InternalServerError)
                    return@get
                }
                if (JWT.decode(token).nullIfInvalid() == null) {
                    call.respondText("Token invalid: $token", status = HttpStatusCode.InternalServerError)
                    return@get
                }
                call.sessions.set(SESSION_COOKIE_NAME, UserSession(token, oauthResponse?.refreshToken))
                call.respondRedirect(originalUrl)
            }
            get("/user") {
                val jwtString = call.getJWTAsString()
                if (jwtString == null) {
                    call.respondText("No token available")
                } else {
                    val refreshToken = call.principal<OAuthAccessTokenResponse.OAuth2>()?.refreshToken
                        ?: call.sessions.get<UserSession>()?.refreshToken
                    val claims = JWT.decode(jwtString).claims.map { "${it.key}: ${it.value}" }.joinToString("\n")
                    call.respondText("""
                                |User: ${getUser()} 
                                |
                                |Token: $jwtString
                                |Refresh Token: $refreshToken
                                |
                                |$claims
                                |""".trimMargin())
                }
            }
        }
    }

}

data class UserSession(val token: String, val refreshToken: String?) {
    fun getJWT(): DecodedJWT = JWT.decode(token)
    fun getUser(): AuthenticatedUser? = getJWT().nullIfInvalid()?.toUser()
}

fun Route.requiresPermission(permission: PermissionId, type: EPermissionType, body: Route.()->Unit) {
    authenticate(jwtAuth, sessionAuth, keycloakOAuth) {
        intercept(ApplicationCallPipeline.Call) {
            ModelixAuthorization.checkPermission(
                call.getUser(),
                permission,
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
    return principal<AuthenticatedUser>() ?: getValidJWT().toUser() ?: AuthenticatedUser.ANONYMOUS_USER
}

fun Payload?.toUser(): AuthenticatedUser? {
    val jwt = this ?: return null
    val name = jwt.getClaim("preferred_username")?.asString() ?: AuthenticatedUser.ANONYMOUS_USER_ID
    val roles = (jwt.getClaim("realm_access")?.asMap()?.get("roles") as? List<String>)?.toSet() ?: emptySet()
    return AuthenticatedUser(setOf(name), roles + AuthenticatedUser.PUBLIC_GROUP)
}

fun ApplicationCall.getValidJWT(): DecodedJWT? {
    return getJWTAsString()?.let { JWT.decode(it) }?.nullIfInvalid()
}


fun ApplicationCall.getJWTAsString(): String? {
    val tokenResponse = principal<OAuthAccessTokenResponse.OAuth2>()
    val tokenString = if (tokenResponse != null) {
        tokenResponse.accessToken
    } else {
        val session = sessions.get<UserSession>()
        session?.token
    }

    return tokenString
}

fun ApplicationCall.jwtFromAuthHeader(): DecodedJWT? {
    val authHeader = request.parseAuthorizationHeader()
    if (authHeader == null || authHeader.authScheme != AuthScheme.Bearer) return null
    val tokenString = when (authHeader) {
        is HttpAuthHeader.Single -> authHeader.blob
        else -> return null
    }
    return JWT.decode(tokenString)
}

fun verifyTokenSignature(token: DecodedJWT) {
    val jwk = jwkProvider.get(token.keyId)
    val publicKey = jwk.publicKey as? RSAPublicKey ?: throw RuntimeException("Invalid key type")
    val algorithm = when (jwk.algorithm) {
        "RS256" -> Algorithm.RSA256(publicKey, null)
        "RSA384" -> Algorithm.RSA384(publicKey, null)
        "RS512" -> Algorithm.RSA512(publicKey, null)
        else -> throw Exception("Unsupported Algorithm")
    }
    val verifier = JWT.require(algorithm)
        .acceptLeeway(0L)
        .build()
    verifier.verify(token)
}

fun DecodedJWT.nullIfInvalid(): DecodedJWT? {
    return try {
        verifyTokenSignature(this)
        this
    } catch (e: Exception) {
        null
    }
}

fun RequestConnectionPoint.fullUri(): String {
    return """$scheme://$host$uri"""
}