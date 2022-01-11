/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore

abstract class IndirectObjectStore : IDeserializingKeyValueStore {

    abstract fun getStore(): IDeserializingKeyValueStore

    override val keyValueStore: IKeyValueStore
        get() = getStore().keyValueStore

    override fun <T> get(hash: String, deserializer: (String) -> T): T? {
        return getStore().get(hash, deserializer)
    }

    override fun <T> getAll(hash: Iterable<String>, deserializer: (String, String) -> T): Iterable<T> {
        return getStore().getAll(hash, deserializer)
    }

    override fun put(hash: String, deserialized: Any, serialized: String) {
        getStore().put(hash, deserialized, serialized)
    }

    override fun prefetch(hash: String) {
        getStore().prefetch(hash)
    }
}
