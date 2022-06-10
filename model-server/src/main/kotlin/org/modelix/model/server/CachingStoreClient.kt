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
package org.modelix.model.server

import org.apache.commons.collections4.map.LRUMap
import java.util.*
import java.util.function.Function
import java.util.stream.Collectors

class CachingStoreClient(private val store: IStoreClient) : IStoreClient {
    private val cache: MutableMap<String, String?> = LRUMap(1000)
    override fun get(key: String): String? {
        return if (allowCaching(key)) {
            var value = cache[key]
            if (value == null) {
                value = store[key]
                cache[key] = value
            }
            if (value === NULL_STRING) null else value
        } else {
            store[key]
        }
    }

    override fun getAll(keys: List<String>): List<String?> {
        return keys.stream().map { key: String -> this[key] }.collect(Collectors.toList())
    }

    override fun getAll(keys: Set<String>): Map<String, String?> {
        return keys.stream().collect(Collectors.toMap(Function.identity(), Function { key: String -> this[key] }))
    }

    override fun put(key: String, value: String?) {
        if (allowCaching(key)) {
            val existingValue = cache[key]
            if (existingValue == value) {
                return
            }
            cache[key] = value
        }
        store.put(key, value)
    }

    override fun putAll(entries: Map<String, String?>) {
        for ((key, value) in entries) {
            put(key, value)
        }
    }

    override fun listen(key: String, listener: IKeyListener) {
        store.listen(key, listener)
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        store.removeListener(key, listener)
    }

    protected fun allowCaching(key: String?): Boolean {
        return true
    }

    override fun generateId(key: String): Long {
        return store.generateId(key)
    }

    companion object {
        private val NULL_STRING = UUID.randomUUID().toString()
    }
}