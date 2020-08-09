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

expect object HashUtil {
    fun sha256asByteArray(input: ByteArray?): ByteArray
    fun sha256(input: ByteArray?): String
    fun sha256(input: String): String
    fun isSha256(value: String?): Boolean
    fun extractSha256(input: String?): Iterable<String>
    fun base64encode(input: String): String
    fun base64encode(input: ByteArray): String
    fun base64decode(input: String): String
}

expect fun stringToUTF8ByteArray(input: String): ByteArray
