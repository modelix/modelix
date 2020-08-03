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
import java.text.MessageFormat

class DeleteNodeOp(val parentId: Long, val role: String, val index: Int, val childId: Long) : AbstractOperation(), IModifiesChildrenOp {
    fun withIndex(newIndex: Int): DeleteNodeOp {
        return if (newIndex == index) this else DeleteNodeOp(parentId, role, newIndex, childId)
    }

    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        val concept = transaction!!.getConcept(childId)
        transaction.deleteNode(childId)
        return Applied(concept!!)
    }

    override fun transform(previous: IOperation?): IOperation? {
        return if (previous is DeleteNodeOp) {
            val o = previous
            if (parentId == o.parentId && role == o.role) {
                if (o.index < index) {
                    DeleteNodeOp(parentId, role, index - 1, childId)
                } else if (o.index == index) {
                    if (o.childId != childId) {
                        throw RuntimeException("Both operations delete " + parentId + "." + role + "[" + index + "] but with different expected IDs " + childId + " and " + o.childId)
                    }
                    NoOp()
                } else {
                    this
                }
            } else {
                this
            }
        } else if (previous is AddNewChildOp) {
            val o = previous
            if (parentId == o.parentId && role == o.role) {
                if (o.index <= index) {
                    DeleteNodeOp(parentId, role, index + 1, childId)
                } else {
                    this
                }
            } else {
                this
            }
        } else if (previous is MoveNodeOp) {
            val o = previous
            if (o.childId == childId) {
                if (o.sourceParentId != parentId || o.sourceRole != role || o.sourceIndex != index) {
                    throw RuntimeException("node " + childId + " expected to be at " + parentId + "." + role + "[" + index + "]" + " but was " + o.sourceParentId + "." + o.sourceRole + "[" + o.sourceIndex + "]")
                }
                DeleteNodeOp(o.targetParentId, o.targetRole, o.targetIndex, childId)
            } else if (parentId == o.targetParentId && role == o.targetRole) {
                withIndex(o.adjustIndex(parentId, role, index))
            } else if (parentId == o.sourceParentId && role == o.sourceRole) {
                if (o.sourceIndex == index) {
                    throw RuntimeException("Node at " + parentId + "." + role + "[" + index + "] is expected to be " + childId + ", but was " + o.childId)
                } else {
                    withIndex(o.adjustIndex(parentId, role, index))
                }
            } else {
                this
            }
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
        if (otherParentId == parentId && otherRole == role && index < otherIndex) {
            adjustedIndex--
        }
        return adjustedIndex
    }

    override fun toString(): String {
        return MessageFormat.format("DeleteNodeOp {0}, {1}.{2}[{3}]", java.lang.Long.toHexString(childId), java.lang.Long.toHexString(parentId), role, index)
    }

    inner class Applied(private val concept: IConcept) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@DeleteNodeOp

        override fun invert(): IOperation {
            return AddNewChildOp(parentId, role, index, childId, concept)
        }

        override fun toString(): String {
            return super.toString() + ", concept: " + concept
        }
    }
}
