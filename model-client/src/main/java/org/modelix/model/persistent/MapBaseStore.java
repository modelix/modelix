package org.modelix.model.persistent;

import org.modelix.model.IKeyValueStore;
import java.util.Map;
import gnu.trove.map.hash.THashMap;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.LinkedHashMap;
import org.modelix.model.IKeyListener;

public class MapBaseStore implements IKeyValueStore {

  private Map<String, String> map = new THashMap<String, String>();

  @Override
  public String get(String key) {
    return map.get(key);
  }

  @Override
  public void put(String key, String value) {
    map.put(key, value);
  }

  @Override
  public Map<String, String> getAll(Iterable<String> keys) {
    Map<String, String> result = MapSequence.fromMap(new LinkedHashMap<String, String>(16, (float) 0.75, false));
    for (String key : keys) {
      MapSequence.fromMap(result).put(key, map.get(key));
    }
    return result;
  }

  @Override
  public void putAll(Map<String, String> entries) {
    map.putAll(entries);
  }

  @Override
  public void prefetch(String key) {
  }

  public Iterable<Map.Entry<String, String>> getEntries() {
    return map.entrySet();
  }

  @Override
  public void listen(final String key, final IKeyListener listener) {
    throw new UnsupportedOperationException();
  }
  @Override
  public void removeListener(final String key, final IKeyListener listener) {
    throw new UnsupportedOperationException();
  }
}
