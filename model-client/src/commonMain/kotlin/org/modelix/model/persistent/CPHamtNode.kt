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

import org.modelix.model.lazy.KVEntryReference
import org.modelix.model.persistent.SerializationUtil.intFromHex
import org.modelix.model.persistent.SerializationUtil.longFromHex
import kotlin.jvm.JvmStatic

abstract class CPHamtNode : IKVValue {
    override var isWritten: Boolean = false

    override val hash: String by lazy(LazyThreadSafetyMode.PUBLICATION) { HashUtil.sha256(serialize()) }

    override fun getDeserializer(): (String) -> IKVValue = DESERIALIZER

    companion object {
        val DESERIALIZER = { s: String -> deserialize(s) }

        @JvmStatic
        fun deserialize(input: String): CPHamtNode {
            val parts = input.split("/")
            val data = when (parts[0]) {
                "L" -> CPHamtLeaf(longFromHex(parts[1]), KVEntryReference(parts[2], CPNode.DESERIALIZER))
                "I" -> CPHamtInternal(
                    intFromHex(parts[1]),
                    parts[2].split(",")
                        .filter { it.isNotEmpty() }
                        .map { KVEntryReference(it, DESERIALIZER) }
                        .toTypedArray()
                )
                "S" -> CPHamtSingle(
                    parts[1].toInt(),
                    longFromHex(parts[2]),
                    KVEntryReference(parts[3], DESERIALIZER)
                )
                else -> throw RuntimeException("Unknown type: " + parts[0] + ", input: " + input)
            }
            data.isWritten = true
            return data
        }
    }
}
