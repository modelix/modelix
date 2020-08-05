/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.operations

import org.modelix.model.api.IConcept
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.persistent.SerializationUtil

class AddNewChildOp(val parentId: Long, val role: String?, val index: Int, val childId: Long, val concept: IConcept?) : AbstractOperation(), IModifiesChildrenOp {
    fun withIndex(newIndex: Int): AddNewChildOp {
        return if (newIndex == index) this else AddNewChildOp(parentId, role, newIndex, childId, concept)
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        transaction.addNewChild(parentId, role, index, childId, concept)
        return Applied()
    }

    override fun transform(previous: IOperation): IOperation {
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
            throw RuntimeException("Unknown type: " + previous::class.simpleName)
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
        return "AddNewChildOp ${SerializationUtil.longToHex(childId)}, ${SerializationUtil.longToHex(parentId)}.${role}[${index}], ${concept}"
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@AddNewChildOp

        override fun invert(): IOperation {
            return DeleteNodeOp(parentId, role, index, childId)
        }
    }
}
