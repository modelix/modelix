package org.modelix.model

import org.junit.Assert
import org.junit.Test
import org.modelix.model.lazy.CLHamtInternal
import org.modelix.model.lazy.CLHamtNode
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import java.util.*

class Hamt_Test {
    @Test
    fun test_random() {
        val rand = Random(1)
        val expectedMap: MutableMap<Long, String> = HashMap()
        val store = MapBaseStore()
        val storeCache = ObjectStoreCache(store)
        var hamt: CLHamtNode<*>? = CLHamtInternal(storeCache)
        for (i in 0..9999) {
            if (expectedMap.isEmpty() || rand.nextBoolean()) {
                // add entry 
                val key = rand.nextInt(1000).toLong()
                val value = java.lang.Long.toString(rand.nextLong())
                hamt = hamt!!.put(key, value)
                expectedMap[key] = value
            } else {
                val keys: List<Long> = ArrayList(expectedMap.keys)
                val key = keys[rand.nextInt(keys.size)]
                if (rand.nextBoolean()) {
                    // remove entry 
                    hamt = hamt!!.remove(key)
                    expectedMap.remove(key)
                } else {
                    // replace entry 
                    val value = java.lang.Long.toString(rand.nextLong())
                    hamt = hamt!!.put(key, value)
                    expectedMap[key] = value
                }
            }
            storeCache.clearCache()
            for ((key, value) in expectedMap) {
                Assert.assertEquals(value, hamt!![key])
            }
        }
    }
}
