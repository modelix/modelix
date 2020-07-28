package org.modelix.model.mpsplugin;



import org.java_websocket.WebSocket;
import org.json.JSONObject;

public interface MessageHandler {
  void handle(WebSocket conn, JSONObject message);
}
