package org.modelix.model

import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

fun Char.assertIsHexDigit() {
    assertTrue("Character expected to be hexadecimal digit but is '$this'") { this in '0'..'9' || this in 'a'..'f' }
}

class PlatformSpecific_Test {
    @Test
    fun test_random_uuid() {
        val res = randomUUID()
        // ex: 5499930c-bfe2-40c5-82d1-a3859a045081
        assertEquals(36, res.count())
        val separators = listOf(8, 13, 18, 23)
        for (i in 0 until res.count()) {
            if (i in separators) {
                assertEquals('-', res[i])
            } else {
                res[i].assertIsHexDigit()
            }
        }
    }

    @Test
    fun testBitCount() {
        fun logicalToPhysicalIndex(bitmap: Int, logicalIndex: Int): Int {
            return bitCount(bitmap and (1 shl logicalIndex) - 1)
        }
        assertEquals(4, logicalToPhysicalIndex(69239088, 21))
        assertEquals(7, logicalToPhysicalIndex(20200000, 21))
    }
}
