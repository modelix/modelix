package org.modelix.model.operations

import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction

class UndoOp(val versionId: String) : AbstractOperation(), IOperationIntend {
    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        TODO("Not yet implemented")
    }

    override fun captureIntend(tree: ITree): IOperationIntend {
        return this
    }

    override fun getOriginalOp(): IOperation {
        return this
    }

    override fun restoreIntend(tree: ITree): List<IOperation> {
        return listOf(this)
    }
}
