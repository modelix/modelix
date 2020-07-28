package org.modelix.model.mpsplugin;



import org.modelix.model.lazy.TreeId;
import org.jetbrains.mps.openapi.module.SModule;

public abstract class ModelBinding {
  protected TreeId treeId;
  protected long nodeId;

  public ModelBinding(TreeId treeId, long nodeId) {
    this.treeId = treeId;
    this.nodeId = nodeId;
  }

  public abstract void activate(CloudRepository cloudRepository);
  public abstract void deactivate();
  public abstract SModule getModule();

  public long getNodeId() {
    return this.nodeId;
  }

  public TreeId getTreeId() {
    return this.treeId;
  }
}
