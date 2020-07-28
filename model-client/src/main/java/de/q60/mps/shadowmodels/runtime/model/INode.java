package de.q60.mps.shadowmodels.runtime.model;

import org.jetbrains.annotations.Nullable;

public interface INode {
  boolean isValid();
  INodeReference getReference();

  IConcept getConcept();
  String getRoleInParent();
  INode getParent();

  Iterable<INode> getChildren(String role);
  Iterable<INode> getAllChildren();
  void addChild(String role, int index, INode node);
  INode addNewChild(String role, int index, @Nullable IConcept concept);
  void removeChild(INode child);

  INode getReferenceTarget(String role);
  void setReferenceTarget(String role, INode target);

  String getPropertyValue(String role);
  void setPropertyValue(String role, String value);
}
