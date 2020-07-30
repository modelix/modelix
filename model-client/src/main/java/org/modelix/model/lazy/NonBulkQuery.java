package org.modelix.model.lazy;

import org.modelix.model.util.StreamUtils;

import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;

public class NonBulkQuery implements IBulkQuery {

  private IDeserializingKeyValueStore store;

  public NonBulkQuery(IDeserializingKeyValueStore store) {
    this.store = store;
  }

  @Override
  public <I, O> IBulkQuery.Value<List<O>> map(Iterable<I> input, final Function<I, IBulkQuery.Value<O>> f) {
    List<O> list = StreamUtils.toStream(input).map(f).map(IBulkQuery.Value::execute).collect(Collectors.toList());
    return new Value<List<O>>(list);
  }

  @Override
  public <T> IBulkQuery.Value<T> constant(T value) {
    return new Value<T>(value);
  }

  @Override
  public <T> IBulkQuery.Value<T> get(String hash, Function<String, T> deserializer) {
    return constant(store.get(hash, deserializer));
  }

  public static class Value<T> implements IBulkQuery.Value<T> {
    private final T value;
    public Value(T value) {
      this.value = value;
    }
    @Override
    public T execute() {
      return value;
    }
    @Override
    public <R> IBulkQuery.Value<R> mapBulk(final Function<T, IBulkQuery.Value<R>> handler) {
      return handler.apply(value);
    }
    @Override
    public <R> IBulkQuery.Value<R> map(Function<T, R> handler) {
      return new Value<R>(handler.apply(value));
    }
    @Override
    public void onSuccess(Consumer<T> handler) {
      handler.accept(value);
    }
  }
}
