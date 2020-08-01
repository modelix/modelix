package org.modelix.model.client

import org.apache.log4j.Level
import org.apache.log4j.LogManager
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.util.StreamUtils.toStream
import java.lang.Runnable
import java.util.Objects
import java.util.concurrent.atomic.AtomicBoolean
import java.util.stream.Collectors

class AsyncStore(private val store: IKeyValueStore) : IKeyValueStore {
    private val consumerActive = AtomicBoolean()
    private val pendingWrites: MutableMap<String?, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
    override fun get(key: String?): String? {
        synchronized(pendingWrites) {
            if (pendingWrites.containsKey(key)) {
                return pendingWrites.get(key)
            }
        }
        return store[key]
    }

    override fun listen(key: String?, listener: IKeyListener?) {
        store.listen(key, listener)
    }

    override fun removeListener(key: String?, listener: IKeyListener?) {
        store.removeListener(key, listener)
    }

    override fun put(key: String?, value: String?) {
        synchronized(pendingWrites) { pendingWrites.put(key, value) }
        processQueue()
    }

    override fun getAll(keys_: Iterable<String?>?): Map<String?, String?>? {
        val keys = toStream((keys_)!!).collect(Collectors.toList())
        val result: MutableMap<String?, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
        synchronized(pendingWrites) {
            val itr: MutableIterator<String?> = keys.iterator()
            while (itr.hasNext()) {
                val key: String? = itr.next()
                // always put even if null to have the same order in the linked hash map as in the input 
                result.put(key, pendingWrites.get(key))
                if (pendingWrites.containsKey(key)) {
                    itr.remove()
                }
            }
        }
        if (!keys.isEmpty()) {
            result.putAll((store.getAll(keys))!!)
        }
        return result
    }

    override fun putAll(entries: Map<String?, String?>?) {
        synchronized(pendingWrites) { pendingWrites.putAll((entries)!!) }
        processQueue()
    }

    override fun prefetch(key: String?) {
        store.prefetch(key)
    }

    protected fun processQueue() {
        if (consumerActive.compareAndSet(false, true)) {
            SharedExecutors.FIXED.execute(
                Runnable {
                    try {
                        while (!pendingWrites.isEmpty()) {
                            try {
                                val entries: MutableMap<String?, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
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
