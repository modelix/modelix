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

import org.apache.commons.lang3.StringUtils
import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.HashUtil.sha256
import java.util.stream.Collectors
import java.util.stream.Stream

class CPOperationsList(val operations: Array<IOperation?>) {
    fun serialize(): String {
        return Stream.of(*operations)
            .map { op: IOperation? -> OperationSerializer.INSTANCE.serialize(op!!) }
            .reduce { a: String, b: String -> "$a,$b" }
            .orElse("")
    }

    val hash: String
        get() = sha256(serialize())

    companion object {
        fun deserialize(input: String): CPOperationsList {
            return CPOperationsList(
                Stream.of(*input.split(",").toTypedArray())
                    .filter { cs: String? -> StringUtils.isNotEmpty(cs) }
                    .map { serialized: String? -> OperationSerializer.INSTANCE.deserialize(serialized!!) }
                    .collect(Collectors.toList()).toTypedArray()
            )
        }
    }
}
