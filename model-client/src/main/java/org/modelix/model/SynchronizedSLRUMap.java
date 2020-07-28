package org.modelix.model;



import com.intellij.util.containers.SLRUMap;

public class SynchronizedSLRUMap<K, V> {
  private static final Object NULL = new Object();

  private final SLRUMap<K, Object> map;
  private final boolean allowNullValues;

  public SynchronizedSLRUMap(int protectedQueueSize, int probationalQueueSize) {
    this(protectedQueueSize, probationalQueueSize, false);
  }

  public SynchronizedSLRUMap(int protectedQueueSize, int probationalQueueSize, boolean allowNullValues) {
    this.allowNullValues = allowNullValues;
    map = new SLRUMap<K, Object>(protectedQueueSize, probationalQueueSize);
  }

  public synchronized V get(K key) {
    Object value = map.get(key);
    if (allowNullValues) {
      return (value == NULL ? null : ((V) value));
    } else {
      return (V) value;
    }
  }

  public synchronized void put(K key, V value) {
    if (allowNullValues) {
      map.put(key, (value != null ? value : NULL));
    } else {
      map.put(key, value);
    }
  }

  public synchronized void clear() {
    map.clear();
  }
}
