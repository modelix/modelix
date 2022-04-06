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
import org.eclipse.jetty.websocket.api.Session
import org.eclipse.jetty.websocket.api.WebSocketListener
import org.eclipse.jetty.websocket.client.ClientUpgradeRequest
import org.eclipse.jetty.websocket.client.WebSocketClient
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest
import org.eclipse.jetty.websocket.servlet.WebSocketCreator
import org.eclipse.jetty.websocket.servlet.WebSocketServlet
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory
import java.io.IOException
import java.net.URI
import java.nio.ByteBuffer

abstract class WebSocketProxyServlet : WebSocketServlet() {
    protected abstract fun redirect(request: ServletUpgradeRequest?): URI?
    override fun configure(factory: WebSocketServletFactory) {
        factory.policy.maxTextMessageSize = 20 * 1024 * 1024
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
                        client.policy.maxTextMessageSize = 20 * 1024 * 1024
                        val redirectURL = redirect(req)
                        client.connect(object : WebSocketListener {
                            override fun onWebSocketBinary(payload: ByteArray, offset: Int, len: Int) {}
                            override fun onWebSocketText(message: String) {
                                try {
                                    sessionA!!.remote.sendString(message)
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

    companion object {
        private val LOG = Logger.getLogger(WebSocketProxyServlet::class.java)
    }
}