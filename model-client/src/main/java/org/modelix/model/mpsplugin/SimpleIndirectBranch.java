package org.modelix.model.mpsplugin;



import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;

public class SimpleIndirectBranch implements IIndirectBranch {
  private IBranch branch;

  public SimpleIndirectBranch(IBranch branch) {
    this.branch = branch;
  }
  @Override
  public void addListener(IBranchListener l) {
    branch.addListener(l);
  }
  @Override
  public IBranch getBranch() {
    return branch;
  }
  @Override
  public void removeListener(IBranchListener l) {
    branch.removeListener(l);
  }
}
