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

class DeleteNodeOp(val childId: Long) : AbstractOperation(), IOperationIntend {

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        if (transaction.getAllChildren(childId).count() != 0) {
            throw RuntimeException("Attempt to delete non-leaf node: ${childId.toString(16)}")
        }

        val concept = transaction.getConcept(childId)
        val position = getNodePosition(transaction.tree, childId)
        transaction.deleteNode(childId)
        return Applied(position, concept)
    }

    override fun toString(): String {
        return "DeleteNodeOp ${SerializationUtil.longToHex(childId)}"
    }

    override fun toCode(): String {
        return """t.deleteNode(0x${childId.toString(16)})"""
    }

    override fun restoreIntend(tree: ITree): List<IOperation> {
        if (!tree.containsNode(childId)) return listOf(NoOp())
        val allChildren = tree.getAllChildren(childId).toList()
        if (allChildren.isNotEmpty()) {
            val targetPos = getDetachedNodesEndPosition(tree)
            return allChildren
                .reversed()
                .map { MoveNodeOp(it, targetPos) }
                .plus(this)
        }
        return listOf(this)
    }

    override fun captureIntend(tree: ITree): IOperationIntend {
        return this
    }

    override fun getOriginalOp() = this

    inner class Applied(val position: PositionInRole, private val concept: IConcept?) : AbstractOperation.Applied(), IAppliedOperation {
        override fun getOriginalOp() = this@DeleteNodeOp

        override fun invert(): IOperation {
            return AddNewChildOp(position, childId, concept)
        }

        override fun toString(): String {
            return super.toString() + ", concept: " + concept
        }
    }
}
