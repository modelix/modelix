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
import java.text.MessageFormat

class SetReferenceOp(val sourceId: Long, val role: String, val target: INodeReference) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction?): IAppliedOperation? {
        val oldValue = transaction!!.getReferenceTarget(sourceId, role)
        transaction.setReferenceTarget(sourceId, role, target)
        return Applied(oldValue!!)
    }

    override fun transform(previous: IOperation?): IOperation? {
        return if (previous is SetPropertyOp) {
            this
        } else if (previous is SetReferenceOp) {
            this
        } else if (previous is AddNewChildOp) {
            this
        } else if (previous is DeleteNodeOp) {
            if (sourceId == previous.parentId) {
                NoOp()
            } else {
                this
            }
        } else if (previous is MoveNodeOp) {
            this
        } else {
            throw RuntimeException("Unknown type: " + previous!!.javaClass.getName())
        }
    }

    override fun toString(): String {
        return MessageFormat.format("SetReferenceOp {0}.{1} = {2}", java.lang.Long.toHexString(sourceId), role, target)
    }

    inner class Applied(private val oldValue: INodeReference) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@SetReferenceOp

        override fun invert(): IOperation? {
            return SetReferenceOp(sourceId, role, oldValue)
        }

        override fun toString(): String {
            return super.toString() + ", oldValue: " + oldValue
        }
    }
}
