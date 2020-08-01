package org.modelix.model.lazy;

import org.apache.commons.collections4.map.LRUMap;
import org.modelix.model.IKeyValueStore;
import org.modelix.model.util.StreamUtils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Collectors;

public class ObjectStoreCache implements IDeserializingKeyValueStore {
  private static final Object NULL = new Object();

  private IKeyValueStore store;
  private final Map<String, Object> cache = Collections.synchronizedMap(new LRUMap<>(100000));

  public ObjectStoreCache(IKeyValueStore store1) {
    store = store1;
  }

  @Override
  public IKeyValueStore getKeyValueStore() {
    return store;
  }

  @Override
  public <T> Iterable<T> getAll(Iterable<String> hashes_, BiFunction<String, String, T> deserializer) {
    List<String> hashes = StreamUtils.INSTANCE.toStream(hashes_).collect(Collectors.toList());
    final Map<String, T> result = new HashMap<>();
    List<String> nonCachedHashes = new ArrayList<>(hashes.size());

    for (String hash : hashes) {
      T deserialized = (T) cache.get(hash);
      if (deserialized == null) {
        nonCachedHashes.add(hash);
      } else {
        result.put(hash, (deserialized == NULL ? null : deserialized));
      }
    }

    if (!nonCachedHashes.isEmpty()) {
      for (Map.Entry<String, String> entry : store.getAll(nonCachedHashes).entrySet()) {
        String hash = entry.getKey();
        String serialized = entry.getValue();
        if (serialized == null) {
          result.put(hash, null);
        } else {
          T deserialized = deserializer.apply(hash, serialized);
          cache.put(hash, (deserialized == null ? NULL : deserialized));
          result.put(hash, deserialized);
        }
      }
    }

    return hashes.stream().map(result::get)::iterator;
  }

  public <T> T get(String hash, Function<String, T> deserializer) {
    if (hash == null) {
      return null;
    }
    T deserialized = (T) cache.get(hash);
    if (deserialized == null) {
      String serialized = store.get(hash);
      if (serialized == null) {
        return null;
      }
      deserialized = deserializer.apply(serialized);
      cache.put(hash, (deserialized == null ? NULL : deserialized));
    }
    return (deserialized == NULL ? null : deserialized);
  }

  public void put(String hash, Object deserialized, String serialized) {
    store.put(hash, serialized);
    cache.put(hash, (deserialized == null ? NULL : deserialized));
  }

  public void clearCache() {
    cache.clear();
  }

  @Override
  public void prefetch(String hash) {
    store.prefetch(hash);
  }
}
