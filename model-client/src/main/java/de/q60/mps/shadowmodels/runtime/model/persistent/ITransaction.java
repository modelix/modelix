package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.INode;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;

import java.util.function.Predicate;
import java.util.stream.LongStream;

public interface ITransaction {
  IBranch getBranch();
  ITree getTree();

  boolean containsNode(long nodeId);
  IConcept getConcept(long nodeId);
  long getParent(long nodeId);
  String getRole(long nodeId);
  String getProperty(long nodeId, String role);
  INodeReference getReferenceTarget(long sourceId, String role);
  LongStream getChildren(long parentId, String role);
  LongStream getAllChildren(long parentId);
}
