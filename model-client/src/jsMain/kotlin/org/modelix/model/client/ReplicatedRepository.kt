package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId

actual class ReplicatedRepository {
    actual constructor(client: IModelClient, repositoryId: RepositoryId, branchName: String, user: () -> String) {
        TODO("Not yet implemented")
    }

    actual var localVersion: CLVersion?
        get() = TODO("Not yet implemented")
        set(value) {}
    actual val branch: IBranch
        get() = TODO("Not yet implemented")

    actual fun dispose() {
    }

    actual fun isDisposed(): Boolean = TODO("Not yet implemented")
}
