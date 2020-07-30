package org.modelix.model.client;

import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.modelix.model.util.StreamUtils;
import org.modelix.model.IKeyListener;
import org.modelix.model.IKeyValueStore;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

public class AsyncStore implements IKeyValueStore {
  private static final Logger LOG = LogManager.getLogger(AsyncStore.class);
  private IKeyValueStore store;

  private final AtomicBoolean consumerActive = new AtomicBoolean();
  private final Map<String, String> pendingWrites = new LinkedHashMap<>(16, (float) 0.75, false);

  public AsyncStore(IKeyValueStore store) {
    this.store = store;
  }

  @Override
  public String get(String key) {
    synchronized (pendingWrites) {
      if (pendingWrites.containsKey(key)) {
        return pendingWrites.get(key);
      }
    }
    return store.get(key);
  }

  @Override
  public void listen(final String key, final IKeyListener listener) {
    store.listen(key, listener);
  }

  @Override
  public void removeListener(final String key, final IKeyListener listener) {
    store.removeListener(key, listener);
  }

  @Override
  public void put(final String key, final String value) {
    synchronized (pendingWrites) {
      pendingWrites.put(key, value);
    }
    processQueue();
  }

  @Override
  public Map<String, String> getAll(Iterable<String> keys_) {
    List<String> keys = StreamUtils.toStream(keys_).collect(Collectors.toList());
    Map<String, String> result = new LinkedHashMap<>(16, (float) 0.75, false);
    synchronized (pendingWrites) {
      Iterator<String> itr = keys.iterator();
      while (itr.hasNext()) {
        String key = itr.next();
        // always put even if null to have the same order in the linked hash map as in the input 
        result.put(key, pendingWrites.get(key));
        if (pendingWrites.containsKey(key)) {
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
    synchronized (pendingWrites) {
      pendingWrites.putAll(entries);
    }
    processQueue();
  }

  @Override
  public void prefetch(String key) {
    store.prefetch(key);
  }

  protected void processQueue() {
    if (consumerActive.compareAndSet(false, true)) {
      SharedExecutors.FIXED.execute(new Runnable() {
        public void run() {
          try {
            while (!pendingWrites.isEmpty()) {
              try {
                Map<String, String> entries = new LinkedHashMap<String, String>(16, (float) 0.75, false);
                synchronized (pendingWrites) {
                  entries.putAll(pendingWrites);
                }
                store.putAll(entries);
                synchronized (pendingWrites) {
                  for (var entry : entries.entrySet()) {
                    if (Objects.equals(pendingWrites.get(entry.getKey()), entry.getValue())) {
                      pendingWrites.remove(entry.getKey());
                    }
                  }
                }
              } catch (Exception ex) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                  LOG.error("", ex);
                }
                try {
                  Thread.sleep(1000);
                } catch (InterruptedException ex2) {
                  return;
                }
              }
            }
          } finally {
            consumerActive.set(false);
          }
        }
      });
    }
  }

  public void dispose() {
  }
}
