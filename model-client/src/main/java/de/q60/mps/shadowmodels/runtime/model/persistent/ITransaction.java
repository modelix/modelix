package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.INode;

public interface ITransaction {
  IBranch getBranch();
  ITree getTree();

  boolean containsNode(long nodeId);
  IConcept getConcept(long nodeId);
  long getParent(long nodeId);
  String getRole(long nodeId);
  String getProperty(long nodeId, String role);
  Object getUserObject(long nodeId, Object key);
  INodeReference getReferenceTarget(long sourceId, String role);
  Iterable<Long> getChildren(long parentId, String role);
  Iterable<Long> getAllChildren(long parentId);

  void visitNodes(_FunctionTypes._return_P1_E0<? extends Boolean, ? super INode> visitor);

  void ensureLoaded(long nodeId);
  boolean isLoaded(long nodeId);
}
