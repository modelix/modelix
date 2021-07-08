package org.modelix.model

import org.apache.commons.collections4.map.LRUMap
import java.util.*

actual fun sleep(milliseconds: Long) {
    Thread.sleep(milliseconds)
}
actual fun bitCount(bits: Int): Int {
    return Integer.bitCount(bits)
}

actual fun <K, V> createLRUMap(size: Int): MutableMap<K, V> {
    return Collections.synchronizedMap(LRUMap<K, V>(size))
}

actual fun randomUUID(): String {
    return UUID.randomUUID().toString()
}
