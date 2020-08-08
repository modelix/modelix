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

package org.modelix.model

import org.modelix.model.lazy.CLHamtInternal
import org.modelix.model.lazy.CLHamtNode
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import kotlin.random.Random
import kotlin.test.Test
import kotlin.test.assertEquals

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
                val value = rand.nextLong().toString()
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
                    val value = rand.nextLong().toString()
                    hamt = hamt!!.put(key, value)
                    expectedMap[key] = value
                }
            }
            storeCache.clearCache()
            for ((key, value) in expectedMap) {
                assertEquals(value, hamt!![key])
            }
        }
    }
}
