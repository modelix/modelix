/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.lazy

import org.modelix.model.operations.*
import org.modelix.model.persistent.CPTree

class OperationsCompressor(val resultTree: KVEntryReference<CPTree>) {

    /**
     * Optimize for bulk imports
     * If a whole subtree is imported then there are a lot of operations where only the AddNewChildOp for the subtree
     * root has the potential to cause any conflict.
     * In that case we replace all of these operation with one AddNewChildSubtreeOp that references the resulting
     * subtree in the new version. We don't lose any information and can reconstruct the original operations if needed.
     */
    fun compressOperations(ops: Array<IOperation>): Array<IOperation> {
        if (ops.size <= CLVersion.INLINED_OPS_LIMIT) return ops

        val compressedOps: MutableList<IOperation> = ArrayList()
        val createdNodes: MutableSet<Long> = HashSet()

        for (op in ops) {
            when (op) {
                is UndoOp, is AddNewChildSubtreeOp, is DeleteNodeOp, is MoveNodeOp -> return ops
                is NoOp -> {}
                is AddNewChildOp -> {
                    if (!createdNodes.contains(op.position.nodeId)) {
                        compressedOps += AddNewChildSubtreeOp(resultTree, op.position, op.childId, op.concept)
                    }
                    createdNodes.add(op.childId)
                }
                is SetPropertyOp -> {
                    if (!createdNodes.contains(op.nodeId)) compressedOps += op
                }
                is SetReferenceOp -> {
                    if (!createdNodes.contains(op.sourceId)) compressedOps += op
                }
                else -> throw RuntimeException("Unknown operation type: $op")
            }
        }

        // if we save less than 10 operations then it's probably not worth doing the replacement
        return if (ops.size - compressedOps.size >= 10) compressedOps.toTypedArray() else ops
    }

    private inner class CompressedSubtrees() {
        val subtrees: MutableList<CompressedSubtree> = ArrayList()

        fun getOrCreateSubtree(op: AddNewChildOp): CompressedSubtree {
            var subtree = getSubtree(op.childId)
            if (subtree == null) {
                subtree = CompressedSubtree(CompressedNode(op))
                subtrees.add(subtree)
            }
            return subtree
        }

        fun getSubtree(nodeId: Long) = subtrees.find { it.containsNode(nodeId) }

        fun getNode(nodeId: Long) = getSubtree(nodeId)?.getNode(nodeId)

        fun deleteNode(id: Long) {
            val subtree = subtrees.find { it.containsNode(id) }
            if (subtree != null) {
                if (subtree.root.getId() == id) {
                    subtrees.remove(subtree)
                } else {
                    subtree.deleteNode(id)
                }
            }
        }

        fun moveNode(nodeId: Long, targetParent: Long) {
            val fromSubtree = getSubtree(nodeId)!!
            val toSubtree = getSubtree(targetParent)!!
            if (fromSubtree == toSubtree) return
            if (fromSubtree.root.getId() == nodeId) {
                toSubtree.containedNodes.putAll(fromSubtree.containedNodes)
                subtrees.remove(fromSubtree)
            } else {
                toSubtree.addNode(fromSubtree.getNode(nodeId)!!.addOp)
                fromSubtree.deleteNode(nodeId)
            }
        }

        fun containsNode(id: Long) = subtrees.any { it.containsNode(id) }
    }

    private inner class CompressedSubtree(val root: CompressedNode) {
        val replacement = AddNewChildSubtreeOp(resultTree, root.addOp.position, root.addOp.childId, root.addOp.concept)
        val containedNodes: MutableMap<Long, CompressedNode> = linkedMapOf(root.addOp.childId to root)

        fun addNode(op: AddNewChildOp) {
            containedNodes[op.childId] = CompressedNode(op)
        }

        fun containsNode(id: Long) = containedNodes.containsKey(id)

        fun deleteNode(id: Long) {
            containedNodes.remove(id)
        }

        fun getNode(id: Long) = containedNodes[id]
    }

    private class CompressedNode(val addOp: AddNewChildOp) {
        fun getId() = addOp.childId
    }
}

