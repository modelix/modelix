package org.modelix.model.lazy;

import org.modelix.model.persistent.CPElement;
import org.modelix.model.persistent.CPHamtInternal;
import org.modelix.model.persistent.CPHamtLeaf;
import org.modelix.model.persistent.CPHamtNode;

import java.util.List;
import java.util.function.BiPredicate;

public abstract class CLHamtNode<E extends CPHamtNode> {

  public static final int BITS_PER_LEVEL = 5;
  public static final int ENTRIES_PER_LEVEL = 1 << BITS_PER_LEVEL;
  public static final int LEVEL_MASK = 0xffffffff >>> (32 - BITS_PER_LEVEL);
  public static final int MAX_BITS = 64;
  public static final int MAX_SHIFT = MAX_BITS - BITS_PER_LEVEL;

  public static CLHamtNode create(CPHamtNode data, IDeserializingKeyValueStore store) {
    if (data == null) {
      return null;
    }
    if (data instanceof CPHamtLeaf) {
      return new CLHamtLeaf((CPHamtLeaf) data, store);
    } else if (data instanceof CPHamtInternal) {
      return new CLHamtInternal((CPHamtInternal) data, store);
    } else {
      throw new RuntimeException("Unknown type: " + data.getClass().getName());
    }
  }


  protected IDeserializingKeyValueStore store;

  public CLHamtNode(IDeserializingKeyValueStore store) {
    this.store = store;
  }

  protected CLHamtNode createEmptyNode() {
    return CLHamtInternal.create(new CPHamtInternal(0, new String[0]), store);
  }

  public abstract CPHamtNode getData();

  public String get(long key) {
    final IBulkQuery bulkQuery = new NonBulkQuery(store);
    return get(key, 0, bulkQuery).execute();
  }

  public IBulkQuery.Value<List<String>> getAll(Iterable<Long> keys, final IBulkQuery bulkQuery) {
    return bulkQuery.map(keys, key -> get(key, 0, bulkQuery));
  }

  public CLHamtNode put(long key, String value) {
    return put(key, value, 0);
  }

  public CLHamtNode put(CLElement element) {
    return put(element.getId(), element.getData().getHash());
  }

  public CLHamtNode put(CPElement data) {
    return put(data.getId(), data.getHash());
  }

  public CLHamtNode remove(long key) {
    return remove(key, 0);
  }

  public CLHamtNode remove(CLElement element) {
    return remove(element.getId());
  }

  public abstract IBulkQuery.Value<String> get(long key, int shift, IBulkQuery bulkQuery);
  public abstract CLHamtNode put(long key, String value, int shift);
  public abstract CLHamtNode remove(long key, int shift);

  public abstract boolean visitEntries(BiPredicate<Long, String> visitor);
  public abstract void visitChanges(CLHamtNode oldNode, IChangeVisitor visitor);

  public interface IChangeVisitor {
    void entryAdded(long key, String value);
    void entryRemoved(long key, String value);
    void entryChanged(long key, String oldValue, String newValue);
  }

  public static int logicalToPhysicalIndex(int bitmap, int logicalIndex) {
    return Integer.bitCount(bitmap & ((1 << logicalIndex) - 1));
  }

  public static boolean isBitNotSet(int bitmap, int logicalIndex) {
    return (bitmap & (1 << logicalIndex)) == 0;
  }

}
