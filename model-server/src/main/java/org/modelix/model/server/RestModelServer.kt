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
package org.modelix.model.server

import org.apache.commons.io.IOUtils
import org.eclipse.jetty.io.EofException
import org.eclipse.jetty.servlet.ServletContextHandler
import org.eclipse.jetty.servlet.ServletHolder
import org.eclipse.jetty.servlets.EventSource
import org.eclipse.jetty.servlets.EventSourceServlet
import org.json.JSONArray
import org.json.JSONObject
import org.slf4j.LoggerFactory
import java.io.IOException
import java.net.InetAddress
import java.net.UnknownHostException
import java.nio.charset.StandardCharsets
import java.util.*
import java.util.regex.Pattern
import java.util.stream.Collectors
import java.util.stream.Stream
import javax.servlet.ServletException
import javax.servlet.ServletRequest
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class RestModelServer(private val storeClient: IStoreClient) {
    private var sharedSecret: String? = null
    fun setSharedSecret(sharedSecret: String?) {
        this.sharedSecret = sharedSecret
    }

    fun init(servletHandler: ServletContextHandler) {
        if (storeClient[REPOSITORY_ID_KEY] == null) {
            storeClient.put(REPOSITORY_ID_KEY, randomUUID())
        }
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    private val HEALTH_KEY = PROTECTED_PREFIX + "health2"
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (isHealthy) {
                            resp.status = HttpServletResponse.SC_OK
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print("healthy")
                        } else {
                            resp.status = HttpServletResponse.SC_INTERNAL_SERVER_ERROR
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print("not healthy")
                        }
                    }

                    private val isHealthy: Boolean
                        private get() {
                            val value = toLong(storeClient[HEALTH_KEY]) + 1
                            storeClient.put(HEALTH_KEY, java.lang.Long.toString(value))
                            return toLong(storeClient[HEALTH_KEY]) >= value
                        }

                    private fun toLong(value: String?): Long {
                        return if (value == null || value.isEmpty()) 0 else value.toLong()
                    }
                }),
            "/health"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        resp.status = HttpServletResponse.SC_OK
                        resp.contentType = TEXT_PLAIN
                        for (headerName in Collections.list(req.headerNames)) {
                            resp.writer.print(headerName)
                            resp.writer.print(": ")
                            resp.writer.println(req.getHeader(headerName))
                        }
                    }
                }),
            "/headers"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val key = req.pathInfo.substring(1)
                        if (key.startsWith(PROTECTED_PREFIX)) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print("Protected key.")
                            return
                        }
                        val value = storeClient[key]
                        if (value == null) {
                            resp.status = HttpServletResponse.SC_NOT_FOUND
                        } else {
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print(value)
                        }
                    }
                }),
            "/get/*"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val key = req.pathInfo.substring(1)
                        val lastKnownValue = req.getParameter("lastKnownValue")
                        if (key.startsWith(PROTECTED_PREFIX)) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print("Protected key.")
                            return
                        }
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
                                    respondValue(resp, value)
                                    return
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
                        respondValue(resp, valueFromListener[0])
                    }

                    @Throws(IOException::class)
                    private fun respondValue(resp: HttpServletResponse, value: String?) {
                        if (value == null) {
                            resp.status = HttpServletResponse.SC_NOT_FOUND
                        } else {
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print(value)
                        }
                    }
                }),
            "/poll/*"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        var email = req.getHeader("X-Forwarded-Email")
                        if ((email == null || email.isEmpty()) && isTrustedAddress(req)) {
                            email = "localhost"
                        }
                        if (email == null || email.isEmpty()) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.writer.print("Not logged in.")
                            return
                        }
                        val token = randomUUID()
                        storeClient.put(PROTECTED_PREFIX + "_token_email_" + token, email)
                        storeClient.put(
                            PROTECTED_PREFIX + "_token_expires_" + token,
                            java.lang.Long.toString(
                                System.currentTimeMillis()
                                    + 7 * 24 * 60 * 60 * 1000
                            )
                        )
                        resp.contentType = TEXT_PLAIN
                        resp.writer.print(token)
                    }
                }),
            "/generateToken"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) {
                            return
                        }
                        val token = extractToken(req)
                        if (token == null) {
                            resp.status = HttpServletResponse.SC_NO_CONTENT
                            return
                        }
                        val email = storeClient[PROTECTED_PREFIX + "_token_email_" + token]
                        resp.contentType = TEXT_PLAIN
                        // The email could be null because we can authorize also without a
                        // valid token
                        resp.writer
                            .print(Objects.requireNonNullElse(email, "<no email>"))
                    }
                }),
            "/getEmail"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val key = req.pathInfo.substring(1)
                        if (key.startsWith(PROTECTED_PREFIX)) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.writer
                                .print("No permission to access protected keys.")
                            return
                        }
                        val value = storeClient.generateId(key)
                        resp.contentType = TEXT_PLAIN
                        resp.characterEncoding = StandardCharsets.UTF_8.toString()
                        resp.writer.print(java.lang.Long.toString(value))
                    }
                }),
            "/counter/*"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val key = req.pathInfo.substring(1)
                        resp.contentType = "application/json"
                        resp.writer.print(collect(key).toString(2))
                    }
                }),
            "/getRecursively/*"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doPut(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val key = req.pathInfo.substring(1)
                        val value = IOUtils.toString(
                            req.inputStream, StandardCharsets.UTF_8
                        )
                        try {
                            putEntries(Collections.singletonMap(key, value))
                            resp.status = HttpServletResponse.SC_OK
                            resp.contentType = TEXT_PLAIN
                            resp.characterEncoding = StandardCharsets.UTF_8.toString()
                            resp.writer.print("OK")
                        } catch (e: NotFoundException) {
                            resp.status = HttpServletResponse.SC_NOT_FOUND
                            resp.contentType = TEXT_PLAIN
                            resp.characterEncoding = StandardCharsets.UTF_8.toString()
                            resp.writer.print(e.message)
                        } catch (e: UnauthorizedException) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.characterEncoding = StandardCharsets.UTF_8.toString()
                            resp.writer.print(e.message)
                        }
                    }
                }),
            "/put/*"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doPut(req: HttpServletRequest, resp: HttpServletResponse) {
                        try {
                            if (!checkAuthorization(storeClient, req, resp)) return
                            val jsonStr = IOUtils.toString(
                                req.inputStream, StandardCharsets.UTF_8
                            )
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
                                resp.status = HttpServletResponse.SC_OK
                                resp.contentType = TEXT_PLAIN
                                resp.characterEncoding = StandardCharsets.UTF_8.toString()
                                resp.writer.print(entries.size.toString() + " entries written")
                            } catch (e: NotFoundException) {
                                resp.status = HttpServletResponse.SC_BAD_REQUEST
                                resp.contentType = TEXT_PLAIN
                                resp.characterEncoding = StandardCharsets.UTF_8.toString()
                                resp.writer.print(e.message)
                            } catch (e: UnauthorizedException) {
                                resp.status = HttpServletResponse.SC_FORBIDDEN
                                resp.contentType = TEXT_PLAIN
                                resp.characterEncoding = StandardCharsets.UTF_8.toString()
                                resp.writer.print(e.message)
                            }
                        } catch (ex: Exception) {
                            println(ex.message)
                            ex.printStackTrace()
                            throw ex
                        }
                    }
                }),
            "/putAll"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doPut(req: HttpServletRequest, resp: HttpServletResponse) {
                        try {
                            if (!checkAuthorization(storeClient, req, resp)) return
                            val reqJsonStr = IOUtils.toString(
                                req.inputStream, StandardCharsets.UTF_8
                            )
                            val reqJson = JSONArray(reqJsonStr)
                            val respJson = JSONArray()
                            val keys: MutableList<String> = ArrayList(reqJson.length())
                            for (entry_ in reqJson) {
                                val key = entry_ as String
                                if (key.startsWith(PROTECTED_PREFIX)) {
                                    LOG.warn("No permission to access $key")
                                    continue
                                }
                                keys.add(key)
                            }
                            val values = storeClient.getAll(keys)
                            for (i in keys.indices) {
                                val respEntry = JSONObject()
                                respEntry.put("key", keys[i])
                                respEntry.put("value", values[i])
                                respJson.put(respEntry)
                            }
                            resp.status = HttpServletResponse.SC_OK
                            resp.contentType = "application/json"
                            resp.characterEncoding = StandardCharsets.UTF_8.toString()
                            resp.writer.print(respJson.toString())
                        } catch (ex: Exception) {
                            println(ex.message)
                            ex.printStackTrace()
                            throw ex
                        }
                    }
                }),
            "/getAll"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : HttpServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        resp.contentType = TEXT_PLAIN
                        resp.writer.println("Model Server")
                    }
                }),
            "/"
        )
        servletHandler.addServlet(
            ServletHolder(
                object : EventSourceServlet() {
                    @Throws(ServletException::class, IOException::class)
                    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
                        if (!checkAuthorization(storeClient, req, resp)) return
                        val subscribedKey = req.pathInfo.substring(1)
                        if (subscribedKey.startsWith(PROTECTED_PREFIX)) {
                            resp.status = HttpServletResponse.SC_FORBIDDEN
                            resp.contentType = TEXT_PLAIN
                            resp.writer
                                .print("No permission to access $subscribedKey")
                        }
                        super.doGet(req, resp)
                    }

                    override fun newEventSource(req: HttpServletRequest): EventSource {
                        val subscribedKey = req.pathInfo.substring(1)
                        return object : EventSource {
                            private var emitter: EventSource.Emitter? = null
                            private val listener = object : IKeyListener {
                                override fun changed(changedKey: String?, value: String?) {
                                    if (emitter == null) return
                                    if (subscribedKey == changedKey) {
                                        try {
                                            emitter!!.data(value)
                                        } catch (e: EofException) {
                                            System.err.println(
                                                "The peer has probably closed the connection, therefore we are unable to notify them of changes. We will not retry"
                                            )
                                            emitter = null
                                        } catch (e: IOException) {
                                            System.err.println(
                                                "Exception: " + e.message
                                            )
                                            e.printStackTrace()
                                        }
                                    }
                                }
                            }

                            @Throws(IOException::class)
                            override fun onOpen(emitter: EventSource.Emitter) {
                                this.emitter = emitter
                                storeClient.listen(subscribedKey, listener)
                            }

                            override fun onClose() {
                                storeClient.removeListener(subscribedKey, listener)
                                emitter = null
                            }
                        }
                    }
                }),
            "/subscribe/*"
        )
    }

    private class UnauthorizedException(explanation: String) : RuntimeException("Unauthorized because $explanation")
    private class NotFoundException(description: String?) : RuntimeException(description)

    protected fun putEntries(newEntries: Map<String, String?>) {
        val referencedKeys: MutableSet<String> = HashSet()
        for ((key, value) in newEntries) {
            if (REPOSITORY_ID_KEY == key) {
                throw UnauthorizedException("Changing '$key' is not allowed")
            }
            if (key.startsWith(PROTECTED_PREFIX)) {
                throw UnauthorizedException("No permission to access $key")
            }
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

    @Throws(IOException::class)
    private fun checkAuthorization(
        store: IStoreClient, req: HttpServletRequest, resp: HttpServletResponse
    ): Boolean {
        return if (isValidAuthorization(store, req)) {
            true
        } else {
            resp.status = HttpServletResponse.SC_FORBIDDEN
            resp.contentType = TEXT_PLAIN
            resp.writer.print("Not authorized.")
            false
        }
    }

    private fun isValidAuthorization(store: IStoreClient, req: HttpServletRequest): Boolean {
        if (isTrustedAddress(req)
            && parseXForwardedFor(req.getHeader("X-Forwarded-For")).stream()
                .allMatch { addr: InetAddress -> isTrustedAddress(addr) }
        ) return true
        val header = req.getHeader("Authorization") ?: return false
        if (!header.startsWith("Bearer ")) {
            return false
        }
        val token = extractToken(req) ?: return false

        // Used by MPS instances running in the same kubernetes cluster
        if (sharedSecret != null && sharedSecret!!.length > 0 && token == sharedSecret) {
            return true
        }
        val expiresStr = store[PROTECTED_PREFIX + "_token_expires_" + token] ?: return false
        return if (System.currentTimeMillis() > expiresStr.toLong()) {
            false
        } else true
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(RestModelServer::class.java)
        val HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{5}\\*[a-zA-Z0-9\\-_]{38}")
        const val PROTECTED_PREFIX = "$$$"
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

        private fun isTrustedAddress(req: ServletRequest): Boolean {
            return try {
                val addr = InetAddress.getByName(req.remoteAddr)
                isTrustedAddress(addr)
            } catch (e: UnknownHostException) {
                LOG.error("", e)
                false
            }
        }

        private fun isTrustedAddress(addr: InetAddress): Boolean {
            return addr.isLoopbackAddress || addr.isLinkLocalAddress || addr.isSiteLocalAddress
        }

        private fun extractToken(req: HttpServletRequest): String? {
            val header = req.getHeader("Authorization") ?: return null
            return if (!header.startsWith("Bearer ")) null else header.substring("Bearer ".length)
        }

        private fun randomUUID(): String {
            return UUID.randomUUID().toString().replace("[^a-zA-Z0-9]".toRegex(), "")
        }
    }
}