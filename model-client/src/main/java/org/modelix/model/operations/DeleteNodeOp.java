package org.modelix.model.operations;

import org.modelix.model.api.IWriteTransaction;
import org.modelix.model.api.IConcept;
import java.util.Objects;
import java.text.MessageFormat;

public class DeleteNodeOp extends AbstractOperation implements IModifiesChildrenOp {

  public final long parentId;
  public final String role;
  public final int index;
  public final long childId;

  public DeleteNodeOp(long parentId, String role, int index, long childId) {
    this.childId = childId;
    this.index = index;
    this.parentId = parentId;
    this.role = role;
  }

  public DeleteNodeOp withIndex(int newIndex) {
    return (newIndex == index ? this : new DeleteNodeOp(parentId, role, newIndex, childId));
  }

  @Override
  public IAppliedOperation apply(IWriteTransaction transaction) {
    IConcept concept = transaction.getConcept(childId);
    transaction.deleteNode(childId);
    return new Applied(concept);
  }

  @Override
  public IOperation transform(IOperation previous) {
    if (previous instanceof DeleteNodeOp) {
      DeleteNodeOp o = ((DeleteNodeOp) previous);
      if (Objects.equals(parentId, o.parentId) && Objects.equals(role, o.role)) {
        if (o.index < index) {
          return new DeleteNodeOp(parentId, role, index - 1, childId);
        } else if (Objects.equals(o.index, index)) {
          if (!(Objects.equals(o.childId, childId))) {
            throw new RuntimeException("Both operations delete " + parentId + "." + role + "[" + index + "] but with different expected IDs " + childId + " and " + o.childId);
          }
          return new NoOp();
        } else {
          return this;
        }
      } else {
        return this;
      }
    } else if (previous instanceof AddNewChildOp) {
      AddNewChildOp o = ((AddNewChildOp) previous);
      if (Objects.equals(parentId, o.getParentId()) && Objects.equals(role, o.getRole())) {
        if (o.getIndex() <= index) {
          return new DeleteNodeOp(parentId, role, index + 1, childId);
        } else {
          return this;
        }
      } else {
        return this;
      }
    } else if (previous instanceof MoveNodeOp) {
      MoveNodeOp o = ((MoveNodeOp) previous);
      if (Objects.equals(o.childId, childId)) {
        if (!(Objects.equals(o.sourceParentId, parentId)) || !(Objects.equals(o.sourceRole, role)) || !(Objects.equals(o.sourceIndex, index))) {
          throw new RuntimeException("node " + childId + " expected to be at " + parentId + "." + role + "[" + index + "]" + " but was " + o.sourceParentId + "." + o.sourceRole + "[" + o.sourceIndex + "]");
        }
        return new DeleteNodeOp(o.targetParentId, o.targetRole, o.targetIndex, childId);
      } else if (Objects.equals(parentId, o.targetParentId) && Objects.equals(role, o.targetRole)) {
        return withIndex(o.adjustIndex(parentId, role, index));
      } else if (Objects.equals(parentId, o.sourceParentId) && Objects.equals(role, o.sourceRole)) {
        if (o.sourceIndex == index) {
          throw new RuntimeException("Node at " + parentId + "." + role + "[" + index + "] is expected to be " + childId + ", but was " + o.childId);
        } else {
          return withIndex(o.adjustIndex(parentId, role, index));
        }
      } else {
        return this;
      }
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
    if (Objects.equals(otherParentId, parentId) && Objects.equals(otherRole, role) && index < otherIndex) {
      adjustedIndex--;
    }
    return adjustedIndex;
  }

  @Override
  public String toString() {
    return MessageFormat.format("DeleteNodeOp {0}, {1}.{2}[{3}]", Long.toHexString(childId), Long.toHexString(parentId), role, index);
  }

  public class Applied extends AbstractOperation.Applied implements IAppliedOperation {
    private IConcept concept;

    public Applied(IConcept concept) {
      this.concept = concept;
    }

    @Override
    public IOperation getOriginalOp() {
      return DeleteNodeOp.this;
    }

    @Override
    public IOperation invert() {
      return new AddNewChildOp(parentId, role, index, childId, concept);
    }

    @Override
    public String toString() {
      return super.toString() + ", concept: " + concept;
    }
  }
}
