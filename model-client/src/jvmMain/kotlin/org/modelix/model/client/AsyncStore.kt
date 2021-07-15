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

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.IKeyValueStoreWrapper
import java.lang.Runnable
import java.util.Objects
import java.util.concurrent.atomic.AtomicBoolean

class AsyncStore(private val store: IKeyValueStore) : IKeyValueStoreWrapper {
    private val consumerActive = AtomicBoolean()
    private val pendingWrites: MutableMap<String, String?> = LinkedHashMap()
    override fun get(key: String): String? {
        synchronized(pendingWrites) {
            if (pendingWrites.containsKey(key)) {
                return pendingWrites.get(key)
            }
        }
        return store[key]
    }

    override fun getWrapped(): IKeyValueStore = store

    override fun getPendingSize(): Int = store.getPendingSize() + pendingWrites.size

    override fun listen(key: String, listener: IKeyListener) {
        store.listen(key, listener)
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        store.removeListener(key, listener)
    }

    override fun put(key: String, value: String?) {
        putAll(mapOf(key to value))
    }

    override fun getAll(keys_: Iterable<String>): Map<String, String?> {
        val keys = keys_.toMutableList()
        val result: MutableMap<String, String?> = LinkedHashMap()
        synchronized(pendingWrites) {
            val itr: MutableIterator<String> = keys.iterator()
            while (itr.hasNext()) {
                val key: String = itr.next()
                // always put even if null to have the same order in the linked hash map as in the input 
                result.put(key, pendingWrites.get(key))
                if (pendingWrites.containsKey(key)) {
                    itr.remove()
                }
            }
        }
        if (!keys.isEmpty()) {
            result.putAll(store.getAll(keys))
        }
        return result
    }

    override fun putAll(entries: Map<String, String?>) {
        synchronized(pendingWrites) {
            // ensure correct order
            for (newEntry in entries) {
                val existingValue = pendingWrites[newEntry.key]
                if (existingValue != newEntry.value) {
                    pendingWrites.remove(newEntry.key)
                }
            }

            pendingWrites.putAll(entries)
        }
        processQueue()
    }

    override fun prefetch(key: String) {
        store.prefetch(key)
    }

    protected fun processQueue() {
        if (consumerActive.compareAndSet(false, true)) {
            SharedExecutors.FIXED.execute(
                Runnable {
                    try {
                        while (!pendingWrites.isEmpty()) {
                            try {
                                val entries: MutableMap<String, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
                                synchronized(pendingWrites) { entries.putAll(pendingWrites) }
                                store.putAll(entries)
                                synchronized(pendingWrites) {
                                    for (entry: Map.Entry<String?, String?> in entries.entries) {
                                        if (Objects.equals(pendingWrites.get(entry.key), entry.value)) {
                                            pendingWrites.remove(entry.key)
                                        }
                                    }
                                }
                            } catch (ex: Exception) {
                                if (LOG.isEnabledFor(Level.ERROR)) {
                                    LOG.error("", ex)
                                }
                                try {
                                    Thread.sleep(1000)
                                } catch (ex2: InterruptedException) {
                                    return@Runnable
                                }
                            }
                        }
                    } finally {
                        consumerActive.set(false)
                    }
                }
            )
        }
    }

    fun dispose() {}

    companion object {
        private val LOG = LogManager.getLogger(AsyncStore::class.java)
    }
}
