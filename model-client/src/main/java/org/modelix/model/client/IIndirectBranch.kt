package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener

interface IIndirectBranch {
    val branch: IBranch?
    fun addListener(l: IBranchListener?)
    fun removeListener(l: IBranchListener?)
}
