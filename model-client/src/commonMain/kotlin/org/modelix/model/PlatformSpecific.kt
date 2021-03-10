package org.modelix.model

expect fun sleep(milliseconds: Long)
expect fun bitCount(bits: Int): Int
expect fun <K, V> createLRUMap(size: Int): MutableMap<K, V>
expect fun randomUUID(): String
