package org.modelix.model.operations

interface IAppliedOperation {
    val originalOp: IOperation?
    fun invert(): IOperation?
}