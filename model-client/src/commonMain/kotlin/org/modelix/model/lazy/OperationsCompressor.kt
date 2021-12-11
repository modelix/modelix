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

class OperationsCompressor(val resultTree: CLTree) {

    /**
     * Optimize for bulk imports
     * If a whole subtree is imported then there are a lot of operations where only the AddNewChildOp for the subtree
     * root has the potential to cause any conflict.
     * In that case we replace all of these operation with one AddNewChildSubtreeOp that references the resulting
     * subtree in the new version. We don't lose any information and can reconstruct the original operations if needed.
     */
    fun compressOperations(ops: Array<IOperation>): Array<IOperation> {
        if (ops.size <= CLVersion.INLINED_OPS_LIMIT) return ops

        val resultTreeRef = KVEntryReference(resultTree.data)
        val compressedOps: MutableList<IOperation> = ArrayList()
        val createdNodes: MutableSet<Long> = HashSet()

        for (op in ops) {
            when (op) {
                is UndoOp, is RevertToOp, is AddNewChildSubtreeOp, is DeleteNodeOp, is MoveNodeOp -> return ops
                is NoOp -> {}
                is AddNewChildOp -> {
                    if (!createdNodes.contains(op.position.nodeId)) {
                        compressedOps += AddNewChildSubtreeOp(resultTreeRef, op.position, op.childId, op.concept)
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

        for (id in createdNodes) {
            if (!resultTree.containsNode(id)) throw RuntimeException("Tree expected to contain node $id")
        }

        // if we save less than 10 operations then it's probably not worth doing the replacement
        return if (ops.size - compressedOps.size >= 10) compressedOps.toTypedArray() else ops
    }
}
