package org.modelix.model.persistent

import kotlin.browser.window

@JsNonModule
@JsModule("js-sha256")
external fun sha256(s: String): String

// Just to avoid having this shadowed in HashUtil...
fun wrapperSha256(s: String) = sha256(s)

actual object HashUtil {
    actual fun sha256(input: ByteArray?): String {
        TODO("Not yet implemented")
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
}
