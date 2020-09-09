package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.TreeId

expect class ReplicatedTree(client: IModelClient, treeId: TreeId, branchName: String, user: () -> String) {
    var localVersion: CLVersion?
    val branch: IBranch
    fun dispose()
}
