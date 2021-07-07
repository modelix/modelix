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
import org.modelix.model.api.logError
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId
import kotlin.jvm.Synchronized

open class ActiveBranch(client: IModelClient, repository: RepositoryId, branchName: String?, user: () -> String) : IIndirectBranch {
    private val client: IModelClient
    private val repository: RepositoryId
    var branchName: String
        private set
    private val user: () -> String
    private var replicatedTree: ReplicatedTree
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
            return replicatedTree.branch
        }

    val version: CLVersion
        get() = replicatedTree.localVersion!!

    open fun dispose() {
        replicatedTree.branch.removeListener(forwardingListener)
        replicatedTree.dispose()
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
        replicatedTree.branch.removeListener(forwardingListener)
        replicatedTree.dispose()
        replicatedTree = createReplicatedTree(client, repository, branchName, user)
        replicatedTree.branch.addListener(forwardingListener)
        val b = replicatedTree.branch
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
                logError("", ex, ActiveBranch::class)
            }
        }
    }

    protected open fun createReplicatedTree(
        client: IModelClient,
        repositoryId: RepositoryId,
        branchName: String,
        user: () -> String
    ): ReplicatedTree =
        ReplicatedTree(client, repositoryId, branchName, user)

    companion object {
        const val DEFAULT_BRANCH_NAME = "master"
    }

    init {
        this.client = client
        this.repository = repository
        this.branchName = if (branchName.isNullOrEmpty()) DEFAULT_BRANCH_NAME else branchName
        this.user = user
        replicatedTree = createReplicatedTree(client, repository, this.branchName, user)
        lastKnownTree = replicatedTree.branch.computeRead { replicatedTree.branch.transaction.tree }
        replicatedTree.branch.addListener(forwardingListener)
    }
}
