package org.modelix.model.client;

import org.modelix.model.IKeyValueStore;
import org.modelix.model.api.IIdGenerator;
import org.modelix.model.lazy.IDeserializingKeyValueStore;

public interface IModelClient extends IKeyValueStore {
  int getClientId();
  IIdGenerator getIdGenerator();
  IDeserializingKeyValueStore getStoreCache();
  IKeyValueStore getAsyncStore();
}
