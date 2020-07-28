package de.q60.mps.shadowmodels.runtime.model.persistent;

public interface IBranchListener {
  void treeChanged(ITree oldTree, ITree newTree);
}
