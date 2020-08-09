package org.modelix.model

import org.modelix.model.persistent.stringToUTF8ByteArray
import kotlin.test.Test
import kotlin.test.assertEquals

class StringUtilsTest {

    @Test
    @kotlin.ExperimentalStdlibApi
    fun stringToByteArrayForEmptyString() {
        val res = stringToUTF8ByteArray("")
        assertEquals(0, res.count())
    }

    @Test
    @kotlin.ExperimentalStdlibApi
    fun stringToByteArrayForShortString() {
        val res = stringToUTF8ByteArray("a")
        assertEquals(1, res.count())
        assertEquals(97, res[0])
    }

    @Test
    @kotlin.ExperimentalStdlibApi
    fun stringToByteArrayForMediumString() {
        val res: ByteArray = stringToUTF8ByteArray("hello from Kotlin")
        assertEquals(17, res.count())
        val expected: ByteArray = byteArrayOf(104, 101, 108, 108, 111, 32, 102, 114, 111, 109, 32, 75, 111, 116, 108, 105, 110)
        // assertEquals seems to have issues comparing ByteArray
        assertEquals(expected.toList(), res.toList(), "actual ${res.contentToString()}")
    }
}
