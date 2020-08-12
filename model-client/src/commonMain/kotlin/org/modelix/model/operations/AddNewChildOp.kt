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

class AddNewChildOp(val position: PositionInRole, val childId: Long, val concept: IConcept?) : AbstractOperation() {

    fun withIndex(newIndex: Int): AddNewChildOp {
        return if (newIndex == position.index) this else AddNewChildOp(position.withIndex(newIndex), childId, concept)
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        transaction.addNewChild(position.nodeId, position.role, position.index, childId, concept)
        return Applied()
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): IOperation {
        val adjusted = {
            val a = withAdjustedIndex(indexAdjustments)
            indexAdjustments.nodeAdd(position)
            a
        }
        return when (previous) {
            is AddNewChildOp -> adjusted()
            is DeleteNodeOp -> {
                if (previous.childId == position.nodeId) {
                    indexAdjustments.concurrentNodeAdd(PositionInRole(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, 0))
                    AddNewChildOp(PositionInRole(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, 0), this.childId, this.concept)
                } else {
                    adjusted()
                }
            }
            is MoveNodeOp -> adjusted()
            is SetPropertyOp -> adjusted()
            is SetReferenceOp -> adjusted()
            is NoOp -> adjusted()
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.concurrentNodeAdd(position)
    }

    override fun undoAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.undoConcurrentNodeAdd(position)
    }

    override fun withAdjustedIndex(indexAdjustments: IndexAdjustments): IOperation {
        return withIndex(indexAdjustments.getAdjustedIndex(position, true))
    }

    override fun toString(): String {
        return "AddNewChildOp ${SerializationUtil.longToHex(childId)}, $position, $concept"
    }

    override fun toCode(): String {
        return """t.addNewChild(0x${position.nodeId.toString(16)}, "${position.role}", ${position.index}, 0x${childId.toString(16)}, null)"""
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@AddNewChildOp

        override fun invert(): IOperation {
            return DeleteNodeOp(position, childId)
        }
    }
}
