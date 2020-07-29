package org.modelix.model.lazy;

import org.apache.commons.lang3.mutable.MutableObject;
import org.modelix.model.persistent.CPHamtLeaf;
import org.modelix.model.persistent.CPHamtNode;
import org.modelix.model.persistent.HashUtil;

import java.util.Objects;
import java.util.function.BiPredicate;

public class CLHamtLeaf extends CLHamtNode<CPHamtLeaf> {

  public static CLHamtLeaf create(long key, String value, IDeserializingKeyValueStore store) {
    return (value == null ? null : new CLHamtLeaf(key, value, store));
  }

  private final CPHamtLeaf data;

  public CLHamtLeaf(CPHamtLeaf data, IDeserializingKeyValueStore store) {
    super(store);
    this.data = data;
  }

  private CLHamtLeaf(long key, String value, IDeserializingKeyValueStore store) {
    super(store);
    this.data = new CPHamtLeaf(key, value);
    String serialized = this.data.serialize();
    store.put(HashUtil.sha256(serialized), data, serialized);
  }

  @Override
  public CPHamtNode getData() {
    return data;
  }

  public long getKey() {
    return data.getKey();
  }

  public String getValue() {
    return data.getValue();
  }

  @Override
  public CLHamtNode put(long key, String value, int shift) {
    if (Objects.equals(key, data.key)) {
      if (Objects.equals(value, data.value)) {
        return this;
      } else {
        return CLHamtLeaf.create(key, value, store);
      }
    } else {
      if (shift > CLHamtNode.MAX_SHIFT) {
        throw new RuntimeException(shift + " > " + CLHamtNode.MAX_SHIFT);
      }
      CLHamtNode result = createEmptyNode();
      result = result.put(data.key, data.value, shift);
      if (result == null) {
        result = createEmptyNode();
      }
      result = result.put(key, value, shift);
      return result;
    }
  }

  @Override
  public CLHamtNode remove(long key, int shift) {
    if (Objects.equals(key, data.key)) {
      return null;
    } else {
      return this;
    }
  }

  @Override
  public IBulkQuery.Value<String> get(long key, int shift, IBulkQuery bulkQuery) {
    return bulkQuery.constant((Objects.equals(data.key, key) ? data.value : null));
  }

  @Override
  public boolean visitEntries(BiPredicate<Long, String> visitor) {
    return visitor.test(data.key, data.value);
  }

  @Override
  public void visitChanges(CLHamtNode oldNode, final CLHamtNode.IChangeVisitor visitor) {
    if (oldNode == this) {
      return;
    }

    final MutableObject<String> oldValue = new MutableObject<>();
    oldNode.visitEntries(new BiPredicate<Long, String>() {
      public boolean test(Long k, String v) {
        if (Objects.equals(k, data.key)) {
          oldValue.setValue(v);
        } else {
          visitor.entryRemoved(k, v);
        }
        return true;
      }
    });

    if (oldValue.getValue() == null) {
      visitor.entryAdded(data.key, data.value);
    } else if (oldValue.getValue() != data.value) {
      visitor.entryChanged(data.key, oldValue.getValue(), data.value);
    }
  }
}
