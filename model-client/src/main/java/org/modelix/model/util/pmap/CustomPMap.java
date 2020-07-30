package org.modelix.model.util.pmap;

public interface CustomPMap<K, V> {
  CustomPMap<K, V> put(K key, V value);
  V get(K key);
  CustomPMap<K, V> remove(K key);
  Iterable<K> keys();
  Iterable<V> values();
  boolean containsKey(K key);
}
