package org.modelix.model.lazy;

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

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
      E deserialized = store.get(hash, new _FunctionTypes._return_P1_E0<E, String>() {
        public E invoke(String serialized) {
          return deserialize(serialized);
        }
      });
      init(deserialized);
    } finally {
      store = null;
      hash = null;
    }
  }

  protected abstract void init(E data);
  public abstract E deserialize(String serialized);
}
