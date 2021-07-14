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

package org.modelix.model.persistent

import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.HashUtil.sha256

class CPOperationsList(val operations: Array<IOperation>) : IKVValue {
    override fun serialize(): String {
        return if (operations.isEmpty()) "" else operations
            .joinToString(",") { OperationSerializer.INSTANCE.serialize(it) }
    }

    val hash: String
        get() = sha256(serialize())

    companion object {
        fun deserialize(input: String): CPOperationsList {
            return CPOperationsList(
                input.split(",")
                    .filter { it.isNotEmpty() }
                    .map { OperationSerializer.INSTANCE.deserialize(it) }
                    .toTypedArray()
            )
        }
    }
}
