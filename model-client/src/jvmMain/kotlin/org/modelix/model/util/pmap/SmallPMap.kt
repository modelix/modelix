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

package org.modelix.model.util.pmap

import org.modelix.model.api.COWArrays.add
import org.modelix.model.api.COWArrays.indexOf
import org.modelix.model.api.COWArrays.removeAt
import org.modelix.model.api.COWArrays.set
import org.modelix.model.util.StreamUtils.toStream
import java.util.stream.Collectors
import java.util.stream.Stream

abstract class SmallPMap<K, V> : CustomPMap<K, V> {
    abstract override fun get(key: K): V
    abstract override fun put(key: K, value: V): SmallPMap<K, V>?
    abstract override fun remove(key: K): SmallPMap<K, V>?
    abstract override fun keys(): Iterable<K>?
    abstract override fun values(): Iterable<V>?
    class Single<K, V>(private val key: K, private val value: V) : SmallPMap<K, V?>() {
        override fun get(key: K): V? {
            return if (this.key == key) value else null
        }

        override fun keys(): Iterable<K>? {
            return setOf(key)
        }

        override fun put(key: K, value: V?): SmallPMap<K, V?>? {
            if (value == null) {
                return remove(key) as SmallPMap<K, V?>?
            }
            return if (key == this.key) {
                if (value == this.value) {
                    this as SmallPMap<K, V?>?
                } else {
                    Single<K, V>(key, value) as SmallPMap<K, V?>?
                }
            } else {
                var res: SmallPMap<K, V?>?
                val p1: Array<Any?> = arrayOf(this.key, key)
                val p2: Array<Any?> = arrayOf(this.value, value)
                res = create<K, V?>(p1, p2) as SmallPMap<K, V?>?
                return res as SmallPMap<K, V?>?
            }
        }

        override fun remove(key: K): SmallPMap<K, V?>? {
            return if (key == this.key) EMPTY as SmallPMap<K, V?>? else this
        }

        override fun values(): Iterable<V?>? {
            return setOf(value)
        }

        override fun containsKey(key: K): Boolean {
            return key == this.key
        }
    }

    class Multiple<K, V>(private val keys: Array<Any?>, private val values: Array<Any?>) : SmallPMap<K, V?>() {
        override fun get(key: K): V? {
            for (i in keys.indices) {
                if (keys[i] == key) {
                    return values[i] as V?
                }
            }
            return null
        }

        override fun put(key: K, value: V?): SmallPMap<K, V?>? {
            if (value == null) {
                return remove(key)as SmallPMap<K, V?>?
            }
            val index = indexOf(keys, key)
            return if (index != -1) {
                if (value == values[index]) {
                    this as SmallPMap<K, V?>?
                } else {
                    create<K, V?>(keys, set(values, index, value)) as SmallPMap<K, V?>?
                }
            } else {
                create<K, V?>(add(keys, key), add(values, value)) as SmallPMap<K, V?>?
            }
        }

        override fun remove(key: K): SmallPMap<K, V?>? {
            val index = indexOf(keys, key)
            return if (index != -1) {
                create<K, V?>(removeAt(keys, index), removeAt(values, index)) as SmallPMap<K, V?>?
            } else {
                this
            }
        }

        override fun keys(): Iterable<K>? {
            return Stream.of<Any>(*keys).map { it: Any -> it as K }.collect(Collectors.toList())
        }

        override fun values(): Iterable<V?>? {
            return Stream.of<Any>(*values).map { it: Any -> it as V }.collect(Collectors.toList())
        }

        override fun containsKey(key: K): Boolean {
            for (k in keys) {
                if (k == key) {
                    return true
                }
            }
            return false
        }
    }

    companion object {
        private val EMPTY: SmallPMap<*, *> = Multiple<Any?, Any?>(arrayOfNulls(0), arrayOfNulls(0))
        fun <K, V> empty(): SmallPMap<K, V> {
            return EMPTY as SmallPMap<K, V>
        }

        private fun <K, V> create(keys: Array<Any?>, values: Array<Any?>): SmallPMap<K?, V?> {
            if (keys.size == 0) {
                return empty()
            }
            return if (keys.size == 1) {
                Single(keys[0] as K?, values[0] as V?)
            } else Multiple<K?, V?>(keys, values)
        }

        fun <K, V> createS(keys: Iterable<K>?, values: Iterable<V>?): SmallPMap<K, V> {
            return create<K, V>(
                toStream(keys!!).collect(Collectors.toList()).toTypedArray(),
                toStream(values!!).collect(Collectors.toList()).toTypedArray()
            ) as SmallPMap<K, V>
        }
    }
}
