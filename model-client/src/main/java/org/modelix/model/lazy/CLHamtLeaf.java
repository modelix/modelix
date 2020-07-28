package org.modelix.model.lazy;



import org.modelix.model.persistent.CPHamtLeaf;
import org.modelix.model.persistent.HashUtil;
import org.modelix.model.persistent.CPHamtNode;
import java.util.Objects;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;

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
  public boolean visitEntries(_FunctionTypes._return_P2_E0<? extends Boolean, ? super Long, ? super String> visitor) {
    return visitor.invoke(data.key, data.value);
  }

  @Override
  public void visitChanges(CLHamtNode oldNode, final CLHamtNode.IChangeVisitor visitor) {
    if (oldNode == this) {
      return;
    }

    final Wrappers._T<String> oldValue = new Wrappers._T<String>(null);
    oldNode.visitEntries(new _FunctionTypes._return_P2_E0<Boolean, Long, String>() {
      public Boolean invoke(Long k, String v) {
        if (Objects.equals(k, data.key)) {
          oldValue.value = v;
        } else {
          visitor.entryRemoved(k, v);
        }
        return true;
      }
    });

    if (oldValue.value == null) {
      visitor.entryAdded(data.key, data.value);
    } else if (oldValue.value != data.value) {
      visitor.entryChanged(data.key, oldValue.value, data.value);
    }
  }
}
