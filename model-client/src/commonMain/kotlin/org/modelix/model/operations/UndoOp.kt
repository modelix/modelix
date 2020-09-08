package org.modelix.model.operations

import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.api.TreePointer
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.IDeserializingKeyValueStore

class UndoOp(val versionHash: String) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        throw UnsupportedOperationException("UndoOp is expected to be expanded into the single operations that can be applied on the tree")
    }

    override fun captureIntend(tree: ITree, store: IDeserializingKeyValueStore): IOperationIntend {
        val versionToUndo = CLVersion.loadFromHash(versionHash, store)!!
        val originalAppliedOps = getAppliedOps(versionToUndo)
        val invertedOps = originalAppliedOps.reversed().flatMap { it.invert() }
        val invertedOpIntends = captureIntend(versionToUndo.tree, invertedOps, store)
        return Intend(invertedOpIntends)
    }

    private fun getAppliedOps(version: CLVersion): List<IAppliedOperation> {
        val tree = version.baseVersion!!.tree
        val branch = TreePointer(tree)
        return branch.computeWrite {
            version.operations.map { it.apply(branch.writeTransaction) }
        }
    }

    private fun captureIntend(tree: ITree, ops: List<IOperation>, store: IDeserializingKeyValueStore): List<IOperationIntend> {
        val branch = TreePointer(tree)
        return branch.computeWrite {
            ops.map {
                val intend = it.captureIntend(branch.transaction.tree, store)
                it.apply(branch.writeTransaction)
                intend
            }
        }
    }

    private fun restoreIntend(tree: ITree, opIntends: List<IOperationIntend>): List<IOperation> {
        val branch = TreePointer(tree)
        return branch.computeWrite {
            opIntends.flatMap {
                val restoredOps = it.restoreIntend(branch.transaction.tree)
                restoredOps.forEach { restoredOp -> restoredOp.apply(branch.writeTransaction) }
                restoredOps
            }
        }
    }

    inner class Intend(val intends: List<IOperationIntend>) : IOperationIntend {
        override fun getOriginalOp(): IOperation {
            return this@UndoOp
        }

        override fun restoreIntend(tree: ITree): List<IOperation> {
            return restoreIntend(tree, intends)
        }
    }
}
