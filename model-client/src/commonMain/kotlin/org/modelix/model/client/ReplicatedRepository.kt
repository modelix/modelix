package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId

expect class ReplicatedRepository(client: IModelClient, repositoryId: RepositoryId, branchName: String, user: () -> String) {
    var localVersion: CLVersion?
    val branch: IBranch
    fun dispose()
    fun isDisposed(): Boolean
}
