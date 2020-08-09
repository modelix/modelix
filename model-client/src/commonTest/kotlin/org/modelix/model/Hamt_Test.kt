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
import org.modelix.model.persistent.CPHamtInternal
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

    @Test
    fun test_random_case_causing_outofbounds_on_js() {
        val store = MapBaseStore()
        val storeCache = ObjectStoreCache(store)
        var hamt: CLHamtNode<*>? = CLHamtInternal(storeCache)

        hamt = hamt!!.put(965L, "-6579471327666419615")
//        assertEquals("-6579471327666419615", hamt!![965L])
//        assertEquals(32, (hamt!!.getData() as CPHamtInternal).bitmap)
//        assertEquals(1, (hamt!!.getData() as CPHamtInternal).children.count())
//        assertEquals(listOf("p24l1N0LUzZjE_MIT6VZDCPM0bKGGsYHWBFy83BK0cU"), (hamt!!.getData() as CPHamtInternal).children.toList())
        hamt = hamt!!.put(949L, "4912341421267007347")
        assertEquals("4912341421267007347", hamt!![949L])
        hamt = hamt!!.put(260L, "4166750678024106842")
        assertEquals("4166750678024106842", hamt!![260L])
        hamt = hamt!!.put(794L, "5492533034562136353")
        hamt = hamt!!.put(104L, "-6505928823483070382")
        hamt = hamt!!.put(47L, "3122507882718949737")
        hamt = hamt!!.put(693L, "-2086105010854963537")
        storeCache.clearCache()
        assertEquals(69239088, (hamt!!.getData() as CPHamtInternal).bitmap)
        assertEquals(6, (hamt!!.getData() as CPHamtInternal).children.count())
//        assertEquals(listOf("BLSU-2zGUnB_ZK-OgAh3kVEhS4YU3R_jA3_VdAllIQg", "p24l1N0LUzZjE_MIT6VZDCPM0bKGGsYHWBFy83BK0cU", "7cQpepwm1iTLDFWEZ7PMZLe8aQGHR9CZATg65H3DM-w",
//            "Xwc0zD4A68wkHL4lJWWw7n9fMUzbypunVbvoflBIHHc", "A_WD9BK_TWGYP049z946Ojdu-9XaXLGszwhOiGa0GQM", "Ds14kkEICz6xo7WsN4m-CkV4Lk85l5BtiR70NT7xujw"), (hamt!!.getData() as CPHamtInternal).children.toList())
        // assertEquals(4, logicalToPhysicalIndex(69239088, 21))
        assertEquals("-2086105010854963537", hamt!![693L])
    }
}
