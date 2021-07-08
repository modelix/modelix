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

package org.modelix.model.client

import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.api.runSynchronized
import org.modelix.model.persistent.HashUtil

class GarbageFilteringStore(private val store: IKeyValueStore) : IKeyValueStore {
    private val pendingEntries: MutableMap<String?, String?> = HashMap()
    override fun get(key: String): String? {
        return if (pendingEntries.containsKey(key)) pendingEntries[key] else store.get(key)
    }

    override fun put(key: String, value: String?) {
        putAll(mapOf(Pair(key, value)))
    }

    override fun getAll(keys_: Iterable<String>): Map<String, String?> {
        val keys = keys_.toMutableList()
        val result: MutableMap<String, String?> = LinkedHashMap()
        runSynchronized(pendingEntries) {
            val itr = keys.iterator()
            while (itr.hasNext()) {
                val key = itr.next()
                // always put even if null to have the same order in the linked hash map as in the input 
                result[key] = pendingEntries[key]
                if (pendingEntries.containsKey(key)) {
                    itr.remove()
                }
            }
        }
        if (keys.isNotEmpty()) {
            result.putAll(store.getAll(keys))
        }
        return result
    }

    override fun putAll(entries: Map<String, String?>) {
        val entriesToWrite: MutableMap<String, String?> = LinkedHashMap()
        runSynchronized(pendingEntries) {
            for ((key, value) in entries) {
                if (HashUtil.isSha256(key)) {
                    pendingEntries[key] = value
                } else {
                    collectDependencies(key, value, entriesToWrite)
                }
            }
        }
        if (entriesToWrite.isNotEmpty()) {
            if (entriesToWrite.size == 1) {
                val (key, value) = entriesToWrite.entries.first()
                store.put(key, value)
            } else {
                store.putAll(entriesToWrite)
            }
        }
    }

    protected fun collectDependencies(key: String, value: String?, acc: MutableMap<String, String?>) {
        for (depKey in HashUtil.extractSha256(value)) {
            if (pendingEntries.containsKey(depKey)) {
                val depValue = pendingEntries.remove(depKey)
                collectDependencies(depKey, depValue, acc)
            }
        }
        acc[key] = value
    }

    override fun prefetch(key: String) {
        store.prefetch(key)
    }

    override fun listen(key: String, listener: IKeyListener) {
        store.listen(key, listener)
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        store.removeListener(key, listener)
    }
}
