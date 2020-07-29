package org.modelix.model.mpsplugin;

import org.modelix.StreamUtil;
import org.modelix.model.IKeyListener;
import org.modelix.model.IKeyValueStore;
import org.modelix.model.persistent.HashUtil;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class GarbageFilteringStore implements IKeyValueStore {

  private IKeyValueStore store;
  private Map<String, String> pendingEntries = new HashMap<>();

  public GarbageFilteringStore(IKeyValueStore store) {
    this.store = store;
  }

  @Override
  public String get(String key) {
    return (pendingEntries.containsKey(key) ? pendingEntries.get(key) : store.get(key));
  }

  @Override
  public void put(String key, String value) {
    putAll(Collections.singletonMap(key, value));
  }

  @Override
  public Map<String, String> getAll(Iterable<String> keys_) {
    List<String> keys = StreamUtil.toStream(keys_).collect(Collectors.toList());
    Map<String, String> result = new LinkedHashMap<>(16, (float) 0.75, false);
    synchronized (pendingEntries) {
      Iterator<String> itr = keys.iterator();
      while (itr.hasNext()) {
        String key = itr.next();
        // always put even if null to have the same order in the linked hash map as in the input 
        result.put(key, pendingEntries.get(key));
        if (pendingEntries.containsKey(key)) {
          itr.remove();
        }
      }
    }
    if (!keys.isEmpty()) {
      result.putAll(store.getAll(keys));
    }
    return result;
  }

  @Override
  public void putAll(Map<String, String> entries) {
    Map<String, String> entriesToWrite = new LinkedHashMap<String, String>(16, (float) 0.75, false);
    for (var entry : entries.entrySet()) {
      if (HashUtil.isSha256(entry.getKey())) {
        pendingEntries.put(entry.getKey(), entry.getValue());
      } else {
        collectDependencies(entry.getKey(), entry.getValue(), entriesToWrite);
      }
    }
    if (!entriesToWrite.isEmpty()) {
      var entry = entriesToWrite.entrySet().stream().findFirst();
      if (entry.isPresent()) {
        store.put(entry.get().getKey(), entry.get().getValue());
      } else {
        store.putAll(entriesToWrite);
      }
    }
  }

  protected void collectDependencies(String key, String value, Map<String, String> acc) {
    for (String depKey : HashUtil.extractSha256(value)) {
      if (pendingEntries.containsKey(depKey)) {
        String depValue = pendingEntries.remove(depKey);
        collectDependencies(depKey, depValue, acc);
      }
    }
    acc.put(key, value);
  }

  @Override
  public void prefetch(String key) {
    store.prefetch(key);
  }

  @Override
  public void listen(final String key, final IKeyListener listener) {
    store.listen(key, listener);
  }

  @Override
  public void removeListener(final String key, final IKeyListener listener) {
    store.removeListener(key, listener);
  }
}
