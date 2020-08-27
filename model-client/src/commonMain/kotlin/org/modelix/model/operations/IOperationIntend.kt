package org.modelix.model.operations

import org.modelix.model.api.ITree

interface IOperationIntend {
    fun getOriginalOp(): IOperation
    fun restoreIntend(tree: ITree): List<IOperation>
}