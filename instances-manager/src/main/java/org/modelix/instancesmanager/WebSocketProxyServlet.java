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

import org.apache.log4j.Logger;
import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.api.WebSocketListener;
import org.eclipse.jetty.websocket.client.ClientUpgradeRequest;
import org.eclipse.jetty.websocket.client.WebSocketClient;
import org.eclipse.jetty.websocket.servlet.*;

import java.io.IOException;
import java.net.URI;
import java.nio.ByteBuffer;

public abstract class WebSocketProxyServlet extends WebSocketServlet {

    private static final Logger LOG = Logger.getLogger(WebSocketProxyServlet.class);

    protected abstract URI redirect(ServletUpgradeRequest request);

    @Override
    public void configure(WebSocketServletFactory factory) {
        factory.getPolicy().setMaxTextMessageSize(20 * 1024 * 1024);
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
                            client.getPolicy().setMaxTextMessageSize(20 * 1024 * 1024);
                            URI redirectURL = redirect(req);
                            client.connect(new WebSocketListener() {
                                @Override
                                public void onWebSocketBinary(byte[] payload, int offset, int len) {

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
