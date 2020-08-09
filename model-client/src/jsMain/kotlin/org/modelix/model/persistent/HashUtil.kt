package org.modelix.model.persistent

import kotlin.browser.window

@JsNonModule
@JsModule("js-sha256")
external fun sha256(s: String): String

@JsNonModule
@JsModule("js-sha256")
external fun sha256(s: ByteArray): String

@JsNonModule
@JsModule("js-sha256")
external object sha256 {
    fun array(s: IntArray) : IntArray
}


// Just to avoid having this shadowed in HashUtil...
fun wrapperSha256(s: String) = sha256(s)

@JsModule("js-base64")
@JsNonModule
external object Base64 {
    fun fromUint8Array(input: ByteArray, uriSafe: Boolean) : String
}

actual object HashUtil {
    actual fun sha256(input: ByteArray?): String {
        val sha256Bytes = sha256asByteArray(input)
        return base64encode(sha256Bytes)
    }

    actual fun sha256(input: String): String {
        return wrapperSha256(input)
    }

    actual fun isSha256(value: String?): Boolean {
        TODO("Not yet implemented")
    }

    actual fun extractSha256(input: String?): Iterable<String> {
        TODO("Not yet implemented")
    }

    actual fun base64encode(input: String): String {
        return window.btoa(input)
    }

    actual fun base64decode(input: String): String {
        return window.atob(input)
    }

    actual fun sha256asByteArray(input: ByteArray?): ByteArray {
        require(input != null)
        val preparedInput = input.map { if (it < 0) (it + 256).toInt() else it.toInt() }.toIntArray()
        return sha256.array(preparedInput).map { if (it >= 128) (it - 256).toByte() else it.toByte() }.toByteArray()
    }

    actual fun base64encode(input: ByteArray): String {
        return Base64.fromUint8Array(input, true)
    }
}

@ExperimentalStdlibApi
actual fun stringToUTF8ByteArray(input: String) : ByteArray {
    return input.encodeToByteArray()
}