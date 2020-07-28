package org.modelix.model.operations;



import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import java.util.Objects;
import java.text.MessageFormat;

public class AddNewChildOp extends AbstractOperation implements IModifiesChildrenOp {

  public final long parentId;
  public final String role;
  public final int index;
  public final long childId;
  public final IConcept concept;

  public AddNewChildOp(long parentId, String role, int index, long childId, IConcept concept) {
    this.childId = childId;
    this.concept = concept;
    this.index = index;
    this.parentId = parentId;
    this.role = role;
  }

  public AddNewChildOp withIndex(int newIndex) {
    return (newIndex == index ? this : new AddNewChildOp(parentId, role, newIndex, childId, concept));
  }

  @Override
  public IAppliedOperation apply(IWriteTransaction transaction) {
    transaction.addNewChild(parentId, role, index, childId, concept);
    return new Applied();
  }

  @Override
  public IOperation transform(IOperation previous) {
    if (previous instanceof AddNewChildOp) {
      AddNewChildOp o = ((AddNewChildOp) previous);
      if (Objects.equals(o.parentId, parentId) && Objects.equals(o.role, role)) {
        if (o.index <= index) {
          return new AddNewChildOp(parentId, role, index + 1, childId, concept);
        } else {
          return this;
        }
      } else {
        return this;
      }
    } else if (previous instanceof DeleteNodeOp) {
      DeleteNodeOp o = ((DeleteNodeOp) previous);
      return withIndex(o.adjustIndex(parentId, role, index));
    } else if (previous instanceof MoveNodeOp) {
      MoveNodeOp o = ((MoveNodeOp) previous);
      return withIndex(o.adjustIndex(parentId, role, index));
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
    if (Objects.equals(otherParentId, parentId) && Objects.equals(otherRole, role) && index <= otherIndex) {
      adjustedIndex++;
    }
    return adjustedIndex;
  }

  @Override
  public String toString() {
    return MessageFormat.format("AddNewChildOp {0}, {1}.{2}[{3}], {4}", Long.toHexString(childId), Long.toHexString(parentId), role, index, concept);
  }

  public class Applied extends AbstractOperation.Applied implements IAppliedOperation {

    public Applied() {
    }

    @Override
    public IOperation getOriginalOp() {
      return AddNewChildOp.this;
    }

    @Override
    public IOperation invert() {
      return new DeleteNodeOp(parentId, role, index, childId);
    }
  }
}
