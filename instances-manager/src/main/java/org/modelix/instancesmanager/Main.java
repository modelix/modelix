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
package org.modelix.instancesmanager;

import io.kubernetes.client.openapi.ApiException;
import org.apache.log4j.Logger;
import org.eclipse.jetty.proxy.ProxyServlet;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.DefaultHandler;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.WebSocketServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) {
        try {
            startServer();
        } catch (ApiException ex) {
            LOG.error("", ex);
            LOG.error("code: " + ex.getCode());
            LOG.error("body: " + ex.getResponseBody());
        } catch (Exception ex) {
            LOG.error("", ex);
        }
    }

    private static void startServer() throws Exception {
        Server server = new Server(33332);
        HandlerList handlerList = new HandlerList();
        server.setHandler(handlerList);

        DeploymentManagingHandler deploymentManagingHandler = new DeploymentManagingHandler();
        handlerList.addHandler(deploymentManagingHandler);

        ProxyServletWithWebsocketSupport proxyServlet = new ProxyServletWithWebsocketSupport() {
            @Override
            protected void dataTransferred(Session clientSession, Session proxySession) {
                String deploymentName = proxySession.getUpgradeRequest().getHost();
                DeploymentTimeouts.INSTANCE.update(deploymentName);
            }

            @Override
            protected URI redirect(ServletUpgradeRequest request) {
                RedirectedURL redirectedURL = RedirectedURL.redirect(null, request.getHttpServletRequest());
                if (redirectedURL == null) return null;
                try {
                    return new URI(redirectedURL.getRedirectedUrl(true));
                } catch (URISyntaxException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override
            protected String rewriteTarget(HttpServletRequest clientRequest) {
                RedirectedURL redirectedURL = RedirectedURL.redirect(null, clientRequest);
                if (redirectedURL == null) return null;
                return redirectedURL.getRedirectedUrl(false);
            }
        };
        HandlerWrapper proxyHandlerCondition = new HandlerWrapper() {
            @Override
            public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
                RedirectedURL redirect = RedirectedURL.redirect(baseRequest, request);
                if (redirect == null) return;
                if (redirect.personalDeploymentName == null) {
                    baseRequest.setHandled(true);
                    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                    response.setContentType("text/plain");
                    response.getWriter().write("Cookie with deployment ID missing. Refresh this page to send a new valid request.");
                    return;
                }
//                if (!baseRequest.getRequestURI().contains("/ws/")) return;
                super.handle(target, baseRequest, request, response);
            }
        };
        ServletContextHandler proxyHandler = new ServletContextHandler();
        proxyHandler.addServlet(new ServletHolder(proxyServlet), "/*");
        proxyHandlerCondition.setHandler(proxyHandler);
        handlerList.addHandler(proxyHandlerCondition);


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

        handlerList.addHandler(new DefaultHandler());
        server.start();

        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                try {
                    server.stop();
                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                    ex.printStackTrace();
                }
            }
        });
    }
}
