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

class DeleteNodeOp(val parentId: Long, val role: String?, val index: Int, val childId: Long) : AbstractOperation() {
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

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): IOperation {
        val adjusted = {
            val a = withAdjustedIndex(indexAdjustments)
            indexAdjustments.nodeRemove(parentId, role, index)
            a
        }
        return when (previous) {
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    previous.undoAdjustment(indexAdjustments)
                    NoOp()
                } else adjusted()
            }
            is AddNewChildOp -> adjusted()
            is MoveNodeOp -> {
                if (previous.childId == childId) {
                    previous.undoAdjustment(indexAdjustments)
                    DeleteNodeOp(previous.targetParentId, previous.targetRole, previous.targetIndex, childId)
                } else adjusted()
            }
            is SetPropertyOp -> adjusted()
            is SetReferenceOp -> adjusted()
            is NoOp -> adjusted()
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeRemoved(parentId, role, index)
    }

    override fun undoAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.undoNodeRemoved(parentId, role, index)
    }

    override fun withAdjustedIndex(indexAdjustments: IndexAdjustments): IOperation {
        return withIndex(indexAdjustments.getAdjustedIndex(parentId, role, index))
    }

    override fun toString(): String {
        return "DeleteNodeOp ${SerializationUtil.longToHex(childId)}, ${SerializationUtil.longToHex(parentId)}.$role[$index]"
    }

    override fun toCode(): String {
        return """t.deleteNode(0x${childId.toString(16)})"""
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
