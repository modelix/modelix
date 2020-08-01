package org.modelix.model.operations

import org.modelix.model.api.IWriteTransaction

interface IOperation {
    fun apply(transaction: IWriteTransaction?): IAppliedOperation?

    /**
     * The 'previous' operation is the one that is inserted before this operation
     * in the history of operations applied to the model.
     * 'this' operation was created for a version that doesn't have 'previous' applied and now
     * 'this' needs to be replaced with an operation that applies the same intended change
     * on a model that was modified by 'previous' in the mean time.
     */
    fun transform(previous: IOperation?): IOperation?
}