package org.modelix.model

import org.modelix.model.persistent.SerializationUtil
import kotlin.test.Test
import kotlin.test.assertEquals

class SerializationUtil_intHex_Test {

    @Test
    fun intToHex_maxValue() {
        assertEquals("7fffffff", SerializationUtil.intToHex(Int.MAX_VALUE))
    }

    @Test
    fun intFromHex_maxValue() {
        assertEquals(Int.MAX_VALUE, SerializationUtil.intFromHex("7fffffff"))
    }

    @Test
    fun intToHex_minValue() {
        assertEquals("80000000", SerializationUtil.intToHex(Int.MIN_VALUE))
    }

    @Test
    fun intFromHex_minValue() {
        assertEquals(Int.MIN_VALUE, SerializationUtil.intFromHex("80000000"))
    }

    @Test
    fun intToHex_minus1() {
        assertEquals("ffffffff", SerializationUtil.intToHex(-1))
    }

    @Test
    fun intFromHex_minus1() {
        assertEquals(-1, SerializationUtil.intFromHex("ffffffff"))
    }

    @Test
    fun intToHex_0() {
        assertEquals("0", SerializationUtil.intToHex(0))
    }

    @Test
    fun intFromHex_0() {
        assertEquals(0, SerializationUtil.intFromHex("0"))
    }

    @Test
    fun intToHex_1() {
        assertEquals("1", SerializationUtil.intToHex(1))
    }

    @Test
    fun intFromHex_1() {
        assertEquals(1, SerializationUtil.intFromHex("1"))
    }

    @Test
    fun intToHex_msb() {
        assertEquals("80000000", SerializationUtil.intToHex(1 shl 31))
    }

    @Test
    fun intFromHex_msb() {
        assertEquals(1 shl 31, SerializationUtil.intFromHex("80000000"))
    }
}
