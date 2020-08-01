package org.modelix.model.operations

import org.modelix.model.api.IWriteTransaction
import java.text.MessageFormat

class SetPropertyOp(val nodeId: Long, val role: String, val value: String) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        val oldValue = transaction!!.getProperty(nodeId, role)
        transaction.setProperty(nodeId, role, value)
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
            if (nodeId == previous.childId) {
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
        return MessageFormat.format("SetPropertOp {0}.{1} = {2}", java.lang.Long.toHexString(nodeId), role, value)
    }

    inner class Applied(private val oldValue: String) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@SetPropertyOp

        override fun invert(): IOperation? {
            return SetPropertyOp(nodeId, role, oldValue)
        }

        override fun toString(): String {
            return super.toString() + ", oldValue: " + oldValue
        }
    }
}
