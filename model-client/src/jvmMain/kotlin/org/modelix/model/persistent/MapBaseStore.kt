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

package org.modelix.model.persistent

import gnu.trove.map.hash.THashMap
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore

class MapBaseStore : IKeyValueStore {
    private val map: MutableMap<String?, String?> = THashMap()
    override fun get(key: String): String? {
        return map[key]
    }

    override fun put(key: String, value: String?) {
        map[key] = value
    }

    override fun getAll(keys: Iterable<String>): Map<String, String?> {
        val result: MutableMap<String, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
        for (key in keys) {
            result[key] = map[key]
        }
        return result
    }

    override fun putAll(entries: Map<String, String?>) {
        map.putAll(entries)
    }

    override fun prefetch(key: String) {}
    val entries: Iterable<Map.Entry<String?, String?>>
        get() = map.entries

    override fun listen(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }
}
