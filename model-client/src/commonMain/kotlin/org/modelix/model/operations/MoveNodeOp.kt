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

import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction

class MoveNodeOp(val childId: Long, val sourcePosition: PositionInRole, val targetPosition: PositionInRole) : AbstractOperation() {
    fun withIndex(newSourceIndex: Int, newTargetIndex: Int): MoveNodeOp {
        return if (newSourceIndex == sourcePosition.index && newTargetIndex == targetPosition.index) {
            this
        } else {
            MoveNodeOp(childId, sourcePosition.withIndex(newSourceIndex), targetPosition.withIndex(newTargetIndex))
        }
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        transaction.moveChild(targetPosition.nodeId, targetPosition.role, targetPosition.index, childId)
        return Applied()
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): IOperation {
        val adjusted = {
            val a = withAdjustedIndex(indexAdjustments)
            indexAdjustments.nodeAdd(targetPosition)
            indexAdjustments.nodeRemove(sourcePosition)
            a
        }
        return when (previous) {
            is AddNewChildOp -> adjusted()
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.nodeRemoved(targetPosition)
                    NoOp()
                } else if (sourcePosition.nodeId == previous.childId) {
                    indexAdjustments.undoConcurrentNodeAdd(PositionInRole(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, 0))
                    MoveNodeOp(childId, PositionInRole(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, 0), targetPosition)
                } else if (targetPosition.nodeId == previous.childId) {
                    indexAdjustments.concurrentNodeAdd(PositionInRole(DETACHED_ROLE, 0))
                    MoveNodeOp(childId, sourcePosition, PositionInRole(DETACHED_ROLE, 0))
                } else adjusted()
            }
            is MoveNodeOp -> {
                if (previous.childId == childId) {
                    previous.undoAdjustment(indexAdjustments)
                    MoveNodeOp(
                        childId,
                        previous.targetPosition,
                        targetPosition
                    )
                } else adjusted()
            }
            is SetPropertyOp -> adjusted()
            is SetReferenceOp -> adjusted()
            is NoOp -> adjusted()
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeRemoved(sourcePosition)
        indexAdjustments.concurrentNodeAdd(targetPosition)
    }

    override fun undoAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.undoConcurrentNodeAdd(targetPosition)
        indexAdjustments.undoNodeRemoved(sourcePosition)
    }

    override fun withAdjustedIndex(indexAdjustments: IndexAdjustments): MoveNodeOp {
        return withIndex(
            indexAdjustments.getAdjustedIndex(sourcePosition),
            indexAdjustments.getAdjustedIndex(targetPosition, true)
        )
    }

    override fun toString(): String {
        return "MoveNodeOp ${childId.toString(16)}, $sourcePosition->$targetPosition"
    }

    override fun toCode(): String {
        return """t.moveChild(0x${targetPosition.nodeId.toString(16)}, "${targetPosition.role}", ${targetPosition.index}, 0x${childId.toString(16)})"""
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@MoveNodeOp

        override fun invert(): IOperation {
            return MoveNodeOp(childId, targetPosition, sourcePosition)
        }
    }
}
