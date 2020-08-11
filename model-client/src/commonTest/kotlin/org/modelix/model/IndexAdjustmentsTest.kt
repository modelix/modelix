package org.modelix.model

import org.modelix.model.operations.IndexAdjustments
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertFails

class IndexAdjustmentsTest {

    @Test
    fun test() {
        val p = 1L
        val r = "role"
        val ia = IndexAdjustments()

        assertEquals(0, ia.getAdjustedIndex(p, r, 0))
        assertEquals(1, ia.getAdjustedIndex(p, r, 1))
        assertEquals(2, ia.getAdjustedIndex(p, r, 2))
        assertEquals(3, ia.getAdjustedIndex(p, r, 3))
        assertEquals(4, ia.getAdjustedIndex(p, r, 4))
        assertEquals(5, ia.getAdjustedIndex(p, r, 5))

        ia.nodeAdded(p, r, 1)
        assertEquals(0, ia.getAdjustedIndex(p, r, 0))
        assertEquals(2, ia.getAdjustedIndex(p, r, 1))
        assertEquals(3, ia.getAdjustedIndex(p, r, 2))
        assertEquals(4, ia.getAdjustedIndex(p, r, 3))
        assertEquals(5, ia.getAdjustedIndex(p, r, 4))
        assertEquals(6, ia.getAdjustedIndex(p, r, 5))

        ia.nodeAdded(p, r, 3)
        assertEquals(0, ia.getAdjustedIndex(p, r, 0))
        assertEquals(2, ia.getAdjustedIndex(p, r, 1))
        assertEquals(3, ia.getAdjustedIndex(p, r, 2))
        assertEquals(5, ia.getAdjustedIndex(p, r, 3))
        assertEquals(6, ia.getAdjustedIndex(p, r, 4))
        assertEquals(7, ia.getAdjustedIndex(p, r, 5))

        ia.nodeRemoved(p, r, 2)
        assertEquals(0, ia.getAdjustedIndex(p, r, 0))
        assertEquals(2, ia.getAdjustedIndex(p, r, 1))
        assertFails { ia.getAdjustedIndex(p, r, 2) }
        assertEquals(4, ia.getAdjustedIndex(p, r, 3))
        assertEquals(5, ia.getAdjustedIndex(p, r, 4))
        assertEquals(6, ia.getAdjustedIndex(p, r, 5))

        ia.nodeRemoved(p, r, 4)
        assertEquals(0, ia.getAdjustedIndex(p, r, 0))
        assertEquals(2, ia.getAdjustedIndex(p, r, 1))
        assertFails { ia.getAdjustedIndex(p, r, 2) }
        assertEquals(4, ia.getAdjustedIndex(p, r, 3))
        assertFails { ia.getAdjustedIndex(p, r, 4) }
        assertEquals(5, ia.getAdjustedIndex(p, r, 5))

        ia.nodeAdded(p, r, 0)
        assertEquals(1, ia.getAdjustedIndex(p, r, 0))
        assertEquals(3, ia.getAdjustedIndex(p, r, 1))
        assertFails { ia.getAdjustedIndex(p, r, 2) }
        assertEquals(5, ia.getAdjustedIndex(p, r, 3))
        assertFails { ia.getAdjustedIndex(p, r, 4) }
        assertEquals(6, ia.getAdjustedIndex(p, r, 5))

    }
}