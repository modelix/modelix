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

import kotlin.jvm.JvmStatic

class CPTree(
    val id: String,
    val rootId: Long,
    /**
     * SHA to CPHamtNode
     */
    var idToHash: String
) : IKVValue {

    override fun serialize(): String {
        return "$id/$rootId/$idToHash"
    }

    companion object {
        @JvmStatic
        fun deserialize(input: String): CPTree {
            val parts = input.split("/")
            return CPTree(parts[0], parts[1].toLong(), parts[2])
        }
    }
}
