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

import org.modelix.model.api.IWriteTransaction

class MoveNodeOp(val childId: Long, val sourcePosition: PositionInRole, val targetPosition: PositionInRole) : AbstractOperation() {
    fun withPos(newSource: PositionInRole, newTarget: PositionInRole): MoveNodeOp {
        return if (newSource == sourcePosition && newTarget == targetPosition) {
            this
        } else {
            MoveNodeOp(childId, newSource, newTarget)
        }
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        val children = transaction.getChildren(sourcePosition.nodeId, sourcePosition.role).toList()
        if (sourcePosition.index >= children.size) {
            throw RuntimeException("Invalid source index ${sourcePosition.index}. There are only ${children.size} children in ${sourcePosition.roleInNode}")
        }
        val actualNode = children[sourcePosition.index]
        if (actualNode != childId) {
            throw RuntimeException("Node at $sourcePosition is expected to be ${childId.toString(16)}, but was ${actualNode.toString(16)}")
        }
        transaction.moveChild(targetPosition.nodeId, targetPosition.role, targetPosition.index, childId)
        return Applied()
    }

    fun getActualTargetPosition(): PositionInRole {
        return if (sourcePosition.roleInNode == targetPosition.roleInNode && targetPosition.index > sourcePosition.index)
            targetPosition.withIndex(targetPosition.index - 1)
        else targetPosition
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): List<IOperation> {
        val adjusted = {
            val a = withAdjustedPosition(indexAdjustments)
            indexAdjustments.nodeMoved(a, false, sourcePosition, targetPosition)
            indexAdjustments.setKnownPosition(childId, a.getActualTargetPosition())
            a
        }
        return when (previous) {
            is AddNewChildOp -> listOf(adjusted())
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.nodeRemoved(this, true, targetPosition, childId)
                    listOf(NoOp())
                } else if (targetPosition.nodeId == previous.childId) {
                    val redirectedTarget = PositionInRole(DETACHED_ROLE, 0)
                    indexAdjustments.redirectedMove(this, sourcePosition, targetPosition, redirectedTarget)
                    indexAdjustments.setKnownPosition(childId, redirectedTarget)
                    listOf(MoveNodeOp(childId, sourcePosition, redirectedTarget))
                } else listOf(adjusted())
            }
            is MoveNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.setKnownPosition(childId, targetPosition)
                    listOf(
                        MoveNodeOp(
                            childId,
                            previous.getActualTargetPosition(),
                            targetPosition
                        )
                    )
                } else if (previous.childId == this.targetPosition.nodeId && previous.targetPosition.nodeId == this.childId) {
                    // This avoids the exception: ${previous.childId} is a descendant of ${this.childId}
                    // This exception can still happen (if there are any intermediate ancestors),
                    // but we don't have more information to prevent them.
                    val actualSourcePos = indexAdjustments.getAdjustedPosition(childId, sourcePosition)
                    indexAdjustments.redirectedMove(this, sourcePosition, targetPosition, sourcePosition)
                    indexAdjustments.setKnownPosition(childId, actualSourcePos)
                    listOf(NoOp())
                } else listOf(adjusted())
            }
            is SetPropertyOp -> listOf(adjusted())
            is SetReferenceOp -> listOf(adjusted())
            is NoOp -> listOf(adjusted())
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeMoved(this, true, sourcePosition, targetPosition)
        indexAdjustments.setKnownPosition(childId, getActualTargetPosition())
    }

    override fun withAdjustedPosition(indexAdjustments: IndexAdjustments): MoveNodeOp {
        return withPos(
            indexAdjustments.getAdjustedPosition(childId, sourcePosition),
            indexAdjustments.getAdjustedPositionForInsert(targetPosition)
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
