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
import java.text.MessageFormat

class MoveNodeOp(val childId: Long, val sourceParentId: Long, val sourceRole: String, val sourceIndex: Int, val targetParentId: Long, val targetRole: String, val targetIndex: Int) : AbstractOperation(), IModifiesChildrenOp {
    fun withIndex(newSourceIndex: Int, newTargetIndex: Int): MoveNodeOp {
        return if (newSourceIndex == sourceIndex && newTargetIndex == targetIndex) this else MoveNodeOp(childId, sourceParentId, sourceRole, newSourceIndex, targetParentId, targetRole, newTargetIndex)
    }

    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        transaction!!.moveChild(targetParentId, targetRole, targetIndex, childId)
        return Applied()
    }

    override fun transform(previous: IOperation?): IOperation? {
        return if (previous is AddNewChildOp) {
            val o = previous
            withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex))
        } else if (previous is DeleteNodeOp) {
            val o = previous
            if (o.parentId == sourceParentId && o.role == sourceRole && o.index == sourceIndex) {
                if (o.childId != childId) {
                    throw RuntimeException(sourceParentId.toString() + "." + sourceRole + "[" + sourceIndex + "] expected to be " + childId + ", but was " + o.childId)
                }
                NoOp()
            } else {
                withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex))
            }
        } else if (previous is MoveNodeOp) {
            val o = previous
            withIndex(o.adjustIndex(sourceParentId, sourceRole, sourceIndex), o.adjustIndex(targetParentId, targetRole, targetIndex))
        } else if (previous is SetPropertyOp) {
            this
        } else if (previous is SetReferenceOp) {
            this
        } else if (previous is NoOp) {
            this
        } else {
            throw RuntimeException("Unknown type: " + previous!!.javaClass.getName())
        }
    }

    override fun adjustIndex(otherParentId: Long, otherRole: String?, otherIndex: Int): Int {
        var adjustedIndex = otherIndex
        if (otherParentId == sourceParentId && otherRole == sourceRole && sourceIndex < otherIndex) {
            adjustedIndex--
        }
        if (otherParentId == targetParentId && otherRole == targetRole && targetIndex <= otherIndex) {
            adjustedIndex++
        }
        return adjustedIndex
    }

    override fun toString(): String {
        return MessageFormat.format("MoveNodeOp {0}, {1}.{2}[{3}]->{4}.{5}[{6}]", java.lang.Long.toHexString(childId), java.lang.Long.toHexString(sourceParentId), sourceRole, sourceIndex, java.lang.Long.toHexString(targetParentId), targetRole, targetIndex)
    }

    inner class Applied : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@MoveNodeOp

        override fun invert(): IOperation? {
            return MoveNodeOp(childId, targetParentId, targetRole, targetIndex, sourceParentId, sourceRole, sourceIndex)
        }
    }
}
