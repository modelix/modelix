/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.model.server

import io.ktor.server.application.*
import io.ktor.server.plugins.cors.*
import io.ktor.http.*
import io.ktor.server.plugins.*
import io.ktor.server.plugins.forwardedheaders.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.util.pipeline.*
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.authorization.*
import org.modelix.authorization.ktor.installAuthentication
import org.modelix.authorization.ktor.requiresPermission
import org.slf4j.LoggerFactory
import java.io.IOException
import java.net.InetAddress
import java.net.UnknownHostException
import java.util.*
import java.util.regex.Pattern

val PERMISSION_MODEL_SERVER = PermissionId("model-server")

private fun toLong(value: String?): Long {
    return if (value == null || value.isEmpty()) 0 else value.toLong()
}

private class NotFoundException(description: String?) : RuntimeException(description)

class KtorModelServer(val storeClient: IStoreClient) {
    companion object {
        private val LOG = LoggerFactory.getLogger(KtorModelServer::class.java)
        val HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{5}\\*[a-zA-Z0-9\\-_]{38}")
        const val PROTECTED_PREFIX = "$$$"
        val HEALTH_KEY = PROTECTED_PREFIX + "health2"
        private const val REPOSITORY_ID_KEY = "repositoryId"
        private const val TEXT_PLAIN = "text/plain"
        private fun parseXForwardedFor(value: String?): List<InetAddress> {
            val result: List<InetAddress> = ArrayList()
            return if (value != null) {
                value.split(",".toRegex())
                    .dropLastWhile { it.isEmpty() }
                    .mapNotNull { v: String ->
                        try {
                            return@mapNotNull InetAddress.getByName(v.trim { it <= ' ' })
                        } catch (e: UnknownHostException) {
                            LOG.warn("Failed to parse IP address: $v", e)
                            return@mapNotNull null
                        }
                    }
                    .toList()
            } else result
        }

        private fun isTrustedAddress(addrString: String): Boolean {
            return try {
                val addr = InetAddress.getByName(addrString)
                isTrustedAddress(addr)
            } catch (e: UnknownHostException) {
                LOG.error("", e)
                false
            }
        }

        private fun isTrustedAddress(addr: InetAddress): Boolean {
            return addr.isLoopbackAddress || addr.isLinkLocalAddress || addr.isSiteLocalAddress
        }

        private fun extractToken(call: ApplicationCall): String? {
            val header = call.request.header("Authorization") ?: return null
            return if (!header.startsWith("Bearer ")) null else header.substring("Bearer ".length)
        }

        private fun randomUUID(): String {
            return UUID.randomUUID().toString().replace("[^a-zA-Z0-9]".toRegex(), "")
        }
    }

    fun init(application: Application) {
        application.apply {
            modelServerModule()
        }
    }

    private fun Application.modelServerModule() {

        install(Routing)
        installAuthentication()
        install(ForwardedHeaders)

        routing {
            get("/") {
                call.respondText("Model Server")
            }
            get("/health") {
                if (isHealthy()) {
                    call.respondText(text = "healthy", contentType = ContentType.Text.Plain, status = HttpStatusCode.OK)
                } else {
                    call.respondText(text = "not healthy", contentType = ContentType.Text.Plain, status = HttpStatusCode.InternalServerError)
                }
            }
            get("/headers") {
                val headers = call.request.headers.entries().flatMap { e -> e.value.map { e.key to it } }
                call.respondText(headers.joinToString("\n") { "${it.first}: ${it.second}" })
            }
            requiresPermission(PERMISSION_MODEL_SERVER, EPermissionType.READ) {
                get("/get/{key}") {
                    checkAuthorization()

                    val key = call.parameters["key"]!!
                    checkKeyPermission(key)
                    val value = storeClient[key]
                    respondValue(key, value)
                }

                get("/poll/{key}") {
                    checkAuthorization()
                    val params = call.receiveParameters()
                    val key = call.parameters["key"]!!
                    val lastKnownValue = params["lastKnownValue"]
                    checkKeyPermission(key)
                    val valueFromListener = arrayOfNulls<String>(1)
                    val lock = Object()
                    val listener = object : IKeyListener {
                        override fun changed(key: String?, newValue: String?) {
                            synchronized(lock) {
                                valueFromListener[0] = newValue
                                lock.notifyAll()
                            }
                        }
                    }
                    try {
                        storeClient.listen(key, listener)
                        if (lastKnownValue != null) {
                            // This could be done before registering the listener, but
                            // then we have to check it twice,
                            // because the value could change between the first read and
                            // registering the listener.
                            // Most of the time the value will be equal to the last
                            // known value.
                            // Registering the listener without needing it is less
                            // likely to happen.
                            val value = storeClient[key]
                            valueFromListener[0] = value
                            if (value != lastKnownValue) {
                                respondValue(key, value)
                                return@get
                            }
                        }
                        try {
                            synchronized(lock) {
                                // Long polling. The request returns when the value
                                // changes.
                                // Then the client will do a new request.
                                lock.wait(25000L)
                            }
                        } catch (e: InterruptedException) {
                            throw RuntimeException(e)
                        }
                    } finally {
                        storeClient.removeListener(key, listener)
                    }
                    respondValue(key, valueFromListener[0])
                }

                get("/generateToken") {
                    var email = call.request.header("X-Forwarded-Email")
                    if ((email == null || email.isEmpty()) && isTrustedAddress()) {
                        email = "localhost"
                    }
                    if (email == null || email.isEmpty()) {
                        call.respondText(text = "Not logged in.", status = HttpStatusCode.Unauthorized)
                        return@get
                    }
                    val token = randomUUID()
                    storeClient.put(PROTECTED_PREFIX + "_token_email_" + token, email)
                    storeClient.put(
                        PROTECTED_PREFIX + "_token_expires_" + token,
                        (System.currentTimeMillis() + 7 * 24 * 60 * 60 * 1000).toString()
                    )
                    call.respondText(text = token)
                }

                get("/getEmail") {
                    checkAuthorization()
                    val token = extractToken(call)
                    if (token == null) {
                        call.respond(status = HttpStatusCode.NoContent, "Token missing")
                        return@get
                    }
                    val email = storeClient[PROTECTED_PREFIX + "_token_email_" + token]
                    // The email could be null because we can authorize also without a valid token
                    call.respondText(email ?: "<no email>")
                }

                post("/counter/{key}") {
                    checkAuthorization()
                    val key = call.parameters["key"]!!
                    checkKeyPermission(key)
                    val value = storeClient.generateId(key)
                    call.respondText(text = value.toString())
                }

                get("/getRecursively/{key}") {
                    checkAuthorization()
                    val key = call.parameters["key"]!!
                    call.respondText(collect(key).toString(2), contentType = ContentType.Application.Json)
                }

                put("/put/{key}") {
                    checkAuthorization()
                    val key = call.parameters["key"]!!
                    val value = call.receiveText()
                    try {
                        putEntries(mapOf(key to value))
                        call.respondText("OK")
                    } catch (e: NotFoundException) {
                        call.respondText(e.message ?: "Not found", status = HttpStatusCode.NotFound)
                    }
                }

                put("/putAll") {
                    checkAuthorization()
                    val jsonStr = call.receiveText()
                    val json = JSONArray(jsonStr)
                    var entries: MutableMap<String, String?> = LinkedHashMap()
                    for (entry_ in json) {
                        val entry = entry_ as JSONObject
                        val key = entry.getString("key")
                        val value = entry.optString("value", null)
                        entries[key] = value
                    }
                    entries = sortByDependency(entries)
                    try {
                        putEntries(entries)
                        call.respondText(entries.size.toString() + " entries written")
                    } catch (e: NotFoundException) {
                        call.respondText(e.message ?: "Not found", status = HttpStatusCode.NotFound)
                    }
                }

                get("/getAll") {
                    checkAuthorization()
                    val reqJsonStr = call.receiveText()
                    val reqJson = JSONArray(reqJsonStr)
                    val respJson = JSONArray()
                    val keys: MutableList<String> = ArrayList(reqJson.length())
                    for (entry_ in reqJson) {
                        val key = entry_ as String
                        checkKeyPermission(key)
                        keys.add(key)
                    }
                    val values = storeClient.getAll(keys)
                    for (i in keys.indices) {
                        val respEntry = JSONObject()
                        respEntry.put("key", keys[i])
                        respEntry.put("value", values[i])
                        respJson.put(respEntry)
                    }
                    call.respondText(respJson.toString(), contentType = ContentType.Application.Json)
                }
            }
            requiresPermission(PERMISSION_MODEL_SERVER, EPermissionType.WRITE) {

            }
        }

        install(CORS) {
            anyHost()
            allowHeader(HttpHeaders.ContentType)
            allowMethod(HttpMethod.Options)
            allowMethod(HttpMethod.Get)
            allowMethod(HttpMethod.Put)
            allowMethod(HttpMethod.Post)
        }
    }

    private var sharedSecret: String? = null
    fun setSharedSecret(sharedSecret: String?) {
        this.sharedSecret = sharedSecret
    }

    private fun sortByDependency(unsorted: Map<String, String?>): MutableMap<String, String?> {
        val sorted: MutableMap<String, String?> = LinkedHashMap()
        val processed: MutableSet<String> = HashSet()
        object : Any() {
            fun fill(key: String) {
                if (processed.contains(key)) return
                processed.add(key)
                val value = unsorted[key]
                for (referencedKey in extractHashes(value)) {
                    if (unsorted.containsKey(referencedKey)) fill(referencedKey)
                }
                sorted[key] = value
            }

            fun fill() {
                for (key in unsorted.keys) {
                    fill(key)
                }
            }
        }.fill()
        return sorted
    }

    fun collect(rootKey: String): JSONArray {
        val result = JSONArray()
        val processed: MutableSet<String> = HashSet()
        val pending: MutableSet<String> = HashSet()
        pending.add(rootKey)
        while (!pending.isEmpty()) {
            val keys: List<String> = ArrayList(pending)
            pending.clear()
            val values = storeClient.getAll(keys)
            for (i in keys.indices) {
                val key = keys[i]
                val value = values[i]
                processed.add(key)
                val entry = JSONObject()
                entry.put("key", key)
                entry.put("value", value)
                result.put(entry)
                for (foundKey in extractHashes(value)) {
                    if (!processed.contains(foundKey)) {
                        pending.add(foundKey)
                    }
                }
            }
        }
        return result
    }

    private fun extractHashes(input: String?): List<String> {
        val result: MutableList<String> = ArrayList()
        if (input != null) {
            val matcher = HASH_PATTERN.matcher(input)
            while (matcher.find()) {
                result.add(matcher.group())
            }
        }
        return result
    }

    protected fun putEntries(newEntries: Map<String, String?>) {
        val referencedKeys: MutableSet<String> = HashSet()
        for ((key, value) in newEntries) {
            if (REPOSITORY_ID_KEY == key) {
                throw NoPermissionException("Changing '$key' is not allowed")
            }
            checkKeyPermission(key)
            if (value != null) {
                val matcher = HASH_PATTERN.matcher(value)
                while (matcher.find()) {
                    val foundKey = matcher.group()
                    if (!newEntries.containsKey(foundKey)) {
                        referencedKeys.add(foundKey)
                    }
                }
            }
        }
        val referencedEntries = storeClient.getAll(referencedKeys)
        for (key in referencedKeys) {
            if (referencedEntries[key] == null) {
                throw NotFoundException("Referenced key $key not found")
            }
        }
        storeClient.putAll(newEntries)
    }

    private fun PipelineContext<Unit, ApplicationCall>.isTrustedAddress(): Boolean {
        return isTrustedAddress(call.request.origin.remoteHost)
    }

    private suspend fun PipelineContext<Unit, ApplicationCall>.respondValue(key: String, value: String?) {
        if (value == null) {
            call.respondText("key '$key' not found", status = HttpStatusCode.NotFound)
        } else {
            call.respondText(text = value, contentType = ContentType.Text.Plain)
        }
    }

    @Throws(IOException::class)
    private fun PipelineContext<Unit, ApplicationCall>.checkAuthorization() {
        if (!isValidAuthorization()) {
            throw NoPermissionException("Not authorized.")
        }
    }

    @Throws(IOException::class)
    private fun checkKeyPermission(key: String) {
        if (key.startsWith(PROTECTED_PREFIX)) {
            throw NoPermissionException("Access to keys starting with '$PROTECTED_PREFIX' is only permitted to the model server itself.")
        }
    }

    private fun PipelineContext<Unit, ApplicationCall>.isValidAuthorization(): Boolean {
        if (isTrustedAddress(call.request.origin.remoteHost)) return true
        val header = call.request.headers.get("Authorization") ?: return false
        if (!header.startsWith("Bearer ")) return false
        val token = extractToken(call) ?: return false

        // Used by MPS instances running in the same kubernetes cluster
        if (sharedSecret != null && sharedSecret!!.length > 0 && token == sharedSecret) {
            return true
        }
        val expiresStr = storeClient[PROTECTED_PREFIX + "_token_expires_" + token] ?: return false
        return System.currentTimeMillis() <= expiresStr.toLong()
    }

    fun isHealthy(): Boolean {
        val value = toLong(storeClient[HEALTH_KEY]) + 1
        storeClient.put(HEALTH_KEY, java.lang.Long.toString(value))
        return toLong(storeClient[HEALTH_KEY]) >= value
    }
}
