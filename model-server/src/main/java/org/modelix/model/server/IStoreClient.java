package org.modelix.model.server;

import java.util.List;

public interface IStoreClient {
  String get(String key);
  List<String> getAll(List<String> keys);
  void put(String key, String value);

  void listen(final String key, final IKeyListener listener);
  void removeListener(final String key, final IKeyListener listener);
  long generateId(String key);
}
