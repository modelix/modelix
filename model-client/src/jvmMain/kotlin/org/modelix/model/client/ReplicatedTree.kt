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

import org.apache.commons.lang3.mutable.MutableObject
import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.VersionMerger
import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener
import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.api.PBranch
import org.modelix.model.client.SharedExecutors.fixDelay
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.CLVersion.Companion.loadFromHash
import org.modelix.model.lazy.TreeId
import org.modelix.model.operations.IAppliedOperation
import org.modelix.model.operations.IOperation
import org.modelix.model.operations.OTBranch
import java.time.LocalDateTime
import java.util.concurrent.ScheduledFuture
import java.util.concurrent.atomic.AtomicBoolean
import java.util.function.Supplier

actual open class ReplicatedTree actual constructor(private val client: IModelClient, private val treeId: TreeId, private val branchName: String, private val user: () -> String) {
    private val localBranch: IBranch
    private val localOTBranch: OTBranch
    private val mergeLock = Any()
    private val merger: VersionMerger

    @Volatile
    actual var version: CLVersion?
        private set

    @Volatile
    private var remoteVersion: CLVersion?
    private val versionChangeDetector: VersionChangeDetector
    private val isEditing = AtomicBoolean(false)
    private var disposed = false
    private var divergenceTime = 0
    private val convergenceWatchdog: ScheduledFuture<*>
    actual val branch: IBranch
        get() {
            checkDisposed()
            return localOTBranch
        }

    /**
     * Call this at the beginning of an edit operation in the editor
     */
    fun startEdit() {
        isEditing.set(true)
    }

    /**
     * Call this at the end of an edit operation in the editor
     */
    fun endEdit() {
        if (disposed) return
        try {
            synchronized(mergeLock) {
                deleteDetachedNodes()
                createAndMergeLocalVersion()
            }
        } finally {
            isEditing.set(false)
        }
    }

    protected fun deleteDetachedNodes() {
        val hasDetachedNodes = localOTBranch.computeRead {
            localOTBranch.transaction!!
                .getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE)!!.iterator().hasNext()
        }
        // avoid unnecessary write
        if (hasDetachedNodes) {
            localOTBranch.runWrite {
                // clear detached nodes
                val t: IWriteTransaction = localOTBranch.writeTransaction!!
                t.getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE)!!.forEach { nodeId: Long -> t.deleteNode(nodeId) }
            }
        }
    }

    protected fun createAndMergeLocalVersion() {
        checkDisposed()
        var opsAndTree: Pair<List<IAppliedOperation>, ITree>
        var localBase: CLVersion?
        val remoteBase = MutableObject<CLVersion?>()
        val newLocalVersion = MutableObject<CLVersion>()
        synchronized(mergeLock) {
            opsAndTree = localOTBranch.operationsAndTree
            localBase = version
            remoteBase.setValue(remoteVersion)
            val ops: Array<IOperation> = opsAndTree.first.map { it.getOriginalOp() }.toTypedArray()
            if (ops.isEmpty()) {
                return
            }
            newLocalVersion.setValue(createVersion(opsAndTree.second as CLTree, ops, localBase!!.hash))
            version = newLocalVersion.value
            divergenceTime = 0
        }
        SharedExecutors.FIXED.execute(object : Runnable {
            override fun run() {
                val doMerge: Supplier<Boolean> = object : Supplier<Boolean> {
                    override fun get(): Boolean {

                        var mergedVersion: CLVersion
                        try {
                            mergedVersion = merger.mergeChange(remoteBase.value!!, newLocalVersion.value)
                            if (LOG.isDebugEnabled) {
                                LOG.debug(
                                    String.format(
                                        "Merged local %s with remote %s -> %s",
                                        newLocalVersion.value.hash,
                                        remoteBase.value!!.hash,
                                        mergedVersion.hash
                                    )
                                )
                            }
                        } catch (ex: Exception) {
                            if (LOG.isEnabledFor(Level.ERROR)) {
                                LOG.error("", ex)
                            }
                            mergedVersion = newLocalVersion.value
                        }
                        synchronized(mergeLock) {
                            writeLocalVersion(version)
                            if (remoteVersion == remoteBase.value) {
                                writeRemoteVersion(mergedVersion)
                                return true
                            } else {
                                remoteBase.setValue(remoteVersion)
                                return false
                            }
                        }
                    }
                }

                // Avoid locking during the merge as it may require communication with the model server 
                for (mergeAttempt in 0..2) {
                    if (doMerge.get()) {
                        return
                    }
                }
                synchronized(mergeLock) {
                    remoteBase.setValue(remoteVersion)
                    doMerge.get()
                }
            }
        })
    }

    protected fun writeRemoteVersion(newVersion: CLVersion) {
        synchronized(mergeLock) {
            if (remoteVersion!!.hash != newVersion.hash) {
                remoteVersion = newVersion
                client.asyncStore!!.put(treeId.getBranchKey(branchName), newVersion.hash)
            }
        }
    }

    protected fun writeLocalVersion(newVersion: CLVersion?) {
        synchronized(mergeLock) {
            if (newVersion!!.hash != this.version!!.hash) {
                this.version = newVersion
                divergenceTime = 0
                localBranch.runWrite {
                    val newTree = newVersion.tree
                    val currentTree = localBranch.transaction.tree as CLTree?
                    if (getHash(newTree) != getHash(currentTree)) {
                        localBranch.writeTransaction.tree = newTree
                    }
                }
            }
        }
    }

    fun createVersion(tree: CLTree, operations: Array<IOperation>, previousVersion: String?): CLVersion {
        checkDisposed()
        val time = LocalDateTime.now().toString()
        return CLVersion(
            client.idGenerator!!.generate(),
            time,
            user(),
            tree.hash,
            previousVersion,
            null,
            operations,
            client.storeCache!!
        )
    }

    actual open fun dispose() {
        checkDisposed()
        disposed = true
        versionChangeDetector.dispose()
        convergenceWatchdog.cancel(false)
    }

    fun checkDisposed() {
        if (disposed) {
            throw RuntimeException("Already disposed")
        }
    }

    companion object {
        private val LOG = LogManager.getLogger(ReplicatedTree::class.java)
        private fun getHash(v: CLVersion?): String? {
            return v?.hash
        }

        private fun getHash(v: CLTree?): String? {
            return v?.hash
        }
    }

    init {
        val versionHash = client[treeId.getBranchKey(branchName)]
        var initialVersion = if (versionHash == null) null else loadFromHash(versionHash, client.storeCache!!)
        val initialTree = MutableObject<CLTree>()
        if (initialVersion == null) {
            initialTree.setValue(CLTree(treeId, client.storeCache!!))
            initialVersion = createVersion(initialTree.value, arrayOf(), null)
            client.asyncStore!!.put(treeId.getBranchKey(branchName), initialVersion.hash)
        } else {
            initialTree.setValue(CLTree(initialVersion.treeHash, client.storeCache!!))
        }

        // prefetch to avoid HTTP request in command listener 
        SharedExecutors.FIXED.execute { initialTree.value.getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE) }
        version = initialVersion
        remoteVersion = initialVersion
        localBranch = PBranch(initialTree.value, client.idGenerator)
        localOTBranch = OTBranch(localBranch, client.idGenerator)
        merger = VersionMerger(client.storeCache!!, client.idGenerator)
        versionChangeDetector = object : VersionChangeDetector(client, treeId.getBranchKey(branchName)) {
            override fun processVersionChange(oldVersionHash: String?, newVersionHash: String?) {
                if (disposed) {
                    return
                }
                if (newVersionHash == null || newVersionHash.length == 0) {
                    return
                }
                if (newVersionHash == getHash(remoteVersion)) {
                    return
                }
                val newRemoteVersion = loadFromHash(newVersionHash, client.storeCache!!) ?: return
                val localBase = MutableObject<CLVersion?>()
                synchronized(mergeLock) {
                    localBase.setValue(version)
                    remoteVersion = newRemoteVersion
                }
                val doMerge = object : Supplier<Boolean> {
                    override fun get(): Boolean {
                        var mergedVersion: CLVersion
                        try {
                            mergedVersion = merger.mergeChange(localBase.value!!, newRemoteVersion)
                            if (LOG.isDebugEnabled) {
                                LOG.debug(
                                    String.format(
                                        "Merged remote %s with local %s -> %s",
                                        newRemoteVersion.hash,
                                        localBase.value!!.hash,
                                        mergedVersion.hash
                                    )
                                )
                            }
                        } catch (ex: Exception) {
                            if (LOG.isEnabledFor(Level.ERROR)) {
                                LOG.error("", ex)
                            }
                            mergedVersion = newRemoteVersion
                        }
                        val mergedTree = mergedVersion.tree
                        synchronized(mergeLock) {
                            remoteVersion = mergedVersion
                            if (version == localBase.value) {
                                writeLocalVersion(mergedVersion)
                                writeRemoteVersion(mergedVersion)
                                return true
                            } else {
                                localBase.setValue(version)
                                return false
                            }
                        }
                    }
                }

                // Avoid locking during the merge as it may require communication with the model server 
                for (mergeAttempt in 0..2) {
                    if (doMerge.get()) {
                        return
                    }
                }
                synchronized(mergeLock) {
                    localBase.setValue(version)
                    doMerge.get()
                }
            }
        }
        localOTBranch.addListener(object : IBranchListener {
            override fun treeChanged(oldTree: ITree?, newTree: ITree) {
                if (disposed) {
                    return
                }
                if (isEditing.get()) {
                    return
                }
                SharedExecutors.FIXED.execute {
                    if (isEditing.get()) {
                        return@execute
                    }
                    createAndMergeLocalVersion()
                }
            }
        })
        convergenceWatchdog = fixDelay(
            1000,
            object : Runnable {
                override fun run() {
                    val localHash = if (version == null) null else version!!.hash
                    val remoteHash = if (remoteVersion == null) null else remoteVersion!!.hash
                    if (localHash == remoteHash) {
                        divergenceTime = 0
                    } else {
                        divergenceTime++
                    }
                    if (divergenceTime > 5) {
                        synchronized(mergeLock) { divergenceTime = 0 }
                    }
                }
            }
        )
    }
}
