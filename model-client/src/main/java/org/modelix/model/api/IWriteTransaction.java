package org.modelix.model.api;

public interface IWriteTransaction extends ITransaction {
  void setProperty(long nodeId, String role, String value);
  void setReferenceTarget(long sourceId, String role, INodeReference target);
  void moveChild(long newParentId, String newRole, int newIndex, long childId);
  long addNewChild(long parentId, String role, int index, IConcept concept);
  void addNewChild(long parentId, String role, int index, long childId, IConcept concept);
  void deleteNode(long nodeId);

  void setTree(ITree tree);
}
