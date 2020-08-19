package org.modelix.model.persistent

expect object PlatformSpecificHashUtil {
    fun sha256asByteArray(input: ByteArray?): ByteArray
    fun sha256(input: ByteArray?): String
    fun sha256(input: String): String
    fun base64encode(input: String): String
    fun base64encode(input: ByteArray): String
    fun base64decode(input: String): String
    fun stringToUTF8ByteArray(input: String): ByteArray
}
