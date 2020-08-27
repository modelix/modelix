package org.modelix.model.operations

import org.modelix.model.logDebug

class ConcurrentOperations {
    private var concurrentOps: MutableList<IOperation>
    private val opsToTransform: MutableList<IOperation>
    private var concurrentCursor: Int = 0
    private var cursor: Int = 0

    constructor(concurrentOps: List<IOperation>, ops: List<IOperation>) {
        this.concurrentOps = ArrayList(concurrentOps)
        this.opsToTransform = ArrayList(ops)
    }

    fun nextConcurrent() {
        this.concurrentCursor++
        cursor = 0
    }

    fun replaceConcurrentOp(replacement: IOperation) {
        logDebug({ "replaced concurrent: ${this.concurrentOps[concurrentCursor]} --> $replacement" }, ConcurrentOperations::class)
        this.concurrentOps[concurrentCursor] = replacement
    }

    fun getConcurrentOp(): IOperation = concurrentOps[concurrentCursor]

    fun futureOps(): List<IOperation> = opsToTransform.drop(cursor + 1)

    fun adjustFutureOps(f: (IOperation) -> IOperation) {
        for (i in cursor + 1 until opsToTransform.size) {
            val adjustedOp = f(opsToTransform[i])
            if (adjustedOp != opsToTransform[i]) {
                logDebug({ "transformed future: ${opsToTransform[i]} --> $adjustedOp" }, ConcurrentOperations::class)
                opsToTransform[i] = adjustedOp
            }
        }
    }

    fun adjustFutureConcurrentOps(f: (IOperation) -> IOperation) {
        for (i in concurrentCursor + 1 until concurrentOps.size) {
            val adjustedOp = f(concurrentOps[i])
            if (adjustedOp != concurrentOps[i]) {
                logDebug({ "transformed future concurrent: ${concurrentOps[i]} --> $adjustedOp" }, ConcurrentOperations::class)
                concurrentOps[i] = adjustedOp
            }
        }
    }

    fun replace(replacement: List<IOperation>) {
        if (replacement.size != 1 || replacement[0] != getCurrent()) {
            logDebug({ "transformed current: ${getCurrent()} --> $replacement" }, ConcurrentOperations::class)
            opsToTransform.removeAt(cursor)
            opsToTransform.addAll(cursor, replacement)
        }
        cursor += replacement.size
    }

    fun getCurrent(): IOperation = opsToTransform[cursor]

    fun next() {
        cursor++
    }

    fun isDone(): Boolean {
        return cursor >= opsToTransform.size
    }

    fun isConcurrentDone(): Boolean {
        return concurrentCursor >= concurrentOps.size
    }

    fun getAll(): List<IOperation> {
        return ArrayList(opsToTransform)
    }
}
