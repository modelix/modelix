package org.modelix.model.persistent

import kotlin.math.pow

actual object SerializationUtil {
    actual fun escape(value: String?): String {
        TODO("Not yet implemented")
    }

    actual fun unescape(value: String?): String? {
        TODO("Not yet implemented")
    }

    actual fun longToHex(value: Long): String {
        return value.toString(16)
    }

    actual fun longFromHex(hex: String): Long {
        return hex.toLong(16)
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
            return intToHex(value + 2.0.pow(32).toInt() + 0x80000001.toInt())
        }
        return value.toString(16)
    }

    actual fun intFromHex(hex: String): Int {
        return hex.toLong(16).toInt()
    }

    actual fun nullAsEmptyString(str: String?): String {
        TODO("Not yet implemented")
    }

    actual fun emptyStringAsNull(str: String): String? {
        TODO("Not yet implemented")
    }
}
