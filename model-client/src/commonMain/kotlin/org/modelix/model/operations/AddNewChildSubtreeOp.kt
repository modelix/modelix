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
import org.modelix.model.lazy.*
import org.modelix.model.persistent.CPTree
import org.modelix.model.persistent.IKVValue
import org.modelix.model.persistent.SerializationUtil

class AddNewChildSubtreeOp(val resultTreeHash: KVEntryReference<CPTree>, val position: PositionInRole, val childId: Long, val concept: IConcept?) : AbstractOperation() {

    override fun getReferencedEntries(): List<KVEntryReference<IKVValue>> = listOf(resultTreeHash)

    fun withPosition(newPos: PositionInRole): AddNewChildSubtreeOp {
        return if (newPos == position) this else AddNewChildSubtreeOp(resultTreeHash, newPos, childId, concept)
    }

    override fun apply(transaction: IWriteTransaction, store: IDeserializingKeyValueStore): IAppliedOperation {
        decompress(store) { it.apply(transaction, store) }
        return Applied(store)
    }

    fun decompress(store: IDeserializingKeyValueStore, opsVisitor: (IOperation) -> Unit) {
        val resultTree = getResultTree(store)
        for (node in resultTree.getDescendants(childId, true)) {
            val pos = PositionInRole(
                node.parentId,
                node.roleInParent,
                resultTree.getChildren(node.parentId, node.roleInParent).indexOf(node.id)
            )
            decompressNode(resultTree, node, pos, false, opsVisitor)
        }
        for (node in resultTree.getDescendants(childId, true)) {
            decompressNode(resultTree, node, null, true, opsVisitor)
        }
    }

    private fun getResultTree(store: IDeserializingKeyValueStore): CLTree = CLTree(resultTreeHash.getValue(store), store)

    private fun decompressNode(tree: ITree, node: CLNode, position: PositionInRole?, references: Boolean, opsVisitor: (IOperation) -> Unit) {
        if (references) {
            for (role in node.getData().referenceRoles) {
                opsVisitor(SetReferenceOp(node.id, role, tree.getReferenceTarget(node.id, role)))
            }
        } else {
            opsVisitor(AddNewChildOp(position!!, node.id, tree.getConcept(node.id)))
            for (property in node.getData().propertyRoles) {
                opsVisitor(SetPropertyOp(node.id, property, node.getData().getPropertyValue(property)))
            }
        }
    }

    override fun toString(): String {
        return "AddNewChildSubtreeOp ${resultTreeHash.getHash()}, ${SerializationUtil.longToHex(childId)}, $position, $concept"
    }

    override fun toCode(): String {
        return """t.addNewChildSubtree(${resultTreeHash.getHash()}, 0x${position.nodeId.toString(16)}, "${position.role}", ${position.index}, 0x${childId.toString(16)}, null)"""
    }

    inner class Applied(val store: IDeserializingKeyValueStore) : AbstractOperation.Applied(), IAppliedOperation {
        override fun getOriginalOp() = this@AddNewChildSubtreeOp

        override fun invert(): List<IOperation> {
            val resultTree = getResultTree(store)
            return resultTree.getDescendants(childId, true).map { DeleteNodeOp(it.id) }.asReversed()
        }
    }

    override fun captureIntend(tree: ITree, store: IDeserializingKeyValueStore): IOperationIntend {
        val children = tree.getChildren(position.nodeId, position.role)
        return Intend(
            CapturedInsertPosition(position.index, children.toList().toLongArray())
        )
    }

    inner class Intend(val capturedPosition: CapturedInsertPosition) : IOperationIntend {
        override fun restoreIntend(tree: ITree): List<IOperation> {
            if (tree.containsNode(position.nodeId)) {
                val newIndex = capturedPosition.findIndex(tree.getChildren(position.nodeId, position.role).toList().toLongArray())
                return listOf(withPosition(position.withIndex(newIndex)))
            } else {
                return listOf(withPosition(getDetachedNodesEndPosition(tree)))
            }
        }

        override fun getOriginalOp() = this@AddNewChildSubtreeOp
    }
}
