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

import org.modelix.model.persistent.CPHamtInternal
import org.modelix.model.persistent.CPHamtSingle
import org.modelix.model.persistent.IKVValue

class NonWrittenEntry<E : IKVValue> : IKVEntryReference<E> {
    private val hash: String
    private val deserialized: E

    private constructor(hash: String, deserialized: E) {
        this.hash = hash
        this.deserialized = deserialized
    }

    constructor(deserialized: E) : this(deserialized.hash, deserialized)

    fun isWritten() = deserialized.isWritten

    override fun getHash(): String = hash

    override fun getValue(store: IDeserializingKeyValueStore): E = getDeserialized()

    fun getSerialized(): String = getDeserialized().serialize()

    fun getDeserialized(): E = deserialized

    override fun getDeserializer(): (String) -> E = getDeserialized().getDeserializer() as (String) -> E

    override fun write(store: IDeserializingKeyValueStore) {
        if (!deserialized.isWritten) {
            deserialized.getReferencedEntries().forEach { it.write(store) }
            store.put(hash, deserialized, getSerialized())
            deserialized.isWritten = true
        }
    }
}
