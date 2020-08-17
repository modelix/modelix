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

class DeleteNodeOp(val position: PositionInRole, val childId: Long) : AbstractOperation() {
    fun withPosition(newPos: PositionInRole): DeleteNodeOp {
        return if (newPos == position) this else DeleteNodeOp(newPos, childId)
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        if (transaction.getAllChildren(childId).count() != 0) {
            throw RuntimeException("Attempt to delete non-leaf node: ${childId.toString(16)}")
        }

        val actualNode = transaction.getChildren(position.nodeId, position.role).toList()[position.index]
        if (actualNode != childId) {
            throw RuntimeException("Node at $position is expected to be ${childId.toString(16)}, but was ${actualNode.toString(16)}")
        }
        val concept = transaction.getConcept(childId)
        transaction.deleteNode(childId)
        return Applied(concept)
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): IOperation {
        val adjusted = {
            val a = withAdjustedPosition(indexAdjustments)
            indexAdjustments.nodeRemoved(a, false, position, childId)
            a
        }
        return when (previous) {
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.removeAdjustment(previous)
                    NoOp()
//                } else if (previous.childId == position.nodeId) {
//                    DeleteNodeOp(PositionInRole(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, 0), this.childId)
                } else adjusted()
            }
            is AddNewChildOp -> adjusted()
            is MoveNodeOp -> {
                if (previous.childId == childId) {
//                    previous.undoAdjustment(indexAdjustments)
                    DeleteNodeOp(previous.targetPosition, childId)
                } else adjusted()
            }
            is SetPropertyOp -> adjusted()
            is SetReferenceOp -> adjusted()
            is NoOp -> adjusted()
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeRemoved(this, true, position, childId)
        indexAdjustments.setKnownPosition(childId, position, true)
    }

    override fun withAdjustedPosition(indexAdjustments: IndexAdjustments): IOperation {
        return withPosition(indexAdjustments.getAdjustedPosition(childId, position))
    }

    override fun toString(): String {
        return "DeleteNodeOp ${SerializationUtil.longToHex(childId)}, $position"
    }

    override fun toCode(): String {
        return """t.deleteNode(0x${childId.toString(16)})"""
    }

    inner class Applied(private val concept: IConcept?) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@DeleteNodeOp

        override fun invert(): IOperation {
            return AddNewChildOp(position, childId, concept)
        }

        override fun toString(): String {
            return super.toString() + ", concept: " + concept
        }
    }
}
