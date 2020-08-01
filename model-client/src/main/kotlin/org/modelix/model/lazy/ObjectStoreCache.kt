package org.modelix.model.lazy

import org.apache.commons.collections4.map.LRUMap
import org.modelix.model.IKeyValueStore
import org.modelix.model.util.StreamUtils.toStream
import java.util.*
import java.util.function.BiFunction
import java.util.function.Function
import java.util.stream.Collectors

class ObjectStoreCache(override val keyValueStore: IKeyValueStore) : IDeserializingKeyValueStore {
    private val cache = Collections.synchronizedMap(LRUMap<String?, Any>(100000))

    override fun <T> getAll(hashes_: Iterable<String?>?, deserializer: BiFunction<String?, String?, T>?): Iterable<T>? {
        val hashes = toStream(hashes_!!).collect(Collectors.toList())
        val result: MutableMap<String?, T?> = HashMap()
        val nonCachedHashes: MutableList<String?> = ArrayList(hashes.size)
        for (hash in hashes) {
            val deserialized = cache[hash] as T?
            if (deserialized == null) {
                nonCachedHashes.add(hash)
            } else {
                result[hash] = if (deserialized === NULL) null else deserialized
            }
        }
        if (!nonCachedHashes.isEmpty()) {
            for ((hash, serialized) in keyValueStore.getAll(nonCachedHashes)!!) {
                if (serialized == null) {
                    result[hash] = null
                } else {
                    val deserialized: T? = deserializer!!.apply(hash, serialized)
                    cache[hash] = deserialized ?: NULL
                    result[hash] = deserialized
                }
            }
        }
        return Iterable<T> { hashes.stream().map { key: String? -> result[key] }.iterator() as Iterator<T> }
    }

    override fun <T> get(hash: String?, deserializer: Function<String?, T>?): T? {
        if (hash == null) {
            return null
        }
        var deserialized = cache[hash] as T?
        if (deserialized == null) {
            val serialized = keyValueStore[hash] ?: return null
            deserialized = deserializer!!.apply(serialized)
            cache[hash] = deserialized ?: NULL
        }
        return if (deserialized === NULL) null else deserialized
    }

    override fun put(hash: String?, deserialized: Any?, serialized: String?) {
        keyValueStore.put(hash, serialized)
        cache[hash] = deserialized ?: NULL
    }

    fun clearCache() {
        cache.clear()
    }

    override fun prefetch(hash: String?) {
        keyValueStore.prefetch(hash)
    }

    companion object {
        private val NULL = Any()
    }

}