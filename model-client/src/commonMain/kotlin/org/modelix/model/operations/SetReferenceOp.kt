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

import org.modelix.model.api.INodeReference
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.persistent.SerializationUtil

class SetReferenceOp(val sourceId: Long, val role: String, val target: INodeReference?) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        val oldValue = transaction.getReferenceTarget(sourceId, role)
        transaction.setReferenceTarget(sourceId, role, target)
        return Applied(oldValue)
    }

    override fun transform(previous: IOperation): IOperation {
        return when (previous) {
            is SetPropertyOp -> this
            is SetReferenceOp -> this
            is AddNewChildOp -> this
            is DeleteNodeOp -> {
                if (sourceId == previous.childId) {
                    NoOp()
                } else {
                    this
                }
            }
            is MoveNodeOp -> this
            is NoOp -> this
            else -> throw RuntimeException("Unknown type: " + previous::class.simpleName)
        }
    }

    override fun toString(): String {
        return "SetReferenceOp ${SerializationUtil.longToHex(sourceId)}.$role = $target"
    }

    inner class Applied(private val oldValue: INodeReference?) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@SetReferenceOp

        override fun invert(): IOperation {
            return SetReferenceOp(sourceId, role, oldValue)
        }

        override fun toString(): String {
            return super.toString() + ", oldValue: " + oldValue
        }
    }
}
