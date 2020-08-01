package org.modelix.model.persistent

import java.net.URLDecoder
import java.net.URLEncoder
import java.nio.charset.StandardCharsets

object SerializationUtil {
    @JvmStatic
    fun escape(value: String?): String {
        return if (value == null) {
            "%00"
        } else URLEncoder.encode(value, StandardCharsets.UTF_8)
    }

    @JvmStatic
    fun unescape(value: String?): String? {
        if (value == null) {
            return null
        }
        return if ("%00" == value) {
            null
        } else URLDecoder.decode(value, StandardCharsets.UTF_8)
    }

    @JvmStatic
    fun longToHex(value: Long): String {
        return java.lang.Long.toHexString(value)
    }

    @JvmStatic
    fun longFromHex(hex: String?): Long {
        return java.lang.Long.parseUnsignedLong(hex, 16)
    }

    @JvmStatic
    fun intToHex(value: Int): String {
        return Integer.toHexString(value)
    }

    @JvmStatic
    fun intFromHex(hex: String?): Int {
        return Integer.parseUnsignedInt(hex, 16)
    }

    @JvmStatic
    fun nullAsEmptyString(str: String?): String {
        if (str == null) {
            return ""
        }
        if (str.length == 0) {
            throw RuntimeException("Empty string not allowed")
        }
        return str
    }

    @JvmStatic
    fun emptyStringAsNull(str: String?): String? {
        return if (str == null || str.length == 0) null else str
    }
}