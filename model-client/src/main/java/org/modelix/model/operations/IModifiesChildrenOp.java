package org.modelix.model.operations;

public interface IModifiesChildrenOp {
  int adjustIndex(long parentId, String role, int index);
}
