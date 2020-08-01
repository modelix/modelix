package org.modelix.model.util.pmap

interface CustomPMap<K, V> {
    fun put(key: K, value: V): CustomPMap<K, V>?
    operator fun get(key: K): V
    fun remove(key: K): CustomPMap<K, V>?
    fun keys(): Iterable<K>?
    fun values(): Iterable<V>?
    fun containsKey(key: K): Boolean
}
