package org.modelix.model

import org.apache.commons.collections4.map.LRUMap
import org.apache.log4j.LogManager
import org.modelix.model.persistent.HashUtil
import org.modelix.model.util.StreamUtils.intersection
import org.modelix.model.util.StreamUtils.toStream
import java.util.*
import java.util.concurrent.locks.ReentrantLock
import java.util.stream.Collectors

class KeyValueStoreCache(private val store: IKeyValueStore) : IKeyValueStore {
    private val cache = Collections.synchronizedMap(LRUMap<String?, String?>(300000))
    private val pendingPrefetches: MutableSet<String?> = HashSet()
    private val activeRequests: MutableList<GetRequest> = ArrayList()
    override fun prefetch(rootKey: String?) {
        val processedKeys: MutableSet<String?> = HashSet()
        processedKeys.add(rootKey)
        var newKeys : MutableList<String?> = Arrays.asList(rootKey).toMutableList()
        while (!newKeys.isEmpty() && processedKeys.size + newKeys.size <= 100000) {
            synchronized(pendingPrefetches) { newKeys.removeAll(pendingPrefetches) }
            val currentKeys = newKeys
            newKeys = ArrayList()
            var loadedEntries: Map<String?, String?>?
            synchronized(pendingPrefetches) { pendingPrefetches.addAll(currentKeys) }
            try {
                loadedEntries = getAll(currentKeys)
                for ((key, value) in loadedEntries!!) {
                    processedKeys.add(key)
                    for (childKey in HashUtil.extractSha256(value)) {
                        if (processedKeys.contains(childKey)) {
                            continue
                        }
                        newKeys.add(childKey)
                    }
                }
            } finally {
                pendingPrefetches.removeAll(currentKeys)
            }
        }
    }

    override fun get(key: String?): String? {
        return getAll(setOf(key))!![key]
    }

    override fun getAll(keys_: Iterable<String?>?): Map<String?, String?>? {
        val remainingKeys = toStream(keys_!!).collect(Collectors.toList())
        val result: MutableMap<String?, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
        synchronized(cache) {
            val itr = remainingKeys.iterator()
            while (itr.hasNext()) {
                val key = itr.next()
                val value = cache[key]
                // always put even if null to have the same order in the linked hash map as in the input 
                result[key] = value
                if (value != null) {
                    itr.remove()
                }
            }
        }
        if (!remainingKeys.isEmpty()) {
            val requiredRequest: MutableList<GetRequest> = ArrayList()
            var newRequest: GetRequest? = null
            synchronized(activeRequests) {
                for (r in activeRequests) {
                    if (remainingKeys.stream().anyMatch { o: String? -> r.keys.contains(o) }) {
                        if (LOG.isDebugEnabled) {
                            val intersection = intersection(remainingKeys.stream(), r.keys)
                            LOG.debug("Reusing an active request: " + intersection.stream().findFirst().orElse(null) + " (" + intersection.size + ")")
                        }
                        requiredRequest.add(r)
                        remainingKeys.removeAll(r.keys)
                    }
                }
                if (!remainingKeys.isEmpty()) {
                    newRequest = GetRequest(HashSet(remainingKeys))
                    requiredRequest.add(newRequest!!)
                    activeRequests.add(newRequest!!)
                }
            }
            if (newRequest != null) {
                try {
                    newRequest!!.execute()
                } finally {
                    synchronized(activeRequests) { activeRequests.remove(newRequest!!) }
                }
            }
            for (req in requiredRequest) {
                val reqResult = req.waitForResult()
                for ((key, value) in reqResult) {
                    if (result.containsKey(key)) {
                        result[key] = value
                    }
                }
            }
        }
        return result
    }

    override fun listen(key: String?, listener: IKeyListener?) {
        store.listen(key, listener)
    }

    override fun put(key: String?, value: String?) {
        cache[key] = value
        store.put(key, value)
    }

    override fun putAll(entries: Map<String?, String?>?) {
        entries!!.forEach { (key: String?, value: String?) -> cache[key] = value }
        store.putAll(entries)
    }

    override fun removeListener(key: String?, listener: IKeyListener?) {
        store.removeListener(key, listener)
    }

    private inner class GetRequest(val keys: Set<String?>) {
        private var result: Map<String?, String?>? = null
        private var exception: Exception? = null
        fun execute() {
            try {
                val entriesFromStore = store.getAll(keys)
                for ((key, value) in entriesFromStore!!) {
                    cache[key] = value
                }
                putResult(entriesFromStore)
            } catch (ex: Exception) {
                putException(ex)
            }
        }

        private val lock = ReentrantLock()
        private val condition = lock.newCondition()

        @Synchronized
        fun putException(ex: Exception?) {
            exception = ex
            condition.signalAll()
        }

        @Synchronized
        fun putResult(result: Map<String?, String?>?) {
            this.result = result
            condition.signalAll()
        }

        @Synchronized
        fun waitForResult(): Map<String?, String?> {
            while (result == null && exception == null) {
                try {
                    condition.await()
                } catch (ex: InterruptedException) {
                    throw RuntimeException()
                }
            }
            return if (result != null) {
                result!!
            } else {
                throw RuntimeException(exception)
            }
        }

    }

    companion object {
        private val LOG = LogManager.getLogger(KeyValueStoreCache::class.java)
    }

}