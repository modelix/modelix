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

import io.kubernetes.client.openapi.ApiException
import org.apache.log4j.Logger
import org.eclipse.jetty.proxy.ProxyServlet
import org.eclipse.jetty.server.Request
import org.eclipse.jetty.server.Server
import org.eclipse.jetty.server.handler.DefaultHandler
import org.eclipse.jetty.server.handler.HandlerList
import org.eclipse.jetty.server.handler.HandlerWrapper
import org.eclipse.jetty.servlet.ServletContextHandler
import org.eclipse.jetty.servlet.ServletHolder
import org.eclipse.jetty.websocket.api.Session
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest
import java.io.IOException
import java.net.URI
import java.net.URISyntaxException
import javax.servlet.ServletException
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

object Main {
    private val LOG = Logger.getLogger(Main::class.java)
    @JvmStatic
    fun main(args: Array<String>) {
        try {
            startServer()
            io.ktor.server.netty.EngineMain.main(args)
        } catch (ex: ApiException) {
            LOG.error("", ex)
            LOG.error("code: " + ex.code)
            LOG.error("body: " + ex.responseBody)
        } catch (ex: Exception) {
            LOG.error("", ex)
        }
    }

    @Throws(Exception::class)
    private fun startServer() {
        val server = Server(33332)
        val handlerList = HandlerList()
        server.handler = handlerList
        val deploymentManagingHandler = DeploymentManagingHandler()
        handlerList.addHandler(deploymentManagingHandler)
        val proxyServlet: ProxyServletWithWebsocketSupport = object : ProxyServletWithWebsocketSupport() {
            override fun dataTransferred(clientSession: Session?, proxySession: Session?) {
                val deploymentName = proxySession!!.upgradeRequest.host
                DeploymentTimeouts.Companion.INSTANCE.update(deploymentName)
            }

            override fun redirect(request: ServletUpgradeRequest): URI? {
                val redirectedURL: RedirectedURL = DeploymentManager.Companion.INSTANCE.redirect(null, request.httpServletRequest)
                    ?: return null
                return try {
                    URI(redirectedURL.getRedirectedUrl(true))
                } catch (e: URISyntaxException) {
                    throw RuntimeException(e)
                }
            }

            override fun rewriteTarget(clientRequest: HttpServletRequest): String? {
                val redirectedURL: RedirectedURL = DeploymentManager.Companion.INSTANCE.redirect(null, clientRequest)
                    ?: return null
                return redirectedURL.getRedirectedUrl(false)
            }
        }
        val proxyHandlerCondition: HandlerWrapper = object : HandlerWrapper() {
            @Throws(IOException::class, ServletException::class)
            override fun handle(target: String, baseRequest: Request, request: HttpServletRequest, response: HttpServletResponse) {
                val redirect: RedirectedURL = DeploymentManager.Companion.INSTANCE.redirect(baseRequest, request)
                    ?: return
                if (redirect.userId == null) {
                    baseRequest.isHandled = true
                    response.status = HttpServletResponse.SC_UNAUTHORIZED
                    response.contentType = "text/plain"
                    response.writer.write("Cookie with deployment ID missing. Refresh this page to send a new valid request.")
                    return
                }
                //                if (!baseRequest.getRequestURI().contains("/ws/")) return;
                super.handle(target, baseRequest, request, response)
            }
        }
        val proxyHandler = ServletContextHandler()
        proxyHandler.addServlet(ServletHolder(proxyServlet), "/*")
        proxyHandlerCondition.handler = proxyHandler
        handlerList.addHandler(proxyHandlerCondition)


//        ProxyServlet proxyServlet = new ProxyServlet() {
//            @Override
//            protected String rewriteTarget(HttpServletRequest clientRequest) {
//                RedirectedURL redirectedURL = RedirectedURL.redirect(null, clientRequest);
//                if (redirectedURL == null) return null;
//                return redirectedURL.getRedirectedUrl(false);
//            }
//        };
//        proxyServlet.setTimeout(60_000);
//
//        ServletContextHandler proxyHandler = new ServletContextHandler();
//        proxyHandler.addServlet(new ServletHolder(proxyServlet), "/*");
//        handlerList.addHandler(proxyHandler);
        handlerList.addHandler(DefaultHandler())
        server.start()
        Runtime.getRuntime().addShutdownHook(object : Thread() {
            override fun run() {
                try {
                    server.stop()
                } catch (ex: Exception) {
                    println(ex.message)
                    ex.printStackTrace()
                }
            }
        })

        // Trigger creation of the instance so that it starts the first MPS instance
        DeploymentManager.Companion.INSTANCE.toString()
    }
}