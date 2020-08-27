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
import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.persistent.SerializationUtil

class DeleteNodeOp(val position: PositionInRole, val childId: Long) : AbstractOperation(), IOperationIntend {
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

    override fun transform(previous: IOperation, context: ConcurrentOperations): List<IOperation> {
        when (previous) {
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    return listOf(NoOp())
                }
            }
            is AddNewChildOp -> {
                if (previous.position.nodeId == childId) {
                    val moveOp = MoveNodeOp(
                        previous.childId,
                        previous.position,
                        PositionInRole(DETACHED_ROLE, 0),
                        longArrayOf()
                    )
                    context.adjustFutureOps { it.withAdjustedPositions(NodeInsertAdjustment(moveOp.targetPosition)) }
                    return listOf(moveOp, this)
                }
            }
            is MoveNodeOp -> {
                if (previous.targetPosition.nodeId == childId) {
                    val moveOp = MoveNodeOp(
                        previous.childId,
                        previous.targetPosition,
                        PositionInRole(DETACHED_ROLE, 0),
                        longArrayOf()
                    )
                    if (moveOp.sourcePosition != moveOp.targetPosition) {
                        context.adjustFutureOps { it.withAdjustedPositions(NodeInsertAdjustment(moveOp.targetPosition)) }
                        context.adjustFutureOps { it.withAdjustedNodeLocation(moveOp.childId, moveOp.targetPosition) }
                        context.adjustFutureConcurrentOps { it.withAdjustedNodeLocation(moveOp.childId, moveOp.targetPosition) }
                        context.replaceConcurrentOp(previous.withPos(
                            previous.sourcePosition,
                            moveOp.targetPosition,
                            moveOp.targetAncestors
                        ))
                        return listOf(moveOp, this)
                    }
                }
            }
        }
        return listOf(this)
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeRemoved(this, true, position, childId)
        indexAdjustments.setKnownPosition(childId, position, true)
    }

    override fun withAdjustedPosition(indexAdjustments: IndexAdjustments): DeleteNodeOp {
        return withPosition(indexAdjustments.getAdjustedPosition(childId, position))
    }

    override fun withAdjustedPositions(adjustment: IndexAdjustment): IOperation {
        return withPosition(adjustment.adjust(position, false))
    }

    override fun withAdjustedNodeLocation(nodeId: Long, position: PositionInRole): IOperation {
        return if (nodeId == this.childId) withPosition(position) else this
    }

    override fun toString(): String {
        return "DeleteNodeOp ${SerializationUtil.longToHex(childId)}, $position"
    }

    override fun toCode(): String {
        return """t.deleteNode(0x${childId.toString(16)})"""
    }

    override fun restoreIntend(tree: ITree): List<IOperation> {
        if (!tree.containsNode(childId)) return listOf(NoOp())
        val adjustedDelete = withPosition(getNodePosition(tree, childId))
        val allChildren = tree.getAllChildren(childId).toList()
        if (allChildren.isNotEmpty()) {
            var index = tree.getChildren(DETACHED_ROLE.nodeId, DETACHED_ROLE.role).count()
            return allChildren
                .map { MoveNodeOp(it, getNodePosition(tree, it), PositionInRole(DETACHED_ROLE, index++), null) }
                .plus(adjustedDelete)
        }
        return listOf(adjustedDelete)
    }

    override fun captureIntend(tree: ITree): IOperationIntend {
        return this
    }

    override fun getOriginalOp() = this

    inner class Applied(private val concept: IConcept?) : AbstractOperation.Applied(), IAppliedOperation {
        override fun getOriginalOp() = this@DeleteNodeOp

        override fun invert(): IOperation {
            return AddNewChildOp(position, childId, concept)
        }

        override fun toString(): String {
            return super.toString() + ", concept: " + concept
        }
    }
}
