package org.modelix.model.api

import java.util.function.Supplier

interface IBranch {
    fun runRead(runnable: Runnable?)
    fun <T> computeRead(computable: Supplier<T>?): T
    fun runWrite(runnable: Runnable?)
    fun <T> computeWrite(computable: Supplier<T>?): T
    fun canRead(): Boolean
    fun canWrite(): Boolean
    val transaction: ITransaction?
    val readTransaction: IReadTransaction?
    val writeTransaction: IWriteTransaction?
    fun addListener(l: IBranchListener?)
    fun removeListener(l: IBranchListener?)
}
