package org.modelix.model.api;

public interface ITreeChangeVisitor {
  void containmentChanged(long nodeId);
  void childrenChanged(long nodeId, String role);
  void referenceChanged(long nodeId, String role);
  void propertyChanged(long nodeId, String role);
  void userObjectChanged(long nodeId, Object key);
  void nodeRemoved(long nodeId);
  void nodeAdded(long nodeId);
  void nodeLoaded(long nodeId);
  void nodeUnloaded(long nodeId);
}
