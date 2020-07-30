package org.modelix.model.client;

import org.modelix.model.api.IBranch;
import org.modelix.model.api.IBranchListener;

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
