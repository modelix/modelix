package org.modelix.model

import org.modelix.model.persistent.HashUtil
import kotlin.test.Test
import kotlin.test.assertEquals

class HashUtilsTest {

    @Test
    fun testSha256asByteArrayEmpty() {
        val res = HashUtil.sha256asByteArray(byteArrayOf())
        val expected = byteArrayOf(-29, -80, -60, 66, -104, -4, 28, 20, -102, -5, -12, -56, -103, 111, -71, 36, 39, -82, 65, -28, 100, -101, -109, 76, -92, -107, -103, 27, 120, 82, -72, 85)
        assertEquals(expected.toList(), res.toList())
    }

    @Test
    fun testSha256asByteArraySimpleAllLowAndPositive() {
        val res = HashUtil.sha256asByteArray(byteArrayOf(1, 2, 40, 89))
        val expected = byteArrayOf(-18, 75, 82, -32, -61, -85, 15, -49, -23, 60, 65, -113, -97, 122, -108, -68, -117, -128, 80, -18, -22, 39, -107, 14, 105, 99, -14, 115, 89, 46, 67, 19)
        assertEquals(expected.toList(), res.toList())
    }

    @Test
    fun testSha256asByteArraySimple() {
        val res = HashUtil.sha256asByteArray(byteArrayOf(1, 2, -40, 89))
        val expected = byteArrayOf(94, 40, 23, 48, -40, -11, 56, 18, 59, 104, 37, -82, 114, 9, 115, -44, 47, -70, -67, -102, -58, -75, -40, -66, -18, 83, 50, -95, 94, -87, 97, -63)
        assertEquals(expected.toList(), res.toList())
    }

    @Test
    fun testSha256Empty() {
        val res = HashUtil.sha256(byteArrayOf())
        assertEquals("47DEQpj8HBSa-_TImW-5JCeuQeRkm5NMpJWZG3hSuFU", res)
    }

    @Test
    fun testBase64encodeByteArrayEmpty() {
        val res = HashUtil.base64encode(ByteArray(0))
        assertEquals("", res)
    }

    @Test
    fun testBase64encodeByteArraySimplePositive() {
        val res = HashUtil.base64encode(byteArrayOf(1, 10, 87))
        assertEquals("AQpX", res)
    }

    @Test
    fun testBase64encodeByteArrayMedium() {
        val res = HashUtil.base64encode(byteArrayOf(-125, 127, 20, 88, 12, 1, 0))
        assertEquals("g38UWAwBAA", res)
    }
}
