package org.modelix.model.persistent

import kotlin.browser.window

actual object HashUtil {
    actual fun sha256(input: ByteArray?): String {
        TODO("Not yet implemented")
    }

    actual fun sha256(input: String): String {
        TODO("Not yet implemented")
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