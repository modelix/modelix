package org.modelix.model.lazy;

public abstract class LazyLoaded<E> {

  protected String hash;
  protected IDeserializingKeyValueStore store;

  public LazyLoaded(String hash, IDeserializingKeyValueStore store) {
    this.hash = hash;
    this.store = store;
  }

  protected void init() {
    if (hash == null) {
      return;
    }
    try {
      E deserialized = store.get(hash, this::deserialize);
      init(deserialized);
    } finally {
      store = null;
      hash = null;
    }
  }

  protected abstract void init(E data);
  public abstract E deserialize(String serialized);
}
