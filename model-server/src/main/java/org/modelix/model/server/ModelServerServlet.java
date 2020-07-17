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

package org.modelix.model.server;

import org.eclipse.jetty.websocket.api.RemoteEndpoint;
import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.api.WebSocketAdapter;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeResponse;
import org.eclipse.jetty.websocket.servlet.WebSocketCreator;
import org.eclipse.jetty.websocket.servlet.WebSocketServlet;
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory;

public class ModelServerServlet extends WebSocketServlet {

    private ModelServer modelServer;

    public ModelServerServlet(ModelServer modelServer) {
        this.modelServer = modelServer;
    }

    @Override
    public void configure(WebSocketServletFactory factory) {
        factory.setCreator(
                new WebSocketCreator() {
                    @Override
                    public Object createWebSocket(
                            ServletUpgradeRequest req, ServletUpgradeResponse resp) {
                        return new WebSocketAdapter() {
                            private RemoteEndpoint connection;

                            @Override
                            public void onWebSocketClose(int statusCode, String reason) {
                                super.onWebSocketClose(statusCode, reason);
                                modelServer.onClose(connection, statusCode, reason, true);
                            }

                            @Override
                            public void onWebSocketConnect(Session sess) {
                                super.onWebSocketConnect(sess);
                                this.connection = sess.getRemote();
                                modelServer.onOpen(sess.getRemote());
                            }

                            @Override
                            public void onWebSocketError(Throwable cause) {
                                super.onWebSocketError(cause);
                                modelServer.onError(connection, cause);
                            }

                            @Override
                            public void onWebSocketText(String message) {
                                super.onWebSocketText(message);
                                modelServer.onMessage(connection, message);
                            }
                        };
                    }
                });
    }
}
