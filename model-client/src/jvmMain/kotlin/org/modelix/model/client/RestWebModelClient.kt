/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.client

import org.apache.commons.io.FileUtils
import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.KeyValueStoreCache
import org.modelix.model.api.IIdGenerator
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.lazy.PrefetchCache
import org.modelix.model.persistent.HashUtil
import org.modelix.model.sleep
import org.modelix.model.util.StreamUtils.toStream
import java.io.File
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.LinkedList
import java.util.concurrent.*
import java.util.concurrent.atomic.AtomicInteger
import javax.ws.rs.ProcessingException
import javax.ws.rs.client.Client
import javax.ws.rs.client.ClientBuilder
import javax.ws.rs.client.ClientRequestFilter
import javax.ws.rs.client.Entity
import javax.ws.rs.core.HttpHeaders
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response
import kotlin.collections.ArrayList
import kotlin.collections.HashMap
import kotlin.collections.LinkedHashMap

val Response.successful: Boolean
    get() = this.status in 200..299

val Response.unsuccessful: Boolean
    get() = !successful

val Response.forbidden: Boolean
    get() = status == Response.Status.FORBIDDEN.statusCode

interface ConnectionListener {
    fun receivedForbiddenResponse()
    fun receivedSuccessfulResponse()
}

/**
 * We need to specify the connection listeners right into the constructor because connection is started in the constructor.
 */
class RestWebModelClient @JvmOverloads constructor(
    var baseUrl: String? = null,
    val authTokenProvider: (()->String?)? = null,
    initialConnectionListeners: List<ConnectionListener> = emptyList()
) : IModelClient {

    companion object {
        private val LOG = LogManager.getLogger(RestWebModelClient::class.java)
        const val MODEL_URI_VAR_NAME = "MODEL_URI"
        private var defaultToken: String? = null
        val modelUrlFromEnv: String?
            get() {
                var url = System.getProperty(MODEL_URI_VAR_NAME)
                if (url.isNullOrEmpty()) {
                    url = System.getenv(MODEL_URI_VAR_NAME)
                }
                return url
            }

        val defaultUrl: String
            get() {
                val urlFromEnv = modelUrlFromEnv
                return if (urlFromEnv.isNullOrEmpty()) {
                    "http://modelix.q60.de:80/model/"
                } else {
                    urlFromEnv
                }
            }

        init {
            try {
                val sharedSecretFile = File("/secrets/modelsecret/modelsecret.txt")
                if (sharedSecretFile.exists()) {
                    defaultToken = FileUtils.readFileToString(sharedSecretFile, StandardCharsets.UTF_8)
                }
            } catch (ex: Exception) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error("Failed to load default token", ex)
                }
            }
        }
    }

    private val connectionListeners = LinkedList(initialConnectionListeners)

    override var clientId = 0
        get() {
            if (field == 0) {
                val targetUri = baseUrl + "counter/clientId"
                try {
                    val response = client.target(targetUri).request().post(Entity.text(""))
                    if (response.unsuccessful) {
                        if (response.forbidden) {
                            receivedForbiddenResponse()
                        }
                        throw RuntimeException("Unable to get the clientId by querying $targetUri")
                    } else {
                        receivedSuccessfulResponse()
                    }
                    val idStr = response.readEntity(String::class.java)
                    field = idStr.toInt()
                } catch (e: ProcessingException) {
                    throw RuntimeException("Unable to get the clientId by querying $targetUri", e)
                }
            }
            return field
        }
        private set
    private val requestExecutor: ExecutorService = Executors.newFixedThreadPool(10)
    private val pollingExecutor: ExecutorService = Executors.newCachedThreadPool()
    private val client: Client
    private val pollingClient: Client
    private val listeners: MutableList<PollingListener> = ArrayList()
    override val asyncStore: IKeyValueStore = AsyncStore(this)
    private val cache = PrefetchCache.contextIndirectCache(ObjectStoreCache(KeyValueStoreCache(asyncStore)))
    private val pendingWrites = AtomicInteger(0)

    @get:Synchronized
    override lateinit var idGenerator: IIdGenerator
        private set
    fun getAuthToken(): String? = authTokenProvider?.invoke() ?: defaultToken

    override fun toString() = "RestWebModelClient($baseUrl)"

    private fun receivedForbiddenResponse() {
        connectionListeners.forEach { it.receivedForbiddenResponse() }
    }

    private fun receivedSuccessfulResponse() {
        connectionListeners.forEach { it.receivedSuccessfulResponse() }
    }

    fun addForbiddenListener(listener: ConnectionListener) {
        connectionListeners.add(listener)
    }

    fun dispose() {
        synchronized(listeners) {
            listeners.forEach { it.dispose() }
            listeners.clear()
        }
        requestExecutor.shutdown()
        pollingExecutor.shutdown()
    }

    override fun getPendingSize(): Int = pendingWrites.get()

    override fun get(key: String): String? {
        val isHash = HashUtil.isSha256(key)
        if (isHash) {
            if (LOG.isDebugEnabled) {
                LOG.debug("GET $key")
            }
        }
        val start = System.currentTimeMillis()
        val uri = baseUrl + "get/" + URLEncoder.encode(key, StandardCharsets.UTF_8)
        try {
            val response = client.target(uri).request().buildGet().invoke()
            return when (response.status) {
                Response.Status.OK.statusCode -> {
                    receivedSuccessfulResponse()
                    val value = response.readEntity(String::class.java)
                    val end = System.currentTimeMillis()
                    if (isHash) {
                        if (LOG.isDebugEnabled) {
                            LOG.debug("GET " + key + " took " + (end - start) + " ms: " + value)
                        }
                    }
                    value
                }
                Response.Status.NOT_FOUND.statusCode -> {
                    null
                }
                else -> {
                    if (response.forbidden) {
                        receivedForbiddenResponse()
                    }
                    throw RuntimeException("Request for key '" + key + "' failed: " + response.statusInfo)
                }
            }
        } catch (e: java.lang.Exception) {
            throw RuntimeException("Unable to connect to '$uri' to get key $key", e)
        }
    }

    override fun getAll(keys: Iterable<String>): Map<String, String?> {
        if (!keys.iterator().hasNext()) {
            return HashMap()
        }

        val result: MutableMap<String, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
        var json = JSONArray()
        val batch = {
            val body = json.toString()
            val response = client.target(baseUrl + "getAll").request(MediaType.APPLICATION_JSON).put(Entity.text(body))
            if (response.status == Response.Status.OK.statusCode) {
                receivedSuccessfulResponse()
                val jsonStr = response.readEntity(String::class.java)
                val responseJson = JSONArray(jsonStr)
                for (entry_: Any in responseJson) {
                    val entry = entry_ as JSONObject
                    result[entry.getString("key")] = entry.optString("value", null)
                }
                json = JSONArray()
            } else {
                if (response.forbidden) {
                    receivedForbiddenResponse()
                }
                throw RuntimeException(
                    String.format(
                        "Request for %d keys failed (%s, ...): %s",
                        keys.spliterator().exactSizeIfKnown,
                        toStream(keys).findFirst().orElse(null),
                        response.statusInfo
                    )
                )
            }
        }

        for (key in keys) {
            json.put(key)
            if (json.length() >= 5000) batch()
        }

        if (json.length() > 0) batch()

        return result
    }

    val email: String
        get() {
            val response = client.target(baseUrl + "getEmail").request().buildGet().invoke()
            return if (response.status == Response.Status.OK.statusCode) {
                receivedSuccessfulResponse()
                response.readEntity(String::class.java)
            } else {
                if (response.forbidden) {
                    receivedForbiddenResponse()
                }
                throw RuntimeException("Request for e-mail address failed: " + response.statusInfo)
            }
        }

    override fun listen(key: String, keyListener: IKeyListener) {
        val pollingListener = PollingListener(key, keyListener)
        synchronized(listeners) {
            listeners.add(pollingListener)
            pollingListener.start()
        }
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        synchronized(listeners) {
            val toRemove = listeners.filter { it.key == key && it.keyListener === listener }
            listeners.removeAll(toRemove)
            toRemove.forEach { it.dispose() }
        }
    }

    override fun put(key: String, value: String?) {
        if (!key.matches(HashUtil.HASH_PATTERN)) {
            if (LOG.isDebugEnabled) {
                LOG.debug("PUT $key = $value")
            }
        }
        val url = baseUrl + "put/" + URLEncoder.encode(key, StandardCharsets.UTF_8)
        try {
            val response = client.target(url).request(MediaType.TEXT_PLAIN).put(Entity.text(value))
            if (response.statusInfo.family != Response.Status.Family.SUCCESSFUL) {
                if (response.forbidden) {
                    receivedForbiddenResponse()
                }
                throw RuntimeException("Failed to store entry (${response.statusInfo} ${response.status}) $key = $value. " + response.readEntity(String::class.java))
            } else {
                receivedSuccessfulResponse()
            }
        } catch (e: Exception) {
            throw RuntimeException("Failed executing a put to $url", e)
        }
    }

    fun sortEntriesByDependency(unsorted: Map<String, String?>): Map<String, String?> {
        val sorted = LinkedHashMap<String, String?>()
        object {
            fun putEntry(key: String, value: String?) {
                if (sorted.containsKey(key)) return
                for (depKey in HashUtil.extractSha256(value)) {
                    if (sorted.containsKey(depKey)) continue
                    if (unsorted.containsKey(depKey)) {
                        val depValue = unsorted[depKey]
                        putEntry(depKey, depValue)
                    }
                }
                sorted[key] = value
            }

            fun putAll() {
                for (entry in unsorted) {
                    putEntry(entry.key, entry.value)
                }
            }
        }.putAll()

        return sorted
    }

    override fun putAll(entries_: Map<String, String?>) {
        val entries = sortEntriesByDependency(entries_)
        val sendBatch = sendBatch@{ json: JSONArray, remaining: Int ->
            for (attempt in 1..3) {
                if (LOG.isDebugEnabled) {
                    LOG.debug("PUT batch of ${json.length()} entries, $remaining remaining")
                }
                val response = client.target(baseUrl + "putAll").request(MediaType.TEXT_PLAIN).put(Entity.text(json.toString()))
                if (response.forbidden) {
                    receivedForbiddenResponse()
                }
                if (response.statusInfo.family == Response.Status.Family.SUCCESSFUL) {
                    receivedSuccessfulResponse()
                    return@sendBatch
                }
                val message = String.format(
                    "Failed to store %d entries (%s) %s: %s (attempt %d)",
                    entries.size,
                    response.statusInfo,
                    entries.entries.stream().map { e: Map.Entry<String?, String?> -> e.key.toString() + " = " + e.value + ", ..." }.findFirst().orElse(""),
                    response.readEntity(String::class.java),
                    attempt
                )
                if (attempt == 3) throw RuntimeException(message) else LOG.warn(message)
                sleep(1000)
            }
        }
        if (LOG.isDebugEnabled) {
            LOG.debug("PUT " + entries.size + " entries")
        }

        var remainingEntries = entries.size
        try {
            pendingWrites.addAndGet(remainingEntries)
            var json = JSONArray()
            var approxSize = 0
            for ((key, value) in entries) {
                val jsonEntry = JSONObject()
                jsonEntry.put("key", key)
                jsonEntry.put("value", value)
                approxSize += key.length
                approxSize += value!!.length
                json.put(jsonEntry)
                if (!key.matches(HashUtil.HASH_PATTERN)) {
                    if (LOG.isDebugEnabled) {
                        LOG.debug("PUT $key = $value")
                    }
                }
                if (json.length() >= 5000 || approxSize > 10000000) {
                    sendBatch(json, remainingEntries)
                    remainingEntries -= json.length()
                    pendingWrites.addAndGet(-json.length())
                    json = JSONArray()
                    approxSize = 0
                }
            }
            if (json.length() > 0) {
                sendBatch(json, remainingEntries)
            }
        } finally {
            pendingWrites.addAndGet(-remainingEntries)
        }
    }

    override fun prefetch(key: String) {}

    override val storeCache: IDeserializingKeyValueStore
        get() = cache

    inner class PollingListener(val key: String, val keyListener: IKeyListener) {
        private var lastValue: String? = null
        private var future: Future<*>? = null
        fun dispose() {
            future?.cancel(true)
        }
        fun start() {
            future = pollingExecutor.submit {
                while (future?.isCancelled != true) {
                    try {
                        run()
                    } catch (e: InterruptedException) {
                        return@submit
                    } catch (e: Exception) {
                        LOG.error("Polling for '$key' failed", e)
                        sleep(5000)
                    }
                }
            }
        }
        private fun run() {
            var url = baseUrl + "poll/" + URLEncoder.encode(key, StandardCharsets.UTF_8)
            if (lastValue != null) {
                url += "?lastKnownValue=" + URLEncoder.encode(lastValue, StandardCharsets.UTF_8)
            }

            val response = client.target(url).request().buildGet().invoke()
            val value = when (response.status) {
                Response.Status.OK.statusCode -> {
                    receivedSuccessfulResponse()
                    response.readEntity(String::class.java)
                }
                Response.Status.NOT_FOUND.statusCode -> null
                else -> {
                    if (response.forbidden) {
                        receivedForbiddenResponse()
                    }
                    throw RuntimeException("Request for key '" + key + "' failed: " + response.statusInfo)
                }
            }

            if (value != lastValue) {
                lastValue = value
                keyListener.changed(key, value)
            }
        }
    }

    init {
        if (baseUrl.isNullOrEmpty()) {
            baseUrl = defaultUrl
        }
        if (!(baseUrl!!.endsWith("/"))) {
            baseUrl += "/"
        }
        // a read timeout could be an issue for the usage of SSE but a connect timeout
        // is useful to recognize when the server is down
        client = ClientBuilder.newBuilder()
            .connectTimeout(1000, TimeUnit.MILLISECONDS)
            .executorService(requestExecutor)
            // .readTimeout(1000, TimeUnit.MILLISECONDS)
            .register(ClientRequestFilter { ctx ->
                val token = getAuthToken()
                if (token != null) ctx.headers.add(HttpHeaders.AUTHORIZATION, "Bearer $token")
            }).build()
        pollingClient = ClientBuilder.newBuilder()
            .connectTimeout(1000, TimeUnit.MILLISECONDS)
            .executorService(pollingExecutor)
            .register(ClientRequestFilter { ctx ->
                val token = getAuthToken()
                if (token != null) ctx.headers.add(HttpHeaders.AUTHORIZATION, "Bearer $token")
            }).build()
        idGenerator = IdGenerator(clientId)
    }
}
