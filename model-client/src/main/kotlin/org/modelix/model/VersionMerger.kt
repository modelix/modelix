package org.modelix.model

import gnu.trove.set.TLongSet
import gnu.trove.set.hash.TLongHashSet
import org.apache.commons.lang3.mutable.MutableObject
import org.modelix.model.api.IBranch
import org.modelix.model.api.IIdGenerator
import org.modelix.model.api.ITree
import org.modelix.model.api.PBranch
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.operations.IAppliedOperation
import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.CPVersion
import org.modelix.model.util.StreamUtils
import java.util.Optional
import java.util.stream.Collectors
import kotlin.collections.ArrayList
import kotlin.collections.HashSet

class VersionMerger(private val storeCache: IDeserializingKeyValueStore, private val idGenerator: IIdGenerator) {
    private val mergeLock = Any()
    fun mergeChange(lastMergedVersion: CLVersion, newVersion: CLVersion): CLVersion {
        var lastMergedVersion = lastMergedVersion
        synchronized(mergeLock) {
            return if (lastMergedVersion == null) {
                lastMergedVersion = newVersion
                newVersion
            } else {
                if (newVersion.hash == lastMergedVersion.hash) {
                    return lastMergedVersion
                }
                val merged = mergeHistory(lastMergedVersion.hash, newVersion.hash)
                checkTreeIds(lastMergedVersion, newVersion)
                merged
            }
        }
    }

    fun checkTreeIds(v1: CLVersion, v2: CLVersion) {
        val id1 = v1.tree.id
        val id2 = v2.tree.id
        if (id1 != id2) {
            throw RuntimeException("Tree ID mismatch: $id1 and $id2")
        }
    }

    protected fun mergeHistory(leftVersionHash: String, rightVersionHash: String): CLVersion {
        val commonBase = commonBaseVersion(leftVersionHash, rightVersionHash)
        val leftHistory = getHistory(leftVersionHash, commonBase)
        val rightHistory = getHistory(rightVersionHash, commonBase)
        val mergedVersion = MutableObject<CLVersion>()
        var tree = getVersion(commonBase)!!.tree
        if (tree == null) {
            tree = CLTree(storeCache)
        }
        val branch: IBranch = PBranch(tree)
        if (rightHistory.isEmpty() || leftHistory.isEmpty()) {
            val fastForwardHistory = if (leftHistory.isEmpty()) rightHistory else leftHistory
            val numOps = fastForwardHistory.stream().map { obj: CLVersion -> obj.numberOfOperations }.reduce(0) { a: Int, b: Int -> Math.max(a, b) }
            if (numOps > 100) {
                return fastForwardHistory[0]
            }
            // A small number of changes may be faster to compute locally. 
        }
        branch.runWrite(
            Runnable {
                val t = branch.writeTransaction
                val leftAppliedOps: MutableList<IAppliedOperation> = ArrayList()
                val rightAppliedOps: MutableList<IAppliedOperation> = ArrayList()
                val appliedVersionIds: TLongSet = TLongHashSet()
                while (!leftHistory.isEmpty() || !rightHistory.isEmpty()) {
                    val useLeft = rightHistory.isEmpty() || !leftHistory.isEmpty() && StreamUtils.last(leftHistory)!!.id < StreamUtils.last(rightHistory)!!.id
                    val versionToApply = StreamUtils.removeLast(if (useLeft) leftHistory else rightHistory)
                    if (appliedVersionIds.contains(versionToApply!!.id)) {
                        continue
                    }
                    appliedVersionIds.add(versionToApply.id)
                    val oppositeAppliedOps = (if (useLeft) rightAppliedOps else leftAppliedOps).stream()
                        .map { obj: IAppliedOperation -> obj.originalOp }
                        .collect(Collectors.toList())
                    val operationsToApply = StreamUtils.toStream(versionToApply.operations)
                        .map { it: IOperation -> transformOperation(it, oppositeAppliedOps) }
                        .collect(Collectors.toList())
                    for (op in operationsToApply) {
                        val appliedOp = op.apply(t)
                        if (useLeft) {
                            leftAppliedOps.add(appliedOp!!)
                        } else {
                            rightAppliedOps.add(appliedOp!!)
                        }
                    }
                    mergedVersion.value = CLVersion(
                        versionToApply.id,
                        versionToApply.time,
                        versionToApply.author,
                        (t!!.tree as CLTree).hash,
                        if (mergedVersion.value != null) mergedVersion.value.hash else versionToApply.previousHash,
                        operationsToApply.toTypedArray(),
                        storeCache
                    )
                }
            }
        )
        if (mergedVersion.value == null) {
            throw RuntimeException("Failed to merge $leftVersionHash and $rightVersionHash")
        }
        return mergedVersion.value
    }

    protected fun transformOperation(opToTransform: IOperation, previousOps: Iterable<IOperation?>): IOperation {
        var result = opToTransform
        for (previous in previousOps) {
            result = result.transform(previous)!!
        }
        return result
    }

    /**
     *
     *
     * @param fromVersion The newest version
     * @param toVersionExclusive The oldest version
     * @return Newest version first
     */
    protected fun getHistory(fromVersion: String, toVersionExclusive: String?): MutableList<CLVersion> {
        val history: MutableList<CLVersion> = ArrayList()
        if (fromVersion == toVersionExclusive) {
            return history
        }
        var version = getVersion(fromVersion)
        while (true) {
            if (version == null) {
                break
            }
            history.add(version)
            if (version.previousHash == null) {
                break
            }
            if (version.previousHash == toVersionExclusive) {
                break
            }
            version = version.previousVersion
        }
        return history
    }

    protected fun commonBaseVersion(leftHash: String?, rightHash: String?): String? {
        var leftHash = leftHash
        var rightHash = rightHash
        val leftVersions: MutableSet<String> = HashSet()
        val rightVersions: MutableSet<String> = HashSet()
        while (leftHash != null || rightHash != null) {
            if (leftHash != null) {
                leftVersions.add(leftHash)
            }
            if (rightHash != null) {
                rightVersions.add(rightHash)
            }
            if (leftHash != null) {
                if (rightVersions.contains(leftHash)) {
                    return leftHash
                }
            }
            if (rightHash != null) {
                if (leftVersions.contains(rightHash)) {
                    return rightHash
                }
            }
            if (leftHash != null) {
                leftHash = Optional.ofNullable(getVersion(leftHash)).map { obj: CLVersion -> obj.previousHash }.orElse(null)
            }
            if (rightHash != null) {
                rightHash = Optional.ofNullable(getVersion(rightHash)).map { obj: CLVersion -> obj.previousHash }.orElse(null)
            }
        }
        return null
    }

    private fun getVersion(hash: String?): CLVersion? {
        return if (hash == null) {
            null
        } else CLVersion.loadFromHash(hash, storeCache)
    }

    protected fun getTree(version: CPVersion?): ITree? {
        return if (version == null) {
            null
        } else CLTree(version.treeHash, storeCache)
    }
}
