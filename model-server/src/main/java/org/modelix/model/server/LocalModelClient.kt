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

import org.apache.commons.collections4.IterableUtils
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore
import org.modelix.model.api.IIdGenerator
import org.modelix.model.client.IModelClient
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.lazy.ObjectStoreCache

class LocalModelClient(private val store: IStoreClient) : IModelClient {
    override val clientId: Int
    override val idGenerator: IIdGenerator
    private val objectCache: IDeserializingKeyValueStore = ObjectStoreCache(this)

    init {
        clientId = store.generateId("clientId").toInt()
        idGenerator = IdGenerator(clientId)
    }

    override fun get(key: String): String? {
        return store[key]
    }

    override fun put(key: String, value: String?) {
        store.put(key, value)
    }

    override fun getAll(keys_: Iterable<String>): Map<String, String?> {
        val keys = IterableUtils.toList(keys_)
        val values = store.getAll(keys)
        val result: MutableMap<String, String?> = LinkedHashMap()
        for (i in keys.indices) {
            result[keys[i]] = values!![i]
        }
        return result
    }

    override fun putAll(entries: Map<String, String?>) {
        store.putAll(entries)
    }

    override fun prefetch(key: String) {
        throw UnsupportedOperationException()
    }

    override fun listen(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }

    override fun getPendingSize(): Int {
        return 0
    }

    override val storeCache: IDeserializingKeyValueStore?
        get() = objectCache
    override val asyncStore: IKeyValueStore?
        get() = this
}