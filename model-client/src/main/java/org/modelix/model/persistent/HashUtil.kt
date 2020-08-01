package org.modelix.model.persistent

import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException
import java.util.*
import java.util.regex.Pattern

object HashUtil {
    private val HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{43}")
    private val UTF8 = StandardCharsets.UTF_8
    fun sha256(input: ByteArray?): String {
        return try {
            val digest = MessageDigest.getInstance("SHA-256")
            digest.update(input)
            val sha256Bytes = digest.digest()
            Base64.getUrlEncoder().withoutPadding().encodeToString(sha256Bytes)
        } catch (ex: NoSuchAlgorithmException) {
            throw RuntimeException(ex)
        }
    }

    @JvmStatic
    fun sha256(input: String): String {
        return sha256(input.toByteArray(UTF8))
    }

    @JvmStatic
    fun isSha256(value: String?): Boolean {
        if (value == null) {
            return false
        }
        return if (value.length != 43) {
            false
        } else HASH_PATTERN.matcher(value).matches()
    }

    fun extractSha256(input: String?): Iterable<String> {
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

    fun base64encode(input: String): String {
        return Base64.getUrlEncoder().withoutPadding().encodeToString(input.toByteArray(UTF8))
    }

    fun base64decode(input: String): String {
        return String(Base64.getUrlDecoder().decode(input.toByteArray(UTF8)), UTF8)
    }
}