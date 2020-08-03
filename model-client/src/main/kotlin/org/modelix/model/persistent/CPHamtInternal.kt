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

import org.modelix.model.persistent.SerializationUtil.intToHex
import java.util.*

class CPHamtInternal(
    var bitmap: Int,
    /**
     * SHA to CPHamtNode
     */
    val children: Array<String>
) : CPHamtNode() {

    override fun serialize(): String {
        return String.format(
            "I/%s/%s",
            intToHex(bitmap),
            Arrays.stream(children).reduce { a: String?, b: String? -> "$a,$b" }.orElse("")
        )
    }
}
