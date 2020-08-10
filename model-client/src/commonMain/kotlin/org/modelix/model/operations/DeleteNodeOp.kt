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

class DeleteNodeOp(val parentId: Long, val role: String?, val index: Int, val childId: Long) : AbstractOperation(), IModifiesChildrenOp {
    fun withIndex(newIndex: Int): DeleteNodeOp {
        return if (newIndex == index) this else DeleteNodeOp(parentId, role, newIndex, childId)
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        if (transaction.getAllChildren(childId).count() != 0) {
            throw RuntimeException("Attempt to delete non-leaf node: $childId")
        }

        val actualNode = transaction.getChildren(parentId, role).toList()[index]
        if (actualNode != childId) {
            throw RuntimeException("Node at ${parentId.toString(16)}.$role[$index] is expected to be ${childId.toString(16)}, but was ${actualNode.toString(16)}")
        }
        val concept = transaction.getConcept(childId)
        transaction.deleteNode(childId)
        return Applied(concept)
    }

    override fun transform(previous: IOperation): IOperation {
        return when (previous) {
            is DeleteNodeOp -> {
                if (parentId == previous.parentId && role == previous.role) {
                    if (previous.index < index) {
                        DeleteNodeOp(parentId, role, index - 1, childId)
                    } else if (previous.index == index) {
                        if (previous.childId != childId) {
                            throw RuntimeException("Both operations delete " + parentId + "." + role + "[" + index + "] but with different expected IDs " + childId + " and " + previous.childId)
                        }
                        NoOp()
                    } else {
                        this
                    }
                } else {
                    this
                }
            }
            is AddNewChildOp -> {
                if (parentId == previous.parentId && role == previous.role) {
                    if (previous.index <= index) {
                        DeleteNodeOp(parentId, role, index + 1, childId)
                    } else {
                        this
                    }
                } else {
                    this
                }
            }
            is MoveNodeOp -> {
                if (previous.childId == childId) {
                    if (previous.sourceParentId != parentId || previous.sourceRole != role || previous.sourceIndex != index) {
                        throw RuntimeException("node " + childId + " expected to be at " + parentId + "." + role + "[" + index + "]" + " but was " + previous.sourceParentId + "." + previous.sourceRole + "[" + previous.sourceIndex + "]")
                    }
                    DeleteNodeOp(previous.targetParentId, previous.targetRole, previous.targetIndex, childId)
                } else if (parentId == previous.targetParentId && role == previous.targetRole) {
                    withIndex(previous.adjustIndex(parentId, role, index))
                } else if (parentId == previous.sourceParentId && role == previous.sourceRole) {
                    withIndex(previous.adjustIndex(parentId, role, index))
                } else {
                    this
                }
            }
            is SetPropertyOp -> this
            is SetReferenceOp -> this
            is NoOp -> this
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
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
        return "DeleteNodeOp ${SerializationUtil.longToHex(childId)}, ${SerializationUtil.longToHex(parentId)}.$role[$index]"
    }

    inner class Applied(private val concept: IConcept?) : AbstractOperation.Applied(), IAppliedOperation {
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
