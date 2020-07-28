package org.modelix.model.lazy;

import org.modelix.model.persistent.CPVersion;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.modelix.model.operations.IOperation;
import org.modelix.model.persistent.CPOperationsList;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.internal.collections.runtime.Sequence;

public class CLVersion {
  public static CLVersion loadFromHash(String hash, IDeserializingKeyValueStore store) {
    CPVersion data = store.get(hash, new _FunctionTypes._return_P1_E0<CPVersion, String>() {
      public CPVersion invoke(String s) {
        return CPVersion.deserialize(s);
      }
    });
    return (data == null ? null : new CLVersion(data, store));
  }

  private IDeserializingKeyValueStore store;
  private CPVersion data;

  public CLVersion(long id, String time, String author, String treeHash, String previousVersion, IOperation[] operations, IDeserializingKeyValueStore store) {
    this.store = store;
    if (operations.length <= 10) {
      this.data = new CPVersion(id, time, author, treeHash, previousVersion, operations, null, operations.length);
    } else {
      CPOperationsList opsList = new CPOperationsList(operations);
      IDeserializingKeyValueStore_extensions.put(store, opsList, opsList.serialize());
      this.data = new CPVersion(id, time, author, treeHash, previousVersion, null, opsList.getHash(), operations.length);
    }
    IDeserializingKeyValueStore_extensions.put(store, data, data.serialize());
  }

  public CLVersion(String hash, IDeserializingKeyValueStore store) {
    this(store.get(hash, new _FunctionTypes._return_P1_E0<CPVersion, String>() {
      public CPVersion invoke(String s) {
        return CPVersion.deserialize(s);
      }
    }), store);
  }

  public CLVersion(@NotNull CPVersion data, IDeserializingKeyValueStore store) {
    if (data == null) {
      throw new NullPointerException("data is null");
    }
    this.data = data;
    this.store = store;
  }

  public String getAuthor() {
    return data.author;
  }

  public long getId() {
    return data.id;
  }

  public String getTime() {
    return data.time;
  }

  public String getHash() {
    return data.getHash();
  }

  public String getPreviousHash() {
    return data.previousVersion;
  }

  public String getTreeHash() {
    return data.treeHash;
  }

  public CLTree getTree() {
    return new CLTree(getTreeHash(), store);
  }

  public CPVersion getData() {
    return data;
  }

  public CLVersion getPreviousVersion() {
    if (data.previousVersion == null) {
      return null;
    }
    CPVersion previousVersion = store.get(data.previousVersion, new _FunctionTypes._return_P1_E0<CPVersion, String>() {
      public CPVersion invoke(String s) {
        return CPVersion.deserialize(s);
      }
    });
    if (previousVersion == null) {
      return null;
    }
    return new CLVersion(previousVersion, store);
  }

  public Iterable<IOperation> getOperations() {
    return (data.operationsHash == null ? Sequence.fromArray(data.operations) : Sequence.fromArray(store.get(data.operationsHash, new _FunctionTypes._return_P1_E0<CPOperationsList, String>() {
      public CPOperationsList invoke(String serialized) {
        return CPOperationsList.deserialize(serialized);
      }
    }).operations));
  }

  public int getNumberOfOperations() {
    return data.numberOfOperations;
  }

  public boolean operationsInlined() {
    return data.operations != null;
  }
}
