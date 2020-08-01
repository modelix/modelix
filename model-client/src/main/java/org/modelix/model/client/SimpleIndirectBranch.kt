package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener

class SimpleIndirectBranch(override val branch: IBranch) : IIndirectBranch {
    override fun addListener(l: IBranchListener?) {
        branch.addListener(l)
    }

    override fun removeListener(l: IBranchListener?) {
        branch.removeListener(l)
    }

}