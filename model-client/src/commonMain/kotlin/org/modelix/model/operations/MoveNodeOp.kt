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

class MoveNodeOp(
    val childId: Long,
    val sourceParentId: Long,
    val sourceRole: String?,
    val sourceIndex: Int,
    val targetParentId: Long,
    val targetRole: String?,
    val targetIndex: Int
) : AbstractOperation() {
    fun withIndex(newSourceIndex: Int, newTargetIndex: Int): MoveNodeOp {
        return if (newSourceIndex == sourceIndex && newTargetIndex == targetIndex) {
            this
        } else {
            MoveNodeOp(childId, sourceParentId, sourceRole, newSourceIndex,
                targetParentId, targetRole, newTargetIndex)
        }
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        transaction.moveChild(targetParentId, targetRole, targetIndex, childId)
        return Applied()
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): IOperation {
        val adjusted = {
            val a = withAdjustedIndex(indexAdjustments)
            indexAdjustments.nodeAdd(targetParentId, targetRole, targetIndex)
            indexAdjustments.nodeRemove(sourceParentId, sourceRole, sourceIndex)
            a
        }
        return when (previous) {
            is AddNewChildOp -> adjusted()
            is DeleteNodeOp -> {
                if (previous.childId == childId) {
                    indexAdjustments.nodeRemoved(targetParentId, targetRole, targetIndex)
                    NoOp()
                } else adjusted()
            }
            is MoveNodeOp -> {
                if (previous.childId == childId) {
                    previous.undoAdjustment(indexAdjustments)
                    MoveNodeOp(
                        childId,
                        previous.targetParentId, previous.targetRole, previous.targetIndex,
                        targetParentId, targetRole, targetIndex
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
        indexAdjustments.nodeRemoved(sourceParentId, sourceRole, sourceIndex)
        indexAdjustments.concurrentNodeAdd(targetParentId, targetRole, targetIndex)
    }

    override fun undoAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.undoConcurrentNodeAdd(targetParentId, targetRole, targetIndex)
        indexAdjustments.undoNodeRemoved(sourceParentId, sourceRole, sourceIndex)
    }

    override fun withAdjustedIndex(indexAdjustments: IndexAdjustments): MoveNodeOp {
        return withIndex(
            indexAdjustments.getAdjustedIndex(sourceParentId, sourceRole, sourceIndex),
            indexAdjustments.getAdjustedIndex(targetParentId, targetRole, targetIndex, true)
        )
    }

    override fun toString(): String {
        return "MoveNodeOp ${childId.toString(16)}, ${sourceParentId.toString(16)}.$sourceRole[$sourceIndex]->${targetParentId.toString(16)}.$targetRole[$targetIndex]"
    }

    override fun toCode(): String {
        return """t.moveChild(0x${targetParentId.toString(16)}, "$targetRole", $targetIndex, 0x${childId.toString(16)})"""
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@MoveNodeOp

        override fun invert(): IOperation {
            return MoveNodeOp(childId, targetParentId, targetRole, targetIndex, sourceParentId, sourceRole, sourceIndex)
        }
    }
}
