package org.modelix.model

import org.modelix.model.persistent.HashUtil
import kotlin.test.Test
import kotlin.test.assertEquals

class StringUtilsTest {

    @Test
    fun stringToByteArrayForEmptyString() {
        val res = HashUtil.stringToUTF8ByteArray("")
        assertEquals(0, res.count())
    }

    @Test
    fun stringToByteArrayForShortString() {
        val res = HashUtil.stringToUTF8ByteArray("a")
        assertEquals(1, res.count())
        assertEquals(97, res[0])
    }

    @Test
    fun stringToByteArrayForMediumString() {
        val res: ByteArray = HashUtil.stringToUTF8ByteArray("hello from Kotlin")
        assertEquals(17, res.count())
        val expected: ByteArray = byteArrayOf(104, 101, 108, 108, 111, 32, 102, 114, 111, 109, 32, 75, 111, 116, 108, 105, 110)
        // assertEquals seems to have issues comparing ByteArray
        assertEquals(expected.toList(), res.toList(), "actual ${res.contentToString()}")
    }
}
