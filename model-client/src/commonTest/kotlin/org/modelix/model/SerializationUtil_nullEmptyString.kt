package org.modelix.model

import org.modelix.model.persistent.SerializationUtil
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertFails

class SerializationUtil_nullEmptyString {
    @Test
    fun nullAsEmptyString_null() {
        assertEquals("", SerializationUtil.nullAsEmptyString(null))
    }

    @Test
    fun nullAsEmptyString_emptyString() {
        assertFails { SerializationUtil.nullAsEmptyString("") }
    }

    @Test
    fun emptyStringAsNull_emptyString() {
        assertEquals(null, SerializationUtil.emptyStringAsNull(""))
    }
}
