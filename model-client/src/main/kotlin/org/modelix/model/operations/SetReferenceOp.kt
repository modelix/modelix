package org.modelix.model.operations

import org.modelix.model.api.INodeReference
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.operations.SetReferenceOp
import java.text.MessageFormat

class SetReferenceOp(val sourceId: Long, val role: String, val target: INodeReference) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        val oldValue = transaction!!.getReferenceTarget(sourceId, role)
        transaction.setReferenceTarget(sourceId, role, target)
        return Applied(oldValue!!)
    }

    override fun transform(previous: IOperation?): IOperation? {
        return if (previous is SetPropertyOp) {
            this
        } else if (previous is SetReferenceOp) {
            this
        } else if (previous is AddNewChildOp) {
            this
        } else if (previous is DeleteNodeOp) {
            if (sourceId == previous.parentId) {
                NoOp()
            } else {
                this
            }
        } else if (previous is MoveNodeOp) {
            this
        } else {
            throw RuntimeException("Unknown type: " + previous!!.javaClass.getName())
        }
    }

    override fun toString(): String {
        return MessageFormat.format("SetReferenceOp {0}.{1} = {2}", java.lang.Long.toHexString(sourceId), role, target)
    }

    inner class Applied(private val oldValue: INodeReference) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@SetReferenceOp

        override fun invert(): IOperation? {
            return SetReferenceOp(sourceId, role, oldValue)
        }

        override fun toString(): String {
            return super.toString() + ", oldValue: " + oldValue
        }

    }

}