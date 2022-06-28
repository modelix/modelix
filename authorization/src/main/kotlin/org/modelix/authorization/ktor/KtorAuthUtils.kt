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
import io.ktor.client.request.*
import io.ktor.client.request.forms.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.http.auth.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.auth.jwt.*
import io.ktor.server.plugins.forwardedheaders.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.util.pipeline.*
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import org.json.JSONObject
import org.modelix.authorization.*
import java.net.URL
import java.security.interfaces.RSAPublicKey
import java.util.*
import kotlin.collections.HashMap
import kotlin.collections.HashSet

private const val jwtAuth = "jwtAuth"
private const val KEYCLOAK_INTERNAL_HOST = "172.16.2.56:31310"
private const val KEYCLOAK_REALM = "modelix"
private const val KEYCLOAK_CLIENT = "modelix"
private val jwkProvider = JwkProviderBuilder(URL("http://$KEYCLOAK_INTERNAL_HOST/realms/$KEYCLOAK_REALM/protocol/openid-connect/certs")).build()
private val httpClient = HttpClient(CIO)

fun Application.installAuthentication() {
    install(XForwardedHeaders)
    install(Authentication) {
        // "Authorization: Bearer ..." header is provided in the header by OAuth proxy
        jwt(jwtAuth) {
            verifier(jwkProvider) {
                acceptLeeway(60L)
            }
            challenge { _, _ ->
                call.respond(status = HttpStatusCode.Unauthorized, "No or invalid JWT token provided")
            } // login and token generation is done by OAuth proxy. Only validation is required here.
            validate {
                try {
                    // OAuth proxy passes the ID token as the bearer token, but we need the access token
                    val token = request.header("X-Forwarded-Access-Token")
                        ?: this.getBearerToken()
                    if (token != null) {
                        return@validate JWT.decode(token).nullIfInvalid().toUser()
                    }
                } catch (e : Exception) {
                }
                it.payload.toUser()
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
    routing {
        authenticate(jwtAuth) {
            get("/user") {
                val jwt = call.principal<AuthenticatedUser>()?.jwt?.let { JWT.decode(it) } ?: call.jwtFromHeaders()
                if (jwt == null) {
                    call.respondText("No JWT token available")
                } else {
                    val claims = jwt.claims.map { "${it.key}: ${it.value}" }.joinToString("\n")
                    val validationError = try {
                        verifyTokenSignature(jwt)
                        "Valid"
                    } catch (e: Exception) {
                        e.message
                    }
                    call.respondText("""
                                |User: ${jwt.toUser()} 
                                |
                                |Token: ${jwt.token}
                                |
                                |Validation result: $validationError
                                |
                                |$claims
                                |
                                |Permissions:
                                |${KeycloakUtils.getPermissions(jwt).joinToString("\n") { "    $it" }}
                                |""".trimMargin())
                }
            }
        }
    }

}

fun Route.requiresPermission(permission: PermissionId, type: EPermissionType, body: Route.()->Unit) {
    authenticate(jwtAuth) {
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
    return principal<AuthenticatedUser>() ?: AuthenticatedUser.ANONYMOUS_USER
}

fun Payload?.toUser(): AuthenticatedUser? {
    val jwt = this ?: return null
    val name = jwt.getClaim("email")?.asString()
        ?: jwt.getClaim("preferred_username")?.asString()
        ?: AuthenticatedUser.ANONYMOUS_USER_ID
    var roles: MutableSet<String> = HashSet()
    roles += jwt.getClaim("realm_access")?.asMap().readRolesArray().toSet()
    roles += jwt.getClaim("resource_access")?.asMap()?.flatMap { resource2roles ->
        val resource = resource2roles.key
        val roles = (resource2roles.value as? Map<String, Object>).readRolesArray()
        roles.map { "resources/$resource/$it" }
    }?.toSet() ?: emptySet()
    roles += jwt.getClaim("groups")?.asList(String::class.java)?.map { "groups/" + it.trimStart('/') } ?: emptyList()
    return AuthenticatedUser(setOf(name), roles + AuthenticatedUser.PUBLIC_GROUP, (this as? DecodedJWT)?.token)
}

private fun Map<String, Any>?.readRolesArray(): List<String> {
    return this?.get("roles") as? List<String> ?: emptyList()
}

fun ApplicationCall.getBearerToken(): String? {
    val authHeader = request.parseAuthorizationHeader()
    if (authHeader == null || authHeader.authScheme != AuthScheme.Bearer) return null
    val tokenString = when (authHeader) {
        is HttpAuthHeader.Single -> authHeader.blob
        else -> return null
    }
    return tokenString
}

fun ApplicationCall.jwtFromHeaders(): DecodedJWT? {
    return (request.header("X-Forwarded-Access-Token") ?: getBearerToken())?.let { JWT.decode(it) }
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

private suspend fun queryServiceAccountToken(credentials: ServiceAccountCredentials): String {
    val response = httpClient.submitForm(
        url = "http://$KEYCLOAK_INTERNAL_HOST/realms/${credentials.clientName}/protocol/openid-connect/token",
        formParameters = Parameters.build {
            append("grant_type", "client_credentials")
        }
    ) {
        basicAuth(credentials.clientName, credentials.clientSecret)
    }
    val json = JSONObject(response.bodyAsText())
    return json.getString("access_token")
}

data class ServiceAccountCredentials(val clientSecret: String, val clientName: String = "modelix")

private val cachedTokens: MutableMap<ServiceAccountCredentials, String> = HashMap()
private val cachedTokensMutex = Mutex()
suspend fun getServiceAccountToken(credentials: ServiceAccountCredentials): String {
    cachedTokensMutex.withLock {
        var tokenString = cachedTokens[credentials]
        val validToken = tokenString?.let { JWT.decode(it) }?.nullIfInvalid()
        if (validToken == null || validToken.expiresAt.before(Date(Date().time + 60))) {
            tokenString = queryServiceAccountToken(credentials)
            cachedTokens[credentials] = tokenString
        }
        return tokenString!!
    }
}

fun getServiceAccountTokenBlocking(credentials: ServiceAccountCredentials): String {
    return runBlocking { getServiceAccountToken(credentials) }
}
val serviceAccountTokenProvider: ()->String = {
    val clientSecret = getClientSecret()
    getServiceAccountTokenBlocking(ServiceAccountCredentials(clientSecret))
}

fun getClientSecret(): String {
    val varName = "CLIENT_SECRET"
    val clientSecret = listOfNotNull(System.getProperty(varName), System.getenv(varName)).firstOrNull()
        ?: throw Exception("Variable $varName is not specified")
    return clientSecret
}