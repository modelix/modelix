package org.modelix.model.client;

import org.modelix.model.api.IBranch;
import org.modelix.model.api.IBranchListener;

public interface IIndirectBranch {
  IBranch getBranch();
  void addListener(IBranchListener l);
  void removeListener(IBranchListener l);
}
