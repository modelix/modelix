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

object HashUtil {
    val HASH_PATTERN = Regex("""[a-zA-Z0-9\-_]{43}""")

    fun sha256asByteArray(input: ByteArray?): ByteArray = PlatformSpecificHashUtil.sha256asByteArray(input)
    fun sha256(input: ByteArray?): String = PlatformSpecificHashUtil.sha256(input)
    fun sha256(input: String): String = PlatformSpecificHashUtil.sha256(input)

    fun isSha256(value: String?): Boolean {
        if (value == null) {
            return false
        }
        return if (value.length != 43) {
            false
        } else value.matches(HASH_PATTERN)
    }

    fun extractSha256(input: String?): Iterable<String> {
        if (input == null) return emptyList()
        return HASH_PATTERN.findAll(input).map { it.groupValues.first() }.asIterable()
    }

    fun base64encode(input: String): String = PlatformSpecificHashUtil.base64encode(input)
    fun base64encode(input: ByteArray): String = PlatformSpecificHashUtil.base64encode(input)
    fun base64decode(input: String): String = PlatformSpecificHashUtil.base64decode(input)
    fun stringToUTF8ByteArray(input: String): ByteArray = PlatformSpecificHashUtil.stringToUTF8ByteArray(input)
}
