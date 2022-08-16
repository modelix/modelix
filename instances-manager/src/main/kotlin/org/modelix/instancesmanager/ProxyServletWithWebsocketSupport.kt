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

import org.apache.log4j.Logger
import org.eclipse.jetty.client.HttpClient
import org.eclipse.jetty.proxy.ProxyServlet
import org.eclipse.jetty.websocket.api.Session
import org.eclipse.jetty.websocket.api.WebSocketBehavior
import org.eclipse.jetty.websocket.api.WebSocketListener
import org.eclipse.jetty.websocket.api.WebSocketPolicy
import org.eclipse.jetty.websocket.client.ClientUpgradeRequest
import org.eclipse.jetty.websocket.client.WebSocketClient
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest
import org.eclipse.jetty.websocket.servlet.WebSocketCreator
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory
import java.io.IOException
import java.net.URI
import java.nio.ByteBuffer
import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

abstract class ProxyServletWithWebsocketSupport : ProxyServlet() {
    protected open fun dataTransferred(clientSession: Session?, proxySession: Session?) {}

    // --------------------------- copied from org.eclipse.jetty.websocket.servlet.WebSocketServlet --------------------
    private var factory: WebSocketServletFactory? = null
    override fun destroy() {
        try {
            factory!!.stop()
        } catch (ignore: Exception) {
            // ignore;
        }
    }

    /**
     * @see javax.servlet.GenericServlet.init
     */
    @Throws(ServletException::class)
    override fun init() {
        super.init()
        try {
            val policy = WebSocketPolicy(WebSocketBehavior.SERVER)
            var max = getInitParameter("maxIdleTime")
            if (max != null) {
                policy.idleTimeout = max.toLong()
            }
            max = getInitParameter("maxTextMessageSize")
            if (max != null) {
                policy.maxTextMessageSize = max.toInt()
            }
            max = getInitParameter("maxBinaryMessageSize")
            if (max != null) {
                policy.maxBinaryMessageSize = max.toInt()
            }
            max = getInitParameter("inputBufferSize")
            if (max != null) {
                policy.inputBufferSize = max.toInt()
            }
            val ctx = servletContext
            factory = WebSocketServletFactory.Loader.load(ctx, policy)
            configure(factory)
            factory!!.start()
            ctx.setAttribute(WebSocketServletFactory::class.java.name, factory)
        } catch (x: Exception) {
            throw ServletException(x)
        }
    }

    /**
     * @see javax.servlet.http.HttpServlet.service
     */
    @Throws(ServletException::class, IOException::class)
    override fun service(request: HttpServletRequest, response: HttpServletResponse) {
        if (factory!!.isUpgradeRequest(request, response)) {
            // We have an upgrade request
            if (factory!!.acceptWebSocket(request, response)) {
                // We have a socket instance created
                return
            }
            // If we reach this point, it means we had an incoming request to upgrade
            // but it was either not a proper websocket upgrade, or it was possibly rejected
            // due to incoming request constraints (controlled by WebSocketCreator)
            if (response.isCommitted) {
                // not much we can do at this point.
                return
            }
        }

        // All other processing
        super.service(request, response)
    }

    protected abstract fun redirect(request: ServletUpgradeRequest): URI?
    fun configure(factory: WebSocketServletFactory?) {
        factory!!.policy.maxTextMessageSize = 50 * 1024 * 1024
        factory.policy.maxBinaryMessageSize = 50 * 1024 * 1024
        factory.creator = WebSocketCreator { req, resp ->
            val redirectURL = redirect(req) ?: return@WebSocketCreator null
            object : WebSocketListener {
                private val client = WebSocketClient()
                private var sessionA: Session? = null
                private var sessionB: Session? = null
                override fun onWebSocketConnect(session: Session) {
                    sessionA = session
                    try {
                        client.start()
                        client.policy.maxTextMessageSize = 50 * 1024 * 1024
                        client.policy.maxBinaryMessageSize = 50 * 1024 * 1024
                        val redirectURL = redirect(req)
                        client.connect(object : WebSocketListener {
                            override fun onWebSocketBinary(payload: ByteArray, offset: Int, len: Int) {
                                try {
                                    sessionA!!.remote.sendBytes(ByteBuffer.wrap(payload, offset, len))
                                    dataTransferred(sessionA, sessionB)
                                } catch (e: IOException) {
                                    throw RuntimeException(e)
                                }
                            }

                            override fun onWebSocketText(message: String) {
                                try {
                                    sessionA!!.remote.sendString(message)
                                    dataTransferred(sessionA, sessionB)
                                } catch (e: IOException) {
                                    throw RuntimeException(e)
                                }
                            }

                            override fun onWebSocketClose(statusCode: Int, reason: String) {
                                sessionA!!.close(statusCode, reason)
                            }

                            override fun onWebSocketConnect(session: Session) {
                                sessionB = session
                            }

                            override fun onWebSocketError(cause: Throwable) {
                                LOG.error("", cause)
                            }
                        }, redirectURL, ClientUpgradeRequest()).get()
                    } catch (e: Exception) {
                        throw RuntimeException(e)
                    }
                }

                override fun onWebSocketText(message: String) {
                    try {
                        sessionB!!.remote.sendString(message)
                    } catch (e: IOException) {
                        throw RuntimeException(e)
                    }
                }

                override fun onWebSocketBinary(payload: ByteArray, offset: Int, len: Int) {
                    try {
                        sessionB!!.remote.sendBytes(ByteBuffer.wrap(payload, offset, len))
                    } catch (e: IOException) {
                        throw RuntimeException(e)
                    }
                }

                override fun onWebSocketClose(statusCode: Int, reason: String) {
                    sessionB!!.close(statusCode, reason)
                    try {
                        client.stop()
                    } catch (e: Exception) {
                        LOG.error("", e)
                    }
                }

                override fun onWebSocketError(cause: Throwable) {
                    LOG.error("", cause)
                }
            }
        }
    }

    override fun createHttpClient(): HttpClient {
        return super.createHttpClient().apply {
            // JWT tokens are big
            requestBufferSize = 32 * 1024
            responseBufferSize = 32 * 1024
        }
    }

    companion object {
        // --------------------------- copied from org.modelix.instancesmanager.WebSocketProxyServlet ----------------------
        private val LOG = Logger.getLogger(WebSocketProxyServlet::class.java)
    }
}