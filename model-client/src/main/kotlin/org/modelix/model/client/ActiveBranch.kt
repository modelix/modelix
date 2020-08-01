package org.modelix.model.client

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener
import org.modelix.model.api.ITree
import org.modelix.model.client.ActiveBranch
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.TreeId
import java.util.*
import java.util.function.Supplier

class ActiveBranch(client: IModelClient, tree: TreeId, branchName: String?, user: Supplier<String>) : IIndirectBranch {
    private val client: IModelClient
    private val tree: TreeId
    var branchName: String?
        private set
    private val user: Supplier<String>
    private var replicatedTree: ReplicatedTree?
    private var lastKnownTree: ITree? = null
    private val forwardingListener: IBranchListener = object : IBranchListener {
        override fun treeChanged(oldTree: ITree?, newTree: ITree?) {
            notifyListeners(newTree)
        }
    }
    private var listeners: List<IBranchListener?> = ArrayList()

    @get:Synchronized
    override val branch: IBranch
        get() = replicatedTree!!.branch

    val version: CLVersion
        get() = replicatedTree!!.version

    fun dispose() {
        replicatedTree!!.branch.removeListener(forwardingListener)
        replicatedTree!!.dispose()
        replicatedTree = null
    }

    override fun addListener(l: IBranchListener?) {
        val newListeners: MutableList<IBranchListener?> = ArrayList(listeners)
        newListeners.add(l)
        listeners = newListeners
    }

    override fun removeListener(l: IBranchListener?) {
        val newListeners: MutableList<IBranchListener?> = ArrayList(listeners)
        newListeners.remove(l)
        listeners = newListeners
    }

    @Synchronized
    fun switchBranch(name: String?) {
        if (branchName == name) {
            return
        }
        branchName = name
        replicatedTree!!.branch.removeListener(forwardingListener)
        replicatedTree!!.dispose()
        replicatedTree = ReplicatedTree(client, tree, branchName!!, user)
        replicatedTree!!.branch.addListener(forwardingListener)
        val b = replicatedTree!!.branch
        val newTree = b.computeRead(Supplier { b.transaction!!.tree })
        notifyListeners(newTree)
    }

    protected fun notifyListeners(newTree: ITree?) {
        val oldTree = lastKnownTree
        lastKnownTree = newTree
        for (l in listeners) {
            try {
                l!!.treeChanged(oldTree, newTree)
            } catch (ex: Exception) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error("", ex)
                }
            }
        }
    }

    companion object {
        private val LOG = LogManager.getLogger(ActiveBranch::class.java)
        const val DEFAULT_BRANCH_NAME = "master"
    }

    init {
        var branchName = branchName
        if (branchName == null || branchName!!.length == 0) {
            branchName = DEFAULT_BRANCH_NAME
        }
        this.client = client
        this.tree = tree
        this.branchName = branchName
        this.user = user
        replicatedTree = ReplicatedTree(client, tree, branchName!!, user)
        lastKnownTree = replicatedTree!!.branch.computeRead(Supplier { replicatedTree!!.branch.transaction!!.tree })
        replicatedTree!!.branch.addListener(forwardingListener)
    }
}