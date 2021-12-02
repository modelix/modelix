/*
 * Copyright 2003-2021 JetBrains s.r.o.
 *
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

import org.apache.log4j.Logger;
import org.eclipse.jetty.proxy.ProxyServlet;
import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.api.WebSocketBehavior;
import org.eclipse.jetty.websocket.api.WebSocketListener;
import org.eclipse.jetty.websocket.api.WebSocketPolicy;
import org.eclipse.jetty.websocket.client.ClientUpgradeRequest;
import org.eclipse.jetty.websocket.client.WebSocketClient;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeResponse;
import org.eclipse.jetty.websocket.servlet.WebSocketCreator;
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;
import java.nio.ByteBuffer;

public abstract class ProxyServletWithWebsocketSupport extends ProxyServlet {


    // --------------------------- copied from org.eclipse.jetty.websocket.servlet.WebSocketServlet --------------------

    private WebSocketServletFactory factory;

    @Override
    public void destroy() {
        try {
            factory.stop();
        } catch (Exception ignore) {
            // ignore;
        }
    }

    /**
     * @see javax.servlet.GenericServlet#init()
     */
    @Override
    public void init() throws ServletException {
        super.init();
        try {
            WebSocketPolicy policy = new WebSocketPolicy(WebSocketBehavior.SERVER);

            String max = getInitParameter("maxIdleTime");
            if (max != null) {
                policy.setIdleTimeout(Long.parseLong(max));
            }

            max = getInitParameter("maxTextMessageSize");
            if (max != null) {
                policy.setMaxTextMessageSize(Integer.parseInt(max));
            }

            max = getInitParameter("maxBinaryMessageSize");
            if (max != null) {
                policy.setMaxBinaryMessageSize(Integer.parseInt(max));
            }

            max = getInitParameter("inputBufferSize");
            if (max != null) {
                policy.setInputBufferSize(Integer.parseInt(max));
            }

            ServletContext ctx = getServletContext();
            factory = WebSocketServletFactory.Loader.load(ctx, policy);

            configure(factory);

            factory.start();

            ctx.setAttribute(WebSocketServletFactory.class.getName(), factory);
        } catch (Exception x) {
            throw new ServletException(x);
        }
    }

    /**
     * @see javax.servlet.http.HttpServlet#service(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (factory.isUpgradeRequest(request, response)) {
            // We have an upgrade request
            if (factory.acceptWebSocket(request, response)) {
                // We have a socket instance created
                return;
            }
            // If we reach this point, it means we had an incoming request to upgrade
            // but it was either not a proper websocket upgrade, or it was possibly rejected
            // due to incoming request constraints (controlled by WebSocketCreator)
            if (response.isCommitted()) {
                // not much we can do at this point.
                return;
            }
        }

        // All other processing
        super.service(request, response);
    }


    // --------------------------- copied from org.modelix.instancesmanager.WebSocketProxyServlet ----------------------


    private static final Logger LOG = Logger.getLogger(WebSocketProxyServlet.class);

    protected abstract URI redirect(ServletUpgradeRequest request);

    public void configure(WebSocketServletFactory factory) {
        factory.getPolicy().setMaxTextMessageSize(50 * 1024 * 1024);
        factory.getPolicy().setMaxBinaryMessageSize(50 * 1024 * 1024);
        factory.setCreator(new WebSocketCreator() {
            @Override
            public Object createWebSocket(ServletUpgradeRequest req, ServletUpgradeResponse resp) {
                URI redirectURL = redirect(req);
                if (redirectURL == null) return null;
                return new WebSocketListener() {
                    private WebSocketClient client = new WebSocketClient();
                    private Session sessionA;
                    private Session sessionB;

                    @Override
                    public void onWebSocketConnect(final Session session) {
                        sessionA = session;
                        try {
                            client.start();
                            client.getPolicy().setMaxTextMessageSize(50 * 1024 * 1024);
                            client.getPolicy().setMaxBinaryMessageSize(50 * 1024 * 1024);
                            URI redirectURL = redirect(req);
                            client.connect(new WebSocketListener() {
                                @Override
                                public void onWebSocketBinary(byte[] payload, int offset, int len) {
                                    try {
                                        sessionA.getRemote().sendBytes(ByteBuffer.wrap(payload, offset, len));
                                    } catch (IOException e) {
                                        throw new RuntimeException(e);
                                    }
                                }

                                @Override
                                public void onWebSocketText(String message) {
                                    try {
                                        sessionA.getRemote().sendString(message);
                                    } catch (IOException e) {
                                        throw new RuntimeException(e);
                                    }
                                }

                                @Override
                                public void onWebSocketClose(int statusCode, String reason) {
                                    sessionA.close(statusCode, reason);
                                }

                                @Override
                                public void onWebSocketConnect(Session session) {
                                    sessionB = session;
                                }

                                @Override
                                public void onWebSocketError(Throwable cause) {
                                    LOG.error("", cause);
                                }
                            }, redirectURL, new ClientUpgradeRequest()).get();
                        } catch (Exception e) {
                            throw new RuntimeException(e);
                        }
                    }

                    @Override
                    public void onWebSocketText(String message) {
                        try {
                            sessionB.getRemote().sendString(message);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }

                    @Override
                    public void onWebSocketBinary(byte[] payload, int offset, int len) {
                        try {
                            sessionB.getRemote().sendBytes(ByteBuffer.wrap(payload, offset, len));
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }

                    @Override
                    public void onWebSocketClose(int statusCode, String reason) {
                        sessionB.close(statusCode, reason);
                        try {
                            client.stop();
                        } catch (Exception e) {
                            LOG.error("", e);
                        }
                    }

                    @Override
                    public void onWebSocketError(Throwable cause) {
                        LOG.error("", cause);
                    }
                };
            }
        });
    }

}
