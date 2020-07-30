package org.modelix.model;

import org.apache.commons.collections4.map.LRUMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.modelix.model.util.StreamUtils;
import org.modelix.model.persistent.HashUtil;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class KeyValueStoreCache implements IKeyValueStore {
  private static final Logger LOG = LogManager.getLogger(KeyValueStoreCache.class);

  private IKeyValueStore store;
  private Map<String, String> cache = Collections.synchronizedMap(new LRUMap<>(300000));
  private final Set<String> pendingPrefetches = new HashSet<>();
  private final List<GetRequest> activeRequests = new ArrayList<>();

  public KeyValueStoreCache(IKeyValueStore store) {
    this.store = store;
  }

  @Override
  public void prefetch(String rootKey) {
    Set<String> processedKeys = new HashSet<>();
    processedKeys.add(rootKey);
    List<String> newKeys = Arrays.asList(rootKey);
    while (!newKeys.isEmpty() && processedKeys.size() + newKeys.size() <= 100000) {
      synchronized (pendingPrefetches) {
        newKeys.remove(pendingPrefetches);
      }
      List<String> currentKeys = newKeys;
      newKeys = new ArrayList<>();
      Map<String, String> loadedEntries;
      synchronized (pendingPrefetches) {
        pendingPrefetches.addAll(currentKeys);
      }
      try {
        loadedEntries = getAll(currentKeys);
        for (var entry : loadedEntries.entrySet()) {
          processedKeys.add(entry.getKey());
          for (String childKey : HashUtil.extractSha256(entry.getValue())) {
            if (processedKeys.contains(childKey)) {
              continue;
            }
            newKeys.add(childKey);
          }
        }
      } finally {
        pendingPrefetches.removeAll(currentKeys);
      }
    }
  }

  @Override
  public String get(String key) {
    return getAll(Collections.singleton(key)).get(key);
  }

  @Override
  public Map<String, String> getAll(Iterable<String> keys_) {
    List<String> remainingKeys = StreamUtils.toStream(keys_).collect(Collectors.toList());
    Map<String, String> result = new LinkedHashMap<>(16, (float) 0.75, false);
    synchronized (cache) {
      Iterator<String> itr = remainingKeys.iterator();
      while (itr.hasNext()) {
        String key = itr.next();
        String value = cache.get(key);
        // always put even if null to have the same order in the linked hash map as in the input 
        result.put(key, value);
        if (value != null) {
          itr.remove();
        }
      }
    }

    if (!remainingKeys.isEmpty()) {
      List<GetRequest> requiredRequest = new ArrayList<>();
      GetRequest newRequest = null;
      synchronized (activeRequests) {
        for (final GetRequest r : activeRequests) {
          if (remainingKeys.stream().anyMatch(r.keys::contains)) {
            if (LOG.isDebugEnabled()) {
              Set<String> intersection = StreamUtils.intersection(remainingKeys.stream(), r.keys);
              LOG.debug("Reusing an active request: " + intersection.stream().findFirst().orElse(null) + " (" + intersection.size() + ")");
            }
            requiredRequest.add(r);
            remainingKeys.removeAll(r.keys);
          }
        }
        if (!remainingKeys.isEmpty()) {
          newRequest = new GetRequest(new HashSet<>(remainingKeys));
          requiredRequest.add(newRequest);
          activeRequests.add(newRequest);
        }
      }

      if (newRequest != null) {
        try {
          newRequest.execute();
        } finally {
          synchronized (activeRequests) {
            activeRequests.remove(newRequest);
          }
        }
      }

      for (GetRequest req : requiredRequest) {
        Map<String, String> reqResult = req.waitForResult();
        for (var entry : reqResult.entrySet()) {
          if (result.containsKey(entry.getKey())) {
            result.put(entry.getKey(), entry.getValue());
          }
        }
      }
    }

    return result;
  }

  @Override
  public void listen(final String key, final IKeyListener listener) {
    store.listen(key, listener);
  }

  @Override
  public void put(String key, String value) {
    cache.put(key, value);
    store.put(key, value);
  }

  @Override
  public void putAll(Map<String, String> entries) {
    entries.forEach((key, value) -> cache.put(key, value));
    store.putAll(entries);
  }

  @Override
  public void removeListener(final String key, final IKeyListener listener) {
    store.removeListener(key, listener);
  }

  private class GetRequest {
    private final Set<String> keys;
    private Map<String, String> result;
    private Exception exception;

    public GetRequest(Set<String> keys) {
      this.keys = keys;
    }

    public void execute() {
      try {
        Map<String, String> entriesFromStore = store.getAll(keys);
        for (var entry : entriesFromStore.entrySet()) {
          cache.put(entry.getKey(), entry.getValue());
        }
        putResult(entriesFromStore);
      } catch (Exception ex) {
        putException(ex);
      }
    }

    public synchronized void putException(Exception ex) {
      this.exception = ex;
      this.notifyAll();
    }

    public synchronized void putResult(Map<String, String> result) {
      this.result = result;
      this.notifyAll();
    }

    public synchronized Map<String, String> waitForResult() {
      while (result == null && exception == null) {
        try {
          this.wait();
        } catch (InterruptedException ex) {
          throw new RuntimeException();
        }
      }
      if (result != null) {
        return result;
      } else {
        throw new RuntimeException(exception);
      }
    }
  }
}
