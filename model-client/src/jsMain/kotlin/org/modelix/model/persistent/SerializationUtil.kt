package org.modelix.model.persistent

import kotlin.js.Math

actual object SerializationUtil {
    actual fun escape(value: String?): String {
        TODO("Not yet implemented")
    }

    actual fun unescape(value: String?): String? {
        TODO("Not yet implemented")
    }

    actual fun longToHex(value: Long): String {
        TODO("Not yet implemented")
    }

    actual fun longFromHex(hex: String): Long {
        TODO("Not yet implemented")
    }

    /**
     * The unsigned integer value is the argument plus 2<sup>32</sup>
     * if the argument is negative; otherwise, it is equal to the
     * argument.  This value is converted to a string of ASCII digits
     * in hexadecimal (base&nbsp;16) with no extra leading
     * {@code 0}s.
     */
    actual fun intToHex(value: Int): String {
        if (value < 0) {
            TODO("Not yet implemented")
        }
        return value.toString(16)
    }

    actual fun intFromHex(hex: String): Int {
        TODO("Not yet implemented")
    }

    actual fun nullAsEmptyString(str: String?): String {
        TODO("Not yet implemented")
    }

    actual fun emptyStringAsNull(str: String?): String? {
        TODO("Not yet implemented")
    }
}
