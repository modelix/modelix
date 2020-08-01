package org.modelix.model.operations;

import org.modelix.model.api.INodeReference;
import org.modelix.model.api.IWriteTransaction;
import java.text.MessageFormat;

public class SetReferenceOp extends AbstractOperation {

  public final long sourceId;
  public final String role;
  public final INodeReference target;

  public SetReferenceOp(long sourceId, String role, INodeReference target) {
    this.sourceId = sourceId;
    this.role = role;
    this.target = target;
  }

  @Override
  public IAppliedOperation apply(IWriteTransaction transaction) {
    INodeReference oldValue = transaction.getReferenceTarget(sourceId, role);
    transaction.setReferenceTarget(sourceId, role, target);
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
      if (sourceId == o.getParentId()) {
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
    return MessageFormat.format("SetReferenceOp {0}.{1} = {2}", Long.toHexString(sourceId), role, target);
  }

  public class Applied extends AbstractOperation.Applied implements IAppliedOperation {
    private INodeReference oldValue;

    public Applied(INodeReference oldValue) {
      this.oldValue = oldValue;
    }

    @Override
    public IOperation getOriginalOp() {
      return SetReferenceOp.this;
    }

    @Override
    public IOperation invert() {
      return new SetReferenceOp(sourceId, role, oldValue);
    }

    @Override
    public String toString() {
      return super.toString() + ", oldValue: " + oldValue;
    }
  }
}
