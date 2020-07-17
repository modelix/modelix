package org.modelix.model.server;

import org.eclipse.jetty.websocket.api.RemoteEndpoint;
import org.json.JSONObject;

public interface MessageHandler {
  void handle(RemoteEndpoint conn, JSONObject message);
}
