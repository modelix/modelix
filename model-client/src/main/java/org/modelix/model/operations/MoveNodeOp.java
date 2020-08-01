package org.modelix.model.operations;

import org.modelix.model.api.IWriteTransaction;
import java.util.Objects;
import java.text.MessageFormat;

public class MoveNodeOp extends AbstractOperation implements IModifiesChildrenOp {

  public final long childId;

  public final long sourceParentId;
  public final String sourceRole;
  public final int sourceIndex;

  public final long targetParentId;
  public final String targetRole;
  public final int targetIndex;

  public MoveNodeOp(long childId, long sourceParentId, String sourceRole, int sourceIndex, long targetParentId, String targetRole, int targetIndex) {
    this.childId = childId;
    this.sourceParentId = sourceParentId;
    this.sourceRole = sourceRole;
    this.sourceIndex = sourceIndex;
    this.targetParentId = targetParentId;
    this.targetRole = targetRole;
    this.targetIndex = targetIndex;
  }

  public MoveNodeOp withIndex(int newSourceIndex, int newTargetIndex) {
    return (newSourceIndex == sourceIndex && newTargetIndex == targetIndex ? this : new MoveNodeOp(childId, sourceParentId, sourceRole, newSourceIndex, targetParentId, targetRole, newTargetIndex));
  }

  @Override
  public IAppliedOperation apply(IWriteTransaction transaction) {
    transaction.moveChild(targetParentId, targetRole, targetIndex, childId);
    return new Applied();
  }

  @Override
  public IOperation transform(IOperation previous) {
    if (previous instanceof AddNewChildOp) {
      AddNewChildOp o = ((AddNewChildOp) previous);
      return withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex));
    } else if (previous instanceof DeleteNodeOp) {
      DeleteNodeOp o = ((DeleteNodeOp) previous);
      if (Objects.equals(o.getParentId(), sourceParentId) && Objects.equals(o.getRole(), sourceRole) && Objects.equals(o.getIndex(), sourceIndex)) {
        if (!(Objects.equals(o.getChildId(), childId))) {
          throw new RuntimeException(sourceParentId + "." + sourceRole + "[" + sourceIndex + "] expected to be " + childId + ", but was " + o.getChildId());
        }
        return new NoOp();
      } else {
        return withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex));
      }
    } else if (previous instanceof MoveNodeOp) {
      MoveNodeOp o = ((MoveNodeOp) previous);
      return withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex));
    } else if (previous instanceof SetPropertyOp) {
      return this;
    } else if (previous instanceof SetReferenceOp) {
      return this;
    } else if (previous instanceof NoOp) {
      return this;
    } else {
      throw new RuntimeException("Unknown type: " + previous.getClass().getName());
    }
  }

  @Override
  public int adjustIndex(long otherParentId, String otherRole, int otherIndex) {
    int adjustedIndex = otherIndex;
    if (Objects.equals(otherParentId, sourceParentId) && Objects.equals(otherRole, sourceRole) && sourceIndex < otherIndex) {
      adjustedIndex--;
    }
    if (Objects.equals(otherParentId, targetParentId) && Objects.equals(otherRole, targetRole) && targetIndex <= otherIndex) {
      adjustedIndex++;
    }
    return adjustedIndex;
  }

  @Override
  public String toString() {
    return MessageFormat.format("MoveNodeOp {0}, {1}.{2}[{3}]->{4}.{5}[{6}]", Long.toHexString(childId), Long.toHexString(sourceParentId), sourceRole, sourceIndex, Long.toHexString(targetParentId), targetRole, targetIndex);
  }

  public class Applied extends AbstractOperation.Applied implements IAppliedOperation {
    public Applied() {
    }
    @Override
    public IOperation getOriginalOp() {
      return MoveNodeOp.this;
    }

    @Override
    public IOperation invert() {
      return new MoveNodeOp(childId, targetParentId, targetRole, targetIndex, sourceParentId, sourceRole, sourceIndex);
    }
  }

}
