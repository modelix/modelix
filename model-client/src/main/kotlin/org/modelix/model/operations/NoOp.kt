package org.modelix.model.operations

import org.modelix.model.api.IWriteTransaction

class NoOp : AbstractOperation(), IAppliedOperation {
    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        return this
    }

    override fun transform(previous: IOperation?): IOperation? {
        return null
    }

    override val originalOp: IOperation
        get() = this

    override fun invert(): IOperation? {
        return this
    }
}
