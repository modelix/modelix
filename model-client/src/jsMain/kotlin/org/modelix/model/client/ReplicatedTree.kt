package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.TreeId

actual class ReplicatedTree {
    actual constructor(client: IModelClient, treeId: TreeId, branchName: String, user: () -> String) {
        TODO("Not yet implemented")
    }

    actual var version: CLVersion?
        get() = TODO("Not yet implemented")
        set(value) {}
    actual val branch: IBranch
        get() = TODO("Not yet implemented")

    actual fun dispose() {
    }
}
