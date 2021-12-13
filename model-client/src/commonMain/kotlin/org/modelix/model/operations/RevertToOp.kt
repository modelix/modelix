package org.modelix.model.operations

import org.modelix.model.VersionMerger
import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.api.TreePointer
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.lazy.KVEntryReference
import org.modelix.model.persistent.CPVersion
import org.modelix.model.persistent.IKVValue

class RevertToOp(val latestKnownVersionRef: KVEntryReference<CPVersion>, val versionToRevertToRef: KVEntryReference<CPVersion>) : AbstractOperation() {
    override fun getReferencedEntries(): List<KVEntryReference<IKVValue>> = listOf(latestKnownVersionRef, versionToRevertToRef)

    override fun apply(transaction: IWriteTransaction, store: IDeserializingKeyValueStore): IAppliedOperation {
        return Applied(
            captureIntend(transaction.tree, store)
                .restoreIntend(transaction.tree)
                .map { it.apply(transaction, store) }
        )
    }

    override fun captureIntend(tree: ITree, store_: IDeserializingKeyValueStore): IOperationIntend {
        return Intend(captureIntend(tree, collectUndoOps(store_), store_), store_)
    }

    private fun captureIntend(tree: ITree, ops: List<IOperation>, store: IDeserializingKeyValueStore): List<IOperationIntend> {
        val branch = TreePointer(tree)
        return branch.computeWrite {
            ops.map {
                val intend = it.captureIntend(branch.transaction.tree, store)
                it.apply(branch.writeTransaction, store)
                intend
            }
        }
    }

    private fun restoreIntend(tree: ITree, opIntends: List<IOperationIntend>, store: IDeserializingKeyValueStore): List<IOperation> {
        val branch = TreePointer(tree)
        return branch.computeWrite {
            opIntends.flatMap {
                val restoredOps = it.restoreIntend(branch.transaction.tree)
                restoredOps.forEach { restoredOp -> restoredOp.apply(branch.writeTransaction, store) }
                restoredOps
            }
        }
    }

    private fun collectUndoOps(store: IDeserializingKeyValueStore): List<IOperation> {
        val latestKnownVersion = CLVersion(latestKnownVersionRef.getValue(store), store)
        val versionToRevertTo = CLVersion(versionToRevertToRef.getValue(store), store)
        val result = mutableListOf<IOperation>()
        val commonBase = VersionMerger.commonBaseVersion(latestKnownVersion, versionToRevertTo)
        result += getPath(latestKnownVersion, commonBase).map { UndoOp(KVEntryReference(it.data!!)) }
        if (commonBase == null || commonBase.hash != versionToRevertTo.hash) {
            // redo operations on a branch
            result += getPath(versionToRevertTo, commonBase).reversed().flatMap { it.operations }
        }
        return result
    }

    private fun getPath(newerVersion: CLVersion, olderVersionExclusive: CLVersion?): List<CLVersion> {
        val result = mutableListOf<CLVersion>()
        var v = newerVersion
        while (olderVersionExclusive == null || v.hash != olderVersionExclusive.hash) {
            result += v
            v = v.baseVersion ?: break
        }
        return result
    }

    override fun toString(): String {
        return "RevertToOp $latestKnownVersionRef -> $versionToRevertToRef"
    }

    inner class Intend(val intends: List<IOperationIntend>, val store: IDeserializingKeyValueStore) : IOperationIntend {
        override fun getOriginalOp(): IOperation {
            return this@RevertToOp
        }

        override fun restoreIntend(tree: ITree): List<IOperation> {
            return restoreIntend(tree, intends, store)
        }
    }

    inner class Applied(val appliedOps: List<IAppliedOperation>) : IAppliedOperation {
        override fun getOriginalOp(): IOperation {
            return this@RevertToOp
        }

        override fun invert(): List<IOperation> {
            return appliedOps.reversed().flatMap { it.invert() }
        }
    }
}
