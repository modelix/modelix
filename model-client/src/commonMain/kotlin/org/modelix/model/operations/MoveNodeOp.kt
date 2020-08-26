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

class MoveNodeOp(val childId: Long, val sourcePosition: PositionInRole, val targetPosition: PositionInRole, val targetAncestors: LongArray?) : AbstractOperation() {
    fun withPos(newSource: PositionInRole, newTarget: PositionInRole, newTargetAncestors: LongArray): MoveNodeOp {
        return if (newSource == sourcePosition && newTarget == targetPosition && newTargetAncestors.contentEquals(targetAncestors)) {
            this
        } else {
            MoveNodeOp(childId, newSource, newTarget, newTargetAncestors)
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

        if (targetAncestors != null) {
            val actualTargetAncestors = getAncestors(targetPosition.nodeId, transaction)
            if (!actualTargetAncestors.contentEquals(targetAncestors)) {
                throw RuntimeException("Ancestors expected to be [${targetAncestors?.joinToString(", ") { it.toString(16) }}], but was [${actualTargetAncestors.joinToString(", ") { it.toString(16) }}]")
            }
        }

        val sourceAncestors = getAncestors(sourcePosition.nodeId, transaction)
        transaction.moveChild(targetPosition.nodeId, targetPosition.role, targetPosition.index, childId)
        return Applied(sourceAncestors)
    }

    private fun getAncestors(nodeId: Long, transaction: IWriteTransaction): LongArray {
        val ancestors: MutableList<Long> = ArrayList()
        var ancestor: Long = transaction.getParent(nodeId)
        while (ancestor != 0L) {
            ancestors.add(ancestor)
            ancestor = transaction.getParent(ancestor)
        }
        return ancestors.toLongArray()
    }

    fun getActualTargetPosition(): PositionInRole {
        return if (sourcePosition.roleInNode == targetPosition.roleInNode && targetPosition.index > sourcePosition.index)
            targetPosition.withIndex(targetPosition.index - 1)
        else targetPosition
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): List<IOperation> {
        val adjusted = {
            val a = withAdjustedPosition(indexAdjustments)
            if (a.childId == a.targetPosition.nodeId || a.targetAncestors != null && a.targetAncestors.contains(a.childId)) {
                val actualSourcePos = indexAdjustments.getAdjustedPosition(childId, sourcePosition)
                indexAdjustments.redirectedMove(this, sourcePosition, targetPosition, sourcePosition)
                indexAdjustments.setKnownPosition(childId, actualSourcePos)
                NoOp()
            } else {
                indexAdjustments.nodeMoved(a, false, sourcePosition, a.getActualTargetPosition())
                indexAdjustments.setKnownPosition(childId, a.getActualTargetPosition())
                loadKnownParents(indexAdjustments)
                a
            }
        }
        return when (previous) {
            is AddNewChildOp -> listOf(adjusted())
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.nodeRemoved(this, true, targetPosition, childId)
                    listOf(NoOp())
                } else if (targetPosition.nodeId == previous.childId) {
                    val redirectedMoveOp = MoveNodeOp(
                        childId,
                        indexAdjustments.getAdjustedPosition(sourcePosition),
                        PositionInRole(DETACHED_ROLE, 0),
                        indexAdjustments.getKnownAncestors(DETACHED_ROLE.nodeId)
                    )
                    indexAdjustments.redirectedMove(this, redirectedMoveOp.sourcePosition, targetPosition, redirectedMoveOp.targetPosition)
                    indexAdjustments.setKnownPosition(childId, redirectedMoveOp.targetPosition)
                    redirectedMoveOp.loadKnownParents(indexAdjustments)
                    listOf(redirectedMoveOp)
                } else listOf(adjusted())
            }
            is MoveNodeOp -> listOf(adjusted())
            is SetPropertyOp -> listOf(adjusted())
            is SetReferenceOp -> listOf(adjusted())
            is NoOp -> listOf(adjusted())
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeMoved(this, true, sourcePosition, targetPosition)
        indexAdjustments.setKnownPosition(childId, getActualTargetPosition())
        loadKnownParents(indexAdjustments)
    }

    override fun loadKnownData(indexAdjustments: IndexAdjustments) {
        loadKnownParents(indexAdjustments, false)
    }

    private fun loadKnownParents(indexAdjustments: IndexAdjustments, afterApply: Boolean = true) {
        if (afterApply) {
            indexAdjustments.setKnownParent(childId, targetPosition.nodeId)
        } else {
            indexAdjustments.setKnownParent(childId, sourcePosition.nodeId)
        }
        if (targetAncestors != null) {
            var child = targetPosition.nodeId
            for (parent in targetAncestors) {
                indexAdjustments.setKnownParent(child, parent)
                child = parent
            }
        }
    }

    override fun withAdjustedPosition(indexAdjustments: IndexAdjustments): MoveNodeOp {
        val newTargetPos = indexAdjustments.getAdjustedPositionForInsert(targetPosition)
        return withPos(
            indexAdjustments.getAdjustedPosition(childId, sourcePosition),
            newTargetPos,
            indexAdjustments.getKnownAncestors(newTargetPos.nodeId)
        )
    }

    override fun toString(): String {
        return "MoveNodeOp ${childId.toString(16)}, $sourcePosition->$targetPosition"
    }

    override fun toCode(): String {
        return """t.moveChild(0x${targetPosition.nodeId.toString(16)}, "${targetPosition.role}", ${targetPosition.index}, 0x${childId.toString(16)})"""
    }

    inner class Applied(val sourceAncestors: LongArray) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@MoveNodeOp

        override fun invert(): IOperation {
            return MoveNodeOp(childId, targetPosition, sourcePosition, sourceAncestors)
        }
    }
}
