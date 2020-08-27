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
import org.modelix.model.persistent.SerializationUtil

class SetPropertyOp(val nodeId: Long, val role: String, val value: String?) : AbstractOperation() {
    override fun apply(transaction: IWriteTransaction): IAppliedOperation {
        val oldValue = transaction.getProperty(nodeId, role)
        transaction.setProperty(nodeId, role, value)
        return Applied(oldValue)
    }

    override fun transform(previous: IOperation, context: ConcurrentOperations): List<IOperation> {
        when (previous) {
            is DeleteNodeOp -> {
                if (nodeId == previous.childId) {
                    return listOf(NoOp())
                }
            }
        }
        return listOf(this)
    }

    override fun toString(): String {
        return "SetPropertOp ${SerializationUtil.longToHex(nodeId)}.$role = $value"
    }

    inner class Applied(private val oldValue: String?) : AbstractOperation.Applied(), IAppliedOperation {
        override val originalOp: IOperation
            get() = this@SetPropertyOp

        override fun invert(): IOperation {
            return SetPropertyOp(nodeId, role, oldValue)
        }

        override fun toString(): String {
            return super.toString() + ", oldValue: " + oldValue
        }
    }
}
