package org.modelix.model.lazy;

import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public interface IBulkQuery {
  <I, O> Value<List<O>> map(Iterable<I> input_, Function<I, Value<O>> f);
  <T> Value<T> constant(T value);
  <T> Value<T> get(String hash, Function<String, T> deserializer);


  interface Value<T> {
    T execute();
    <R> Value<R> mapBulk(final Function<T, Value<R>> handler);
    <R> Value<R> map(Function<T, R> handler);
    void onSuccess(Consumer<T> handler);
  }
}
