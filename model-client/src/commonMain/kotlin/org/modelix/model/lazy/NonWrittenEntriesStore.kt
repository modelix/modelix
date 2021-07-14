/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore
import org.modelix.model.persistent.IKVValue

class NonWrittenEntriesStore private constructor(val store: IDeserializingKeyValueStore, val entry: NonWrittenEntry?): IDeserializingKeyValueStore {

    companion object {
        fun create(store: IDeserializingKeyValueStore): NonWrittenEntriesStore {
            return if (store is NonWrittenEntriesStore) store else NonWrittenEntriesStore(store)
        }
    }

    private constructor(store: IDeserializingKeyValueStore): this(if (store is NonWrittenEntriesStore) store.store else store, null)

    fun findEntry(hash: String): NonWrittenEntry? = entry?.findEntry(hash)

    fun findStore(hash: String): NonWrittenEntriesStore = NonWrittenEntriesStore(store, findEntry(hash))

    fun with(deserialized: IKVValue, children: List<NonWrittenEntry>): NonWrittenEntriesStore {
        return with(NonWrittenEntry(deserialized, children))
    }

    fun with(newEntry: NonWrittenEntry) = NonWrittenEntriesStore(store, newEntry)

    override fun put(hash: String, deserialized: Any, serialized: String) {
        throw UnsupportedOperationException("use .with")
    }

    override operator fun <T> get(hash: String, deserializer: (String) -> T): T? {
        return entry?.get(hash, deserializer) ?: store.get(hash, deserializer)
    }

    override val keyValueStore: IKeyValueStore
        get() = store.keyValueStore

    override fun <T> getAll(hash: Iterable<String>, deserializer: (String, String) -> T): Iterable<T> {
        if (entry == null) return store.getAll(hash, deserializer)
        val result = hash.associateWith { key -> entry?.get(key) { value -> deserializer(key, value) } }.toMutableMap()
        val missingKeys = result.filterValues { it == null }.keys.toList()
        val missingValues = store.getAll(missingKeys, deserializer).toList()
        missingKeys.forEachIndexed { i, key -> result[key] = missingValues[i] }
        for (entry in result) {
            if (entry.value == null) {
                throw RuntimeException("entry ${entry.key} not found")
            }
        }
        return result.values.map { it!! }
    }

    override fun prefetch(hash: String) {
        store.prefetch(hash)
    }

    fun write() {
        entry?.write(store)
    }
}