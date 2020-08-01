package org.modelix.model.operations

import org.modelix.model.api.IConcept
import org.modelix.model.api.IWriteTransaction
import java.text.MessageFormat

class AddNewChildOp(val parentId: Long, val role: String, val index: Int, val childId: Long, val concept: IConcept) : AbstractOperation(), IModifiesChildrenOp {
    fun withIndex(newIndex: Int): AddNewChildOp {
        return if (newIndex == index) this else AddNewChildOp(parentId, role, newIndex, childId, concept)
    }

    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        transaction!!.addNewChild(parentId, role, index, childId, concept)
        return Applied()
    }

    override fun transform(previous: IOperation?): IOperation? {
        return if (previous is AddNewChildOp) {
            val o = previous
            if (o.parentId == parentId && o.role == role) {
                if (o.index <= index) {
                    AddNewChildOp(parentId, role, index + 1, childId, concept)
                } else {
                    this
                }
            } else {
                this
            }
        } else if (previous is DeleteNodeOp) {
            withIndex(previous.adjustIndex(parentId, role, index))
        } else if (previous is MoveNodeOp) {
            withIndex(previous.adjustIndex(parentId, role, index))
        } else if (previous is SetPropertyOp) {
            this
        } else if (previous is SetReferenceOp) {
            this
        } else if (previous is NoOp) {
            this
        } else {
            throw RuntimeException("Unknown type: " + previous!!.javaClass.getName())
        }
    }

    override fun adjustIndex(otherParentId: Long, otherRole: String?, otherIndex: Int): Int {
        var adjustedIndex = otherIndex
        if (otherParentId == parentId && otherRole == role && index <= otherIndex) {
            adjustedIndex++
        }
        return adjustedIndex
    }

    override fun toString(): String {
        return MessageFormat.format("AddNewChildOp {0}, {1}.{2}[{3}], {4}", java.lang.Long.toHexString(childId), java.lang.Long.toHexString(parentId), role, index, concept)
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@AddNewChildOp

        override fun invert(): IOperation? {
            return DeleteNodeOp(parentId, role, index, childId)
        }
    }

}