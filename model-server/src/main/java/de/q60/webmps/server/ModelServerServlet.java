package de.q60.webmps.server;

import org.eclipse.jetty.websocket.api.RemoteEndpoint;
import org.eclipse.jetty.websocket.api.Session;
import org.eclipse.jetty.websocket.api.WebSocketAdapter;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeResponse;
import org.eclipse.jetty.websocket.servlet.WebSocketCreator;
import org.eclipse.jetty.websocket.servlet.WebSocketServlet;
import org.eclipse.jetty.websocket.servlet.WebSocketServletFactory;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

public class ModelServerServlet extends WebSocketServlet {

    private ModelServer modelServer;

    public ModelServerServlet(ModelServer modelServer) {
        this.modelServer = modelServer;
    }

    @Override
    public void configure(WebSocketServletFactory factory) {
        factory.setCreator(new WebSocketCreator() {
            @Override
            public Object createWebSocket(ServletUpgradeRequest req, ServletUpgradeResponse resp) {
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
