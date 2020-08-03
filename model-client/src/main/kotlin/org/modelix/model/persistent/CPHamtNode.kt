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

import org.modelix.model.persistent.SerializationUtil.intFromHex
import org.modelix.model.persistent.SerializationUtil.longFromHex
import java.util.*
import java.util.function.Function
import java.util.stream.Collectors

abstract class CPHamtNode {
    abstract fun serialize(): String?

    companion object {
        val DESERIALIZER = Function { s: String -> deserialize(s) }
        @JvmStatic
        fun deserialize(input: String): CPHamtNode {
            val parts = input.split("/").dropLastWhile { it.isEmpty() }.toTypedArray()
            return if ("L" == parts[0]) {
                CPHamtLeaf(longFromHex(parts[1]), parts[2])
            } else if ("I" == parts[0]) {
                CPHamtInternal(
                    intFromHex(parts[1]),
                    Arrays.stream(parts[2].split(",").toTypedArray())
                        .filter { it: String? -> it != null && it.length > 0 }
                        .collect(Collectors.toList()).toTypedArray()
                )
            } else {
                throw RuntimeException("Unknown type: " + parts[0] + ", input: " + input)
            }
        }
    }
}
