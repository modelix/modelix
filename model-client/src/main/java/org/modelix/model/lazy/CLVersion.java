package org.modelix.model.lazy;

import org.jetbrains.annotations.NotNull;
import org.modelix.model.operations.IOperation;
import org.modelix.model.persistent.CPOperationsList;
import org.modelix.model.persistent.CPVersion;

import java.util.Arrays;

public class CLVersion {
  public static CLVersion loadFromHash(String hash, IDeserializingKeyValueStore store) {
    CPVersion data = store.get(hash, CPVersion::deserialize);
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
    this(store.get(hash, CPVersion::deserialize), store);
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
    CPVersion previousVersion = store.get(data.previousVersion, CPVersion::deserialize);
    if (previousVersion == null) {
      return null;
    }
    return new CLVersion(previousVersion, store);
  }

  public Iterable<IOperation> getOperations() {
    IOperation[] ops = data.operationsHash == null
            ? data.operations
            : store.get(data.operationsHash, CPOperationsList::deserialize).operations;
    return Arrays.stream(ops)::iterator;
  }

  public int getNumberOfOperations() {
    return data.numberOfOperations;
  }

  public boolean operationsInlined() {
    return data.operations != null;
  }
}
