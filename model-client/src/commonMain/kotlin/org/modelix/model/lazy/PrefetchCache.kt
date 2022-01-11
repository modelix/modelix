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
import org.modelix.model.api.ContextValue
import org.modelix.model.api.ITransaction
import org.modelix.model.api.ITree

/**
 * There is no size limit. Entries are not evicted.
 * This guarantees that after a prefetch there are no more request required.
 * Not thread safe.
 */
class PrefetchCache(private val store: IDeserializingKeyValueStore) : IDeserializingKeyValueStore {
    init {
        if (store is ContextIndirectCache) throw IllegalArgumentException()
        if (store is PrefetchCache) throw IllegalArgumentException()
    }

    private val entries: MutableMap<String, Any?> = HashMap()

    override val keyValueStore: IKeyValueStore = store.keyValueStore

    override fun <T> get(hash: String, deserializer: (String) -> T): T? {
        return if (entries.containsKey(hash)) entries[hash] as T? else {
            val value = store.get(hash, deserializer)
            entries[hash] = value
            value
        }
    }

    override fun <T> getAll(hashes: Iterable<String>, deserializer: (String, String) -> T): Iterable<T> {
        val missingHashes = hashes.filterNot { entries.containsKey(it) }
        val missingValues = store.getAll(missingHashes, deserializer).toList()
        val missingEntries = missingHashes.mapIndexed { index, hash -> hash to missingValues[index] }.associate { it }
        return hashes.map { missingEntries[it] ?: entries[it] as T }
    }

    override fun put(hash: String, deserialized: Any, serialized: String) {
        entries[hash] = deserialized
        store.put(hash, deserialized, serialized)
    }

    override fun prefetch(hash: String) {
        TODO("Not yet implemented")
    }

    companion object {
        private val contextValue: ContextValue<PrefetchCache> = ContextValue()

        fun <T> with(store_: IDeserializingKeyValueStore, f: () -> T): T {
            val store = if (store_ is ContextIndirectCache) store_.directStore else store_
            val unwrapped = unwrap(store)
            val current = contextValue.getValue()
            return if (current != null && current.store == unwrapped) {
                f()
            } else {
                if (store is PrefetchCache) {
                    contextValue.computeWith(store, f)
                } else {
                    contextValue.computeWith(PrefetchCache(unwrapped), f)
                }
            }
        }

        fun <T> with(tree: ITree, f: () -> T): T {
            return with((tree as CLTree).store, f)
        }

        fun unwrap(store: IDeserializingKeyValueStore): IDeserializingKeyValueStore {
            return when (store) {
                is PrefetchCache -> unwrap(store.store)
                is ContextIndirectCache -> store.directStore
                else -> store
            }
        }

        fun contextIndirectCache(store: IDeserializingKeyValueStore): IDeserializingKeyValueStore {
            return ContextIndirectCache(store)
        }

        class ContextIndirectCache(val directStore: IDeserializingKeyValueStore) : IndirectObjectStore() {
            init {
                if (directStore is ContextIndirectCache) throw IllegalArgumentException()
                if (directStore is PrefetchCache) throw IllegalArgumentException()
            }

            override fun getStore(): IDeserializingKeyValueStore {
                return contextValue.getValue() ?: directStore
            }
        }
    }


}