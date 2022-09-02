/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener
import org.modelix.model.api.ITree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId
import kotlin.jvm.Synchronized

open class ActiveBranch(val client: IModelClient, val repository: RepositoryId, branchName: String?, user: () -> String) : IIndirectBranch {
    private val logger = mu.KotlinLogging.logger {}
    var branchName: String
        private set
    private val user: () -> String
    private var replicatedRepository: ReplicatedRepository
    private var lastKnownTree: ITree? = null
    private val forwardingListener: IBranchListener = object : IBranchListener {
        override fun treeChanged(oldTree: ITree?, newTree: ITree) {
            notifyListeners(newTree)
        }
    }
    private var listeners: List<IBranchListener> = ArrayList()
    private var disposed = false

    @get:Synchronized
    override val branch: IBranch
        get() {
            if (disposed) throw IllegalStateException("ActiveBranch was disposed")
            return replicatedRepository.branch
        }

    val version: CLVersion
        get() = replicatedRepository.localVersion!!

    open fun dispose() {
        replicatedRepository.branch.removeListener(forwardingListener)
        replicatedRepository.dispose()
        disposed = true
    }

    override fun addListener(l: IBranchListener) {
        val newListeners: MutableList<IBranchListener> = ArrayList(listeners)
        newListeners.add(l)
        listeners = newListeners
    }

    override fun removeListener(l: IBranchListener) {
        val newListeners: MutableList<IBranchListener> = ArrayList(listeners)
        newListeners.remove(l)
        listeners = newListeners
    }

    @Synchronized
    fun switchBranch(name: String) {
        if (branchName == name) {
            return
        }
        branchName = name
        replicatedRepository.branch.removeListener(forwardingListener)
        replicatedRepository.dispose()
        replicatedRepository = createReplicatedRepository(client, repository, branchName, user)
        replicatedRepository.branch.addListener(forwardingListener)
        val b = replicatedRepository.branch
        val newTree = b.computeRead { b.transaction.tree }
        notifyListeners(newTree)
    }

    protected fun notifyListeners(newTree: ITree) {
        val oldTree = lastKnownTree
        lastKnownTree = newTree
        for (l in listeners) {
            try {
                l.treeChanged(oldTree, newTree)
            } catch (ex: Exception) {
                logger.error(ex) { "" }
            }
        }
    }

    protected open fun createReplicatedRepository(
        client: IModelClient,
        repositoryId: RepositoryId,
        branchName: String,
        user: () -> String
    ): ReplicatedRepository =
        ReplicatedRepository(client, repositoryId, branchName, user)

    companion object {
        const val DEFAULT_BRANCH_NAME = "master"
    }

    init {
        this.branchName = if (branchName.isNullOrEmpty()) DEFAULT_BRANCH_NAME else branchName
        this.user = user
        replicatedRepository = createReplicatedRepository(client, repository, this.branchName, user)
        lastKnownTree = replicatedRepository.branch.computeRead { replicatedRepository.branch.transaction.tree }
        replicatedRepository.branch.addListener(forwardingListener)
    }
}
