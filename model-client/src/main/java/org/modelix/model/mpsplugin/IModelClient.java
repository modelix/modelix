package org.modelix.model.mpsplugin;



import org.modelix.model.IKeyValueStore;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import org.modelix.model.lazy.IDeserializingKeyValueStore;

public interface IModelClient extends IKeyValueStore {
  int getClientId();
  IIdGenerator getIdGenerator();
  IDeserializingKeyValueStore getStoreCache();
  IKeyValueStore getAsyncStore();
}
