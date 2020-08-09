package org.modelix.model.persistent

external fun decodeURIComponent(encodedURI: String): String
external fun encodeURIComponent(input: String): String

actual object SerializationUtil {

    private val NULL_ENCODING = "%00"
    private val SPECIAL_ENCODING = hashMapOf(
        '!' to "%21",
        '\'' to "%27",
        '(' to "%28",
        ')' to "%29",
        '~' to "%7E"
    )

    actual fun escape(value: String?): String {
        if (value == null) {
            return NULL_ENCODING
        }
        return encodeURIComponent(value).map { SPECIAL_ENCODING[it] ?: it.toString() }.joinToString(separator = "")
    }

    actual fun unescape(value: String?): String? {
        if (value == NULL_ENCODING) {
            return null
        }
        return decodeURIComponent(value!!)
    }

    actual fun longToHex(value: Long): String {
        if (value < 0) {
            return value.toULong().toString(16)
        }
        return value.toString(16)
    }

    actual fun longFromHex(hex: String): Long {
        return hex.toULong(16).toLong()
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
            return value.toUInt().toString(16)
        }
        return value.toString(16)
    }

    actual fun intFromHex(hex: String): Int {
        return hex.toLong(16).toInt()
    }
}
