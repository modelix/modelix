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
import org.modelix.model.lazy.IDeserializingKeyValueStore

class MoveNodeOp(val childId: Long, val targetPosition: PositionInRole) : AbstractOperation() {
    fun withPos(newTarget: PositionInRole): MoveNodeOp {
        return if (newTarget == targetPosition) {
            this
        } else {
            MoveNodeOp(childId, newTarget)
        }
    }

    override fun apply(transaction: IWriteTransaction, store: IDeserializingKeyValueStore): IAppliedOperation {
        val sourcePosition = getNodePosition(transaction.tree, childId)
        transaction.moveChild(targetPosition.nodeId, targetPosition.role, targetPosition.index, childId)
        return Applied(sourcePosition)
    }

    override fun toString(): String {
        return "MoveNodeOp ${childId.toString(16)}->$targetPosition"
    }

    override fun toCode(): String {
        return """t.moveChild(0x${targetPosition.nodeId.toString(16)}, "${targetPosition.role}", ${targetPosition.index}, 0x${childId.toString(16)})"""
    }

    inner class Applied(val sourcePosition: PositionInRole) : AbstractOperation.Applied(), IAppliedOperation {
        override fun getOriginalOp() = this@MoveNodeOp

        override fun invert(): List<IOperation> {
            return listOf(MoveNodeOp(childId, sourcePosition))
        }
    }

    override fun captureIntend(tree: ITree, store: IDeserializingKeyValueStore): IOperationIntend {
        val capturedTargetPosition = CapturedInsertPosition(
            targetPosition.index,
            tree.getChildren(targetPosition.nodeId, targetPosition.role).toList().toLongArray()
        )

        return Intend(capturedTargetPosition)
    }

    inner class Intend(val capturedTargetPosition: CapturedInsertPosition) : IOperationIntend {
        override fun restoreIntend(tree: ITree): List<IOperation> {
            if (!tree.containsNode(childId)) return listOf(NoOp())
            val newSourcePosition = getNodePosition(tree, childId)
            if (!tree.containsNode(targetPosition.nodeId)) return listOf(
                withPos(getDetachedNodesEndPosition(tree))
            )
            if (getAncestors(tree, targetPosition.nodeId).contains(childId)) return listOf(NoOp())
            val newTargetPosition = if (tree.containsNode(targetPosition.nodeId)) {
                val newTargetIndex = capturedTargetPosition.findIndex(tree.getChildren(targetPosition.nodeId, targetPosition.role).toList().toLongArray())
                targetPosition.withIndex(newTargetIndex)
            } else {
                getDetachedNodesEndPosition(tree)
            }
            return listOf(withPos(newTargetPosition))
        }

        override fun getOriginalOp() = this@MoveNodeOp
    }
}
