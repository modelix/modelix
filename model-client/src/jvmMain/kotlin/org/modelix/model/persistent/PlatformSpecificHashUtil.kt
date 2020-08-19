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

actual object PlatformSpecificHashUtil {
    private val UTF8 = StandardCharsets.UTF_8
    actual fun sha256asByteArray(input: ByteArray?): ByteArray {
        return try {
            val digest = MessageDigest.getInstance("SHA-256")
            digest.update(input)
            return digest.digest()
        } catch (ex: NoSuchAlgorithmException) {
            throw RuntimeException(ex)
        }
    }

    actual fun sha256(input: ByteArray?): String {
        val sha256Bytes = sha256asByteArray(input)
        return Base64.getUrlEncoder().withoutPadding().encodeToString(sha256Bytes)
    }

    actual fun sha256(input: String): String {
        return sha256(input.toByteArray(UTF8))
    }

    actual fun base64encode(input: String): String {
        return Base64.getUrlEncoder().withoutPadding().encodeToString(input.toByteArray(UTF8))
    }

    actual fun base64encode(input: ByteArray): String {
        return Base64.getUrlEncoder().withoutPadding().encodeToString(input)
    }

    actual fun base64decode(input: String): String {
        return String(Base64.getUrlDecoder().decode(input.toByteArray(UTF8)), UTF8)
    }

    actual fun stringToUTF8ByteArray(input: String): ByteArray {
        return input.toByteArray(StandardCharsets.UTF_8)
    }
}
