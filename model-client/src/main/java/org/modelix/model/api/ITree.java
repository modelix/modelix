package org.modelix.model.api;

import java.util.stream.LongStream;

public interface ITree {
  public static final long ROOT_ID = 1L;
  public static final String DETACHED_NODES_ROLE = "detached";

  void visitChanges(ITree oldVersion, ITreeChangeVisitor visitor);
  boolean containsNode(long nodeId);
  String getProperty(long nodeId, String role);
  LongStream getChildren(long parentId, String role);

  IConcept getConcept(long nodeId);

  long getParent(long nodeId);

  String getRole(long nodeId);

  ITree setProperty(long nodeId, String role, String value);

  INodeReference getReferenceTarget(long sourceId, String role);

  ITree setReferenceTarget(long sourceId, String role, INodeReference target);

  Iterable<String> getReferenceRoles(long sourceId);

  Iterable<String> getPropertyRoles(long sourceId);

  Iterable<String> getChildRoles(long sourceId);

  LongStream getAllChildren(long parentId);

  ITree moveChild(long newParentId, String newRole, int newIndex, long childId);

  ITree addNewChild(long parentId, String role, int index, long childId, IConcept concept);
  ITree addNewChildren(long parentId, String role, int index, long[] newIds, IConcept[] concepts);

  ITree deleteNode(long nodeId);
  ITree deleteNodes(long[] nodeIds);
}
