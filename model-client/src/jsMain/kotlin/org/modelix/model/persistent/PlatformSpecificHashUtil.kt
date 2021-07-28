package org.modelix.model.persistent

@JsNonModule
@JsModule("js-sha256")
external fun sha256(s: String): String

@JsNonModule
@JsModule("js-sha256")
external fun sha256(s: ByteArray): String

@JsNonModule
@JsModule("js-sha256")
external object sha256 {
    fun array(s: IntArray): IntArray
}

// Just to avoid having this shadowed in HashUtil...
fun wrapperSha256(s: String) = sha256(s)

@JsModule("js-base64")
@JsNonModule
external object Base64 {
    fun fromUint8Array(input: ByteArray, uriSafe: Boolean): String
    fun decode(input: String): String
    fun encode(input: String): String
    fun encode(input: String, uriSafe: Boolean): String
}

actual object PlatformSpecificHashUtil {
    actual fun sha256(input: ByteArray?): String {
        val sha256Bytes = sha256asByteArray(input)
        val base64 = base64encode(sha256Bytes)
        return base64.substring(0, 5) + "*" + base64.substring(5)
    }

    actual fun sha256(input: String): String {
        return sha256(input.encodeToByteArray())
    }

    actual fun base64encode(input: String): String {
        return Base64.encode(input, true)
    }

    actual fun base64decode(input: String): String {
        return Base64.decode(input)
    }

    actual fun sha256asByteArray(input: ByteArray?): ByteArray {
        require(input != null)
        val preparedInput = input.map { if (it < 0) (it + 256).toInt() else it.toInt() }.toIntArray()
        return sha256.array(preparedInput).map { if (it >= 128) (it - 256).toByte() else it.toByte() }.toByteArray()
    }

    actual fun base64encode(input: ByteArray): String {
        return Base64.fromUint8Array(input, true)
    }

    actual fun stringToUTF8ByteArray(input: String): ByteArray {
        return input.encodeToByteArray(throwOnInvalidSequence = true)
    }
}
