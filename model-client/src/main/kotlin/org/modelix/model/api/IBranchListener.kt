package org.modelix.model.api

interface IBranchListener {
    fun treeChanged(oldTree: ITree?, newTree: ITree?)
}
