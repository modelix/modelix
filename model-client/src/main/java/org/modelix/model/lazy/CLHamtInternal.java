package org.modelix.model.lazy;



import org.modelix.model.persistent.CPHamtInternal;
import org.modelix.model.persistent.HashUtil;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.modelix.model.persistent.CPHamtNode;
import de.q60.mps.shadowmodels.runtime.util.pmap.LongKeyPMap;
import de.q60.mps.shadowmodels.runtime.util.pmap.COWArrays;
import java.util.Objects;

public class CLHamtInternal extends CLHamtNode<CPHamtInternal> {

  private final CPHamtInternal data;

  public CLHamtInternal(IDeserializingKeyValueStore store) {
    this(0, new String[0], store);
  }

  public CLHamtInternal(CPHamtInternal data, IDeserializingKeyValueStore store) {
    super(store);
    this.data = data;
  }

  private CLHamtInternal(int bitmap, String[] childHashes, IDeserializingKeyValueStore store) {
    super(store);
    this.data = new CPHamtInternal(bitmap, childHashes);
    String serialized = this.data.serialize();
    store.put(HashUtil.sha256(serialized), data, serialized);
  }

  public CLHamtNode put(long key, String value, int shift) {
    int childIndex = (int) ((key >>> shift) & LEVEL_MASK);
    CLHamtNode child = getChild(childIndex, new NonBulkQuery(store)).execute();
    if (child == null) {
      return setChild(childIndex, CLHamtLeaf.create(key, value, store));
    } else {
      return setChild(childIndex, child.put(key, value, shift + BITS_PER_LEVEL));
    }
  }

  public CLHamtNode remove(long key, int shift) {
    int childIndex = (int) ((key >>> shift) & LEVEL_MASK);
    CLHamtNode child = getChild(childIndex, new NonBulkQuery(store)).execute();
    if (child == null) {
      return this;
    } else {
      return setChild(childIndex, child.remove(key, shift + BITS_PER_LEVEL));
    }
  }

  @Override
  public IBulkQuery.Value<String> get(final long key, final int shift, final IBulkQuery bulkQuery) {
    int childIndex = (int) ((key >>> shift) & LEVEL_MASK);
    return getChild(childIndex, bulkQuery).mapBulk(new _FunctionTypes._return_P1_E0<IBulkQuery.Value<String>, CLHamtNode>() {
      public IBulkQuery.Value<String> invoke(CLHamtNode child) {
        if (child == null) {
          return bulkQuery.<String>constant(null);
        }
        return child.get(key, shift + BITS_PER_LEVEL, bulkQuery);
      }
    });
  }

  protected IBulkQuery.Value<CLHamtNode> getChild(int logicalIndex, IBulkQuery bulkQuery) {
    if (CLHamtNode.isBitNotSet(data.bitmap, logicalIndex)) {
      return bulkQuery.<CLHamtNode>constant(null);
    }
    int physicalIndex = CLHamtNode.logicalToPhysicalIndex(data.bitmap, logicalIndex);
    return getChild(data.children[physicalIndex], bulkQuery);
  }

  protected IBulkQuery.Value<CLHamtNode> getChild(String childHash, IBulkQuery bulkQuery) {
    return bulkQuery.get(childHash, CPHamtNode.DESERIALIZER).map(new _FunctionTypes._return_P1_E0<CLHamtNode, CPHamtNode>() {
      public CLHamtNode invoke(CPHamtNode childData) {
        return CLHamtNode.create(childData, store);
      }
    });
  }

  protected CLHamtNode getChild(int logicalIndex) {
    return getChild(logicalIndex, new NonBulkQuery(store)).execute();
  }

  protected CLHamtNode getChild(String childHash) {
    return getChild(childHash, new NonBulkQuery(store)).execute();
  }

  public CLHamtNode setChild(int logicalIndex, CLHamtNode child) {
    if (child == null) {
      return deleteChild(logicalIndex);
    }

    String childHash = HashUtil.sha256(child.getData().serialize());
    int physicalIndex = CLHamtNode.logicalToPhysicalIndex(data.bitmap, logicalIndex);
    if (LongKeyPMap.isBitNotSet(data.bitmap, logicalIndex)) {
      return new CLHamtInternal(data.bitmap | (1 << logicalIndex), COWArrays.insert(data.children, physicalIndex, childHash), store);
    } else {
      return new CLHamtInternal(data.bitmap, COWArrays.set(data.children, physicalIndex, childHash), store);
    }
  }

  public CLHamtNode deleteChild(int logicalIndex) {
    if (CLHamtNode.isBitNotSet(data.bitmap, logicalIndex)) {
      return this;
    }
    int physicalIndex = LongKeyPMap.logicalToPhysicalIndex(data.bitmap, logicalIndex);
    int newBitmap = data.bitmap & (~(1 << logicalIndex));
    if (newBitmap == 0) {
      return null;
    }

    String[] newChildren = COWArrays.removeAt(data.children, physicalIndex);
    if (newChildren.length == 1) {
      CLHamtNode child0 = getChild(newChildren[0], new NonBulkQuery(store)).execute();
      if (child0 instanceof CLHamtLeaf) {
        return child0;
      }
    }
    return new CLHamtInternal(newBitmap, newChildren, store);
  }

  @Override
  public boolean visitEntries(_FunctionTypes._return_P2_E0<? extends Boolean, ? super Long, ? super String> visitor) {
    for (String childHash : data.children) {
      CLHamtNode child = getChild(childHash);
      boolean continueVisit = child.visitEntries(visitor);
      if (!(continueVisit)) {
        return false;
      }
    }
    return true;
  }

  @Override
  public void visitChanges(CLHamtNode oldNode, final CLHamtNode.IChangeVisitor visitor) {
    if (oldNode == this) {
      return;
    }

    if (oldNode instanceof CLHamtInternal) {
      CLHamtInternal oldInternalNode = ((CLHamtInternal) oldNode);
      if (data.bitmap == oldInternalNode.data.bitmap) {
        for (int i = 0; i < data.children.length; i++) {
          getChild(data.children[i]).visitChanges(oldInternalNode.getChild(oldInternalNode.data.children[i]), visitor);
        }
      } else {
        for (int logicalIndex = 0; logicalIndex < CLHamtNode.ENTRIES_PER_LEVEL; logicalIndex++) {
          CLHamtNode child = getChild(logicalIndex);
          CLHamtNode oldChild = oldInternalNode.getChild(logicalIndex);

          if (child == null) {
            if (oldChild == null) {
              // no change 
            } else {
              oldChild.visitEntries(new _FunctionTypes._return_P2_E0<Boolean, Long, String>() {
                public Boolean invoke(Long key, String value) {
                  visitor.entryRemoved(key, value);
                  return true;
                }
              });
            }
          } else {
            if (oldChild == null) {
              child.visitEntries(new _FunctionTypes._return_P2_E0<Boolean, Long, String>() {
                public Boolean invoke(Long key, String value) {
                  visitor.entryAdded(key, value);
                  return true;
                }
              });
            } else {
              child.visitChanges(oldChild, visitor);
            }
          }
        }
      }
    } else if (oldNode instanceof CLHamtLeaf) {
      final CLHamtLeaf oldLeafNode = ((CLHamtLeaf) oldNode);
      visitEntries(new _FunctionTypes._return_P2_E0<Boolean, Long, String>() {
        public Boolean invoke(Long k, String v) {
          if (k == oldLeafNode.getKey()) {
            String oldValue = oldLeafNode.getValue();
            if (!(Objects.equals(v, oldValue))) {
              visitor.entryChanged(k, oldValue, v);
            }
          } else {
            visitor.entryAdded(k, v);
          }
          return true;
        }
      });
    } else {
      throw new RuntimeException("Unknown type: " + oldNode.getClass().getName());
    }
  }

  @Override
  public CPHamtNode getData() {
    return data;
  }

}
