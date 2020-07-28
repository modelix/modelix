package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import de.q60.mps.shadowmodels.runtime.model.IConcept;

public interface IWriteTransaction extends ITransaction {
  void setProperty(long nodeId, String role, String value);
  void setUserObject(long nodeId, Object key, Object value);
  void setReferenceTarget(long sourceId, String role, INodeReference target);
  void moveChild(long newParentId, String newRole, int newIndex, long childId);
  long addNewChild(long parentId, String role, int index, IConcept concept);
  void addNewChild(long parentId, String role, int index, long childId, IConcept concept);
  long addNewLazyChild(long parentId, String role, int index, IConcept concept);
  void deleteNode(long nodeId);
  void loadNode(long nodeId);

  void setTree(ITree tree);
}
