package org.modelix.model

import org.modelix.model.persistent.SerializationUtil
import kotlin.test.Test
import kotlin.test.assertEquals

class SerializationUtil_longHex_Test {

    @Test
    fun longToHex_maxValue() {
        assertEquals("7fffffffffffffff", SerializationUtil.longToHex(Long.MAX_VALUE))
    }

    @Test
    fun longFromHex_maxValue() {
        assertEquals(Long.MAX_VALUE, SerializationUtil.longFromHex("7fffffffffffffff"))
    }

    @Test
    fun longToHex_minValue() {
        assertEquals("8000000000000000", SerializationUtil.longToHex(Long.MIN_VALUE))
    }

    @Test
    fun longFromHex_minValue() {
        assertEquals(Long.MIN_VALUE, SerializationUtil.longFromHex("8000000000000000"))
    }

    @Test
    fun longToHex_minus1() {
        assertEquals("ffffffffffffffff", SerializationUtil.longToHex(-1L))
    }

    @Test
    fun longFromHex_minus1() {
        assertEquals(-1L, SerializationUtil.longFromHex("ffffffffffffffff"))
    }

    @Test
    fun longToHex_0() {
        assertEquals("0", SerializationUtil.longToHex(0))
    }

    @Test
    fun longFromHex_0() {
        assertEquals(0, SerializationUtil.longFromHex("0"))
    }
    @Test
    fun longToHex_1() {
        assertEquals("1", SerializationUtil.longToHex(1))
    }

    @Test
    fun longFromHex_1() {
        assertEquals(1, SerializationUtil.longFromHex("1"))
    }

    @Test
    fun longToHex_msb() {
        assertEquals("8000000000000000", SerializationUtil.longToHex(1L shl 63))
    }

    @Test
    fun longFromHex_msb() {
        assertEquals(1L shl 63, SerializationUtil.longFromHex("8000000000000000"))
    }
}
