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

import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException
import java.util.*
import java.util.regex.Pattern

actual object HashUtil {
    private val HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{43}")
    private val UTF8 = StandardCharsets.UTF_8
    actual fun sha256(input: ByteArray?): String {
        return try {
            val digest = MessageDigest.getInstance("SHA-256")
            digest.update(input)
            val sha256Bytes = digest.digest()
            Base64.getUrlEncoder().withoutPadding().encodeToString(sha256Bytes)
        } catch (ex: NoSuchAlgorithmException) {
            throw RuntimeException(ex)
        }
    }

    actual fun sha256(input: String): String {
        return sha256(input.toByteArray(UTF8))
    }

    actual fun isSha256(value: String?): Boolean {
        if (value == null) {
            return false
        }
        return if (value.length != 43) {
            false
        } else HASH_PATTERN.matcher(value).matches()
    }

    actual fun extractSha256(input: String?): Iterable<String> {
        return object : Iterable<String> {
            override fun iterator(): Iterator<String> {
                return object : Iterator<String> {
                    private val matcher = HASH_PATTERN.matcher(input)
                    private var hasNext = false
                    private var hasNextInitialized = false
                    fun ensureInitialized() {
                        if (!hasNextInitialized) {
                            hasNext = matcher.find()
                            hasNextInitialized = true
                        }
                    }

                    override fun hasNext(): Boolean {
                        ensureInitialized()
                        return hasNext
                    }

                    override fun next(): String {
                        ensureInitialized()
                        hasNextInitialized = false
                        return matcher.group()
                    }
                }
            }
        }
    }

    actual fun base64encode(input: String): String {
        return Base64.getUrlEncoder().withoutPadding().encodeToString(input.toByteArray(UTF8))
    }

    actual fun base64decode(input: String): String {
        return String(Base64.getUrlDecoder().decode(input.toByteArray(UTF8)), UTF8)
    }
}
