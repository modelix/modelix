package org.modelix.model.lazy;

import org.modelix.model.IKeyValueStore;

public abstract class LazyValue<E> {
  private IKeyValueStore store;
  private String hash;
  private E value;

  public abstract E deserialize(String input);
  public E getValue() {
    if (hash != null) {
      value = deserialize(store.get(hash));
      hash = null;
      store = null;
    }
    return value;
  }
}
