package org.modelix.model.operations;

import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import java.text.MessageFormat;

public class SetPropertyOp extends AbstractOperation {

  public final long nodeId;
  public final String role;
  public final String value;

  public SetPropertyOp(long nodeId, String role, String value) {
    this.nodeId = nodeId;
    this.role = role;
    this.value = value;
  }

  @Override
  public IAppliedOperation apply(IWriteTransaction transaction) {
    String oldValue = transaction.getProperty(nodeId, role);
    transaction.setProperty(nodeId, role, value);
    return new Applied(oldValue);
  }

  @Override
  public IOperation transform(IOperation previous) {
    if (previous instanceof SetPropertyOp) {
      return this;
    } else if (previous instanceof SetReferenceOp) {
      return this;
    } else if (previous instanceof AddNewChildOp) {
      return this;
    } else if (previous instanceof DeleteNodeOp) {
      DeleteNodeOp o = ((DeleteNodeOp) previous);
      if (nodeId == o.childId) {
        return new NoOp();
      } else {
        return this;
      }
    } else if (previous instanceof MoveNodeOp) {
      return this;
    } else {
      throw new RuntimeException("Unknown type: " + previous.getClass().getName());
    }
  }

  @Override
  public String toString() {
    return MessageFormat.format("SetPropertOp {0}.{1} = {2}", Long.toHexString(nodeId), role, value);
  }

  public class Applied extends AbstractOperation.Applied implements IAppliedOperation {
    private String oldValue;

    public Applied(String oldValue) {
      this.oldValue = oldValue;
    }

    @Override
    public IOperation getOriginalOp() {
      return SetPropertyOp.this;
    }

    @Override
    public IOperation invert() {
      return new SetPropertyOp(nodeId, role, oldValue);
    }

    @Override
    public String toString() {
      return super.toString() + ", oldValue: " + oldValue;
    }
  }
}
