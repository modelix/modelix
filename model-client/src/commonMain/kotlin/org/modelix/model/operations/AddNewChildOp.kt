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
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.persistent.SerializationUtil

class AddNewChildOp(val position: PositionInRole, val childId: Long, val concept: IConcept?) : AbstractOperation() {

    fun withPosition(newPos: PositionInRole): AddNewChildOp {
        return if (newPos == position) this else AddNewChildOp(newPos, childId, concept)
    }

    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        transaction.addNewChild(position.nodeId, position.role, position.index, childId, concept)
        return Applied()
    }

    override fun transform(previous: IOperation, indexAdjustments: IndexAdjustments): List<IOperation> {
        val adjusted = {
            val a = withAdjustedPosition(indexAdjustments)
            indexAdjustments.nodeAdded(a, false, position, childId)
            indexAdjustments.setKnownPosition(childId, a.position)
            a
        }
        return when (previous) {
            is AddNewChildOp -> listOf(adjusted())
            is DeleteNodeOp -> {
                if (previous.childId == position.nodeId) {
                    val redirected = AddNewChildOp(PositionInRole(DETACHED_ROLE, 0), this.childId, this.concept)
                    indexAdjustments.redirectedAdd(this, position, redirected.position, childId)
                    listOf(redirected)
                } else {
                    listOf(adjusted())
                }
            }
            is MoveNodeOp -> listOf(adjusted())
            is SetPropertyOp -> listOf(adjusted())
            is SetReferenceOp -> listOf(adjusted())
            is NoOp -> listOf(adjusted())
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun loadAdjustment(indexAdjustments: IndexAdjustments) {
        indexAdjustments.nodeAdded(this, true, position, childId)
        indexAdjustments.setKnownPosition(childId, position)
    }

    override fun withAdjustedPosition(indexAdjustments: IndexAdjustments): AddNewChildOp {
        return withPosition(indexAdjustments.getAdjustedPositionForInsert(position))
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
