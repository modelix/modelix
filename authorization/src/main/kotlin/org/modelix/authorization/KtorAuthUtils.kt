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

import com.auth0.jwk.JwkProviderBuilder
import com.auth0.jwt.JWT
import com.auth0.jwt.algorithms.Algorithm
import com.auth0.jwt.interfaces.DecodedJWT
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
import io.ktor.util.*
import io.ktor.util.pipeline.*
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import org.json.JSONObject
import java.net.URL
import java.security.interfaces.RSAPublicKey
import java.util.*

private const val jwtAuth = "jwtAuth"
private val jwkProvider = JwkProviderBuilder(URL("${KeycloakUtils.BASE_URL}realms/${KeycloakUtils.REALM}/protocol/openid-connect/certs")).build()
private val httpClient = HttpClient(CIO)
private val UNIT_TEST_MODE_KEY = AttributeKey<Boolean>("unit-test-mode")

fun Application.installAuthentication(unitTestMode: Boolean = false) {
    install(XForwardedHeaders)
    install(Authentication) {
        if (unitTestMode) {
            register(object : AuthenticationProvider(object : Config(jwtAuth) {}) {
                override suspend fun onAuthenticate(context: AuthenticationContext) {
                    context.call.attributes.put(UNIT_TEST_MODE_KEY, true)
                    val token = JWT.create()
                        .withClaim("email", "unit-tests@example.com")
                        .sign(Algorithm.HMAC256("unit-tests"))
                    context.principal(AccessTokenPrincipal(JWT.decode(token)))
                }
            })
        } else {
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
                        val token = jwtFromHeaders()
                        if (token != null) {
                            return@validate token.nullIfInvalid()?.let { AccessTokenPrincipal(it) }
                        }
                    } catch (e : Exception) {
                    }
                    null
                }
            }
        }
    }
    install(StatusPages) {
        exception<Throwable> { call, cause ->
            when (cause) {
                is NoPermissionException -> call.respondText(
                    text = cause.message ?: "",
                    status = HttpStatusCode.Forbidden
                )
                is NotLoggedInException -> call.respondText(
                    text = cause.message ?: "",
                    status = HttpStatusCode.Unauthorized
                )
                else -> {
                    val text = """
                        |500: $cause
                        |
                        |${cause.stackTraceToString()}
                    """.trimMargin()
                    call.respondText(text = text, status = HttpStatusCode.InternalServerError)
                }
            }
        }
    }
    routing {
        authenticate(jwtAuth) {
            get("/user") {
                val jwt = call.principal<AccessTokenPrincipal>()?.jwt ?: call.jwtFromHeaders()
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

fun Route.requiresPermission(resourceName: String, scope: String, body: Route.()->Unit) {
    authenticate(jwtAuth) {
        intercept(ApplicationCallPipeline.Call) {
            call.checkPermission(resourceName, scope)
        }
        body()
    }
}

fun ApplicationCall.checkPermission(resourceName: String, scope: String) {
    if (attributes.getOrNull(UNIT_TEST_MODE_KEY) == true) return
    val principal = principal<AccessTokenPrincipal>() ?: throw NotLoggedInException()
    if (!KeycloakUtils.hasPermission(principal.jwt, resourceName, scope)) {
        throw NoPermissionException(principal, resourceName, scope)
    }
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
    // OAuth proxy passes the ID token as the bearer token, but we need the access token.
    return (request.header("X-Forwarded-Access-Token") ?: getBearerToken())?.let { JWT.decode(it) }
}

fun PipelineContext<Unit, ApplicationCall>.getUserName(): String? {
    return call.getUserName()
}

fun ApplicationCall.getUserName(): String? {
    return principal<AccessTokenPrincipal>()?.getUserName()
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
        url = "${KeycloakUtils.BASE_URL}realms/${credentials.clientName}/protocol/openid-connect/token",
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
    val varName = "KEYCLOAK_CLIENT_SECRET"
    val clientSecret = listOfNotNull(System.getProperty(varName), System.getenv(varName)).firstOrNull()
        ?: throw Exception("Variable $varName is not specified")
    return clientSecret
}