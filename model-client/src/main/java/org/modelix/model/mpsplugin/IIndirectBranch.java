package org.modelix.model.mpsplugin;



import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;

public interface IIndirectBranch {
  IBranch getBranch();
  void addListener(IBranchListener l);
  void removeListener(IBranchListener l);
}
