package org.modelix.model.lazy;

import io.vavr.Tuple;
import io.vavr.Tuple3;
import org.apache.commons.lang3.mutable.MutableInt;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

/**
 * Not thread safe
 */
public class BulkQuery implements IBulkQuery {

  private IDeserializingKeyValueStore store;
  private List<Tuple3<String, Function<String, ?>, Consumer<Object>>> queue = new ArrayList<>();
  private boolean processing = false;

  public BulkQuery(IDeserializingKeyValueStore store) {
    this.store = store;
  }

  protected Map<String, Object> executeBulkQuery(Iterable<String> keys, final Map<String, Function<String, ?>> deserializers) {
    Iterable<Object> values = store.getAll(keys, (key, serialized) -> deserializers.get(key).apply(serialized));
    Map<String, Object> result = new HashMap<>();
    {
      Iterator<String> key_it = keys.iterator();
      Iterator<Object> value_it = values.iterator();
      String key_var;
      Object value_var;
      while (key_it.hasNext() && value_it.hasNext()) {
        key_var = key_it.next();
        value_var = value_it.next();
        result.put(key_var, value_var);
      }
    }
    return result;
  }

  public void query(String key, Function<String, ?> deserializer, Consumer<Object> callback) {
    queue.add(Tuple.of(key, deserializer, callback));
  }

  public <T> IBulkQuery.Value<T> get(String hash, Function<String, T> deserializer) {
    final Value<T> result = new Value<>();
    query(hash, deserializer, value -> result.success((T) value));
    return result;
  }

  public <T> IBulkQuery.Value<T> constant(T value) {
    return new Value<T>(value);
  }

  public void process() {
    if (processing) {
      throw new RuntimeException("Already processing");
    }
    processing = true;
    try {
      while (!queue.isEmpty()) {
        final List<Tuple3<String, Function<String, ?>, Consumer<Object>>> currentRequests = queue;
        queue = new ArrayList<>();

        Map<String, Function<String, ?>> deserializers = new HashMap<>();
        for (Tuple3<String, Function<String, ?>, Consumer<Object>> request : currentRequests) {
          deserializers.put(request._1(), request._2());
        }

        final Map<String, Object> entries = executeBulkQuery(
                currentRequests.stream()
                        .map(Tuple3::_1)
                        .distinct()
                        .collect(Collectors.toList()),
                deserializers);
        for (Tuple3<String, Function<String, ?>, Consumer<Object>> request : currentRequests) {
          request._3().accept(entries.get(request._1()));
        }
      }
    } finally {
      processing = false;
    }
  }

  public <I, O> IBulkQuery.Value<List<O>> map(Iterable<I> input_, Function<I, IBulkQuery.Value<O>> f) {
    List<I> input = StreamSupport.stream(input_.spliterator(), false).collect(Collectors.toList());
    if (input.isEmpty()) {
      return constant(Collections.<O>emptyList());
    }
    final Object[] output = new Object[input.size()];
    final boolean[] done = new boolean[input.size()];
    final MutableInt remaining = new MutableInt(input.size());
    final Value<List<O>> result = new Value<>();
    for (int i_ = 0; i_ < input.size(); i_++) {
      final int i = i_;
      f.apply(input.get(i)).onSuccess(new Consumer<O>() {
        public void accept(O value) {
          if (done[i]) {
            return;
          }
          output[i] = value;
          done[i] = true;
          remaining.decrement();
          if (remaining.intValue() == 0) {
            result.success(Arrays.stream(output).map(e -> (O) e).collect(Collectors.toList()));
          }
        }
      });
    }
    return result;
  }

  public class Value<T> implements IBulkQuery.Value<T> {
    private List<Consumer<T>> handlers = new ArrayList<>();
    private T value;
    private boolean done = false;

    public Value() {
    }

    public Value(T value) {
      this.value = value;
      done = true;
    }

    public synchronized void success(T value) {
      if (done) {
        throw new IllegalStateException("Value is already set");
      } else {
        this.value = value;
        this.done = true;
        for (Consumer<T> handler : handlers) {
          handler.accept(value);
        }
        handlers = null;
      }
    }

    public synchronized void onSuccess(Consumer<T> handler) {
      if (done) {
        handler.accept(value);
      } else {
        handlers.add(handler);
      }
    }

    public T execute() {
      process();
      if (!(done)) {
        throw new RuntimeException("No value received");
      }
      return value;
    }

    public <R> IBulkQuery.Value<R> map(final Function<T, R> handler) {
      final Value<R> result = new Value<>();
      onSuccess(v -> result.success(handler.apply(v)));
      return result;
    }

    public <R> IBulkQuery.Value<R> mapBulk(final Function<T, IBulkQuery.Value<R>> handler) {
      final Value<R> result = new Value<>();
      onSuccess(v -> handler.apply(v).onSuccess(result::success));
      return result;
    }
  }

}
