package org.modelix.model.lazy;

import org.modelix.model.IKeyValueStore;

import java.util.function.BiFunction;
import java.util.function.Function;

public interface IDeserializingKeyValueStore {
  IKeyValueStore getKeyValueStore();
  <T> T get(String hash, Function<String, T> deserializer);
  <T> Iterable<T> getAll(Iterable<String> hash, BiFunction<String, String, T> deserializer);
  void put(String hash, Object deserialized, String serialized);
  void prefetch(String hash);
}
