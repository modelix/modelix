package org.modelix.model.api;

public interface IBranchListener {
  void treeChanged(ITree oldTree, ITree newTree);
}
