package org.modelix.model.api;

import org.jetbrains.annotations.Nullable;

import java.util.stream.Stream;

public interface INode {
  boolean isValid();
  INodeReference getReference();

  IConcept getConcept();
  String getRoleInParent();
  INode getParent();

  Stream<INode> getChildren(String role);
  Stream<INode> getAllChildren();
  void addChild(String role, int index, INode node);
  INode addNewChild(String role, int index, @Nullable IConcept concept);
  void removeChild(INode child);

  INode getReferenceTarget(String role);
  void setReferenceTarget(String role, INode target);

  String getPropertyValue(String role);
  void setPropertyValue(String role, String value);
}
