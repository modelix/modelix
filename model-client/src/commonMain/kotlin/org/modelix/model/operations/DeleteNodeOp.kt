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

import org.modelix.model.api.*
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.persistent.SerializationUtil

class DeleteNodeOp(val childId: Long) : AbstractOperation(), IOperationIntend {

    override fun apply(t: IWriteTransaction, store: IDeserializingKeyValueStore): IAppliedOperation {
        if (t.getAllChildren(childId).count() != 0) {
            throw RuntimeException("Attempt to delete non-leaf node: ${childId.toString(16)}")
        }

        val concept = t.getConceptReference(childId)
        val position = getNodePosition(t.tree, childId)
        val properties = t.getPropertyRoles(childId).associateWith { t.getProperty(childId, it) }
        val references = t.getReferenceRoles(childId).associateWith { t.getReferenceTarget(childId, it) }
        t.deleteNode(childId)
        return Applied(position, concept, properties, references)
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

    override fun captureIntend(tree: ITree, store: IDeserializingKeyValueStore): IOperationIntend {
        return this
    }

    override fun getOriginalOp() = this

    inner class Applied(
        val position: PositionInRole,
        val concept: IConceptReference?,
        val properties: Map<String, String?>,
        val references: Map<String, INodeReference?>
    ) : AbstractOperation.Applied(), IAppliedOperation {
        override fun getOriginalOp() = this@DeleteNodeOp

        override fun invert(): List<IOperation> {
            return listOf(AddNewChildOp(position, childId, concept)) +
                properties.map { SetPropertyOp(childId, it.key, it.value) } +
                references.map { SetReferenceOp(childId, it.key, it.value) }
        }

        override fun toString(): String {
            return super.toString() + ", concept: " + concept
        }
    }
}
