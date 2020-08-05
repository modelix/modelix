/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore
import org.modelix.model.createLRUMap

class ObjectStoreCache(override val keyValueStore: IKeyValueStore) : IDeserializingKeyValueStore {
    private val cache: MutableMap<String?, Any> = createLRUMap(100000)

    override fun <T> getAll(hashes_: Iterable<String>, deserializer: (String, String) -> T): Iterable<T> {
        val hashes = hashes_.toList()
        val result: MutableMap<String?, T?> = HashMap()
        val nonCachedHashes: MutableList<String> = ArrayList(hashes.size)
        for (hash in hashes) {
            val deserialized = cache[hash] as T?
            if (deserialized == null) {
                nonCachedHashes.add(hash)
            } else {
                result[hash] = if (deserialized === NULL) null else deserialized
            }
        }
        if (!nonCachedHashes.isEmpty()) {
            for ((hash, serialized) in keyValueStore.getAll(nonCachedHashes)) {
                if (serialized == null) {
                    result[hash] = null
                } else {
                    val deserialized: T? = deserializer(hash, serialized)
                    cache[hash] = deserialized ?: NULL
                    result[hash] = deserialized
                }
            }
        }
        return hashes.map { key: String? -> result[key] as T }.asIterable()
    }

    override fun <T> get(hash: String, deserializer: (String) -> T): T? {
        var deserialized = cache[hash] as T?
        if (deserialized == null) {
            val serialized = keyValueStore[hash] ?: return null
            deserialized = deserializer(serialized)
            cache[hash] = deserialized ?: NULL
        }
        return if (deserialized === NULL) null else deserialized
    }

    override fun put(hash: String, deserialized: Any, serialized: String) {
        keyValueStore.put(hash, serialized)
        cache[hash] = deserialized ?: NULL
    }

    fun clearCache() {
        cache.clear()
    }

    override fun prefetch(hash: String) {
        keyValueStore.prefetch(hash)
    }

    companion object {
        private val NULL = Any()
    }
}
