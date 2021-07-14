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

import org.modelix.model.persistent.IKVValue

class KVEntryReference<out E : IKVValue>(private var writtenOrUnwrittenReference: IKVEntryReference<E>) : IKVEntryReference<E> {

    init {
        if (writtenOrUnwrittenReference is KVEntryReference) throw IllegalArgumentException()
    }

    constructor(hash: String, deserializer: (String) -> E) : this(WrittenEntry(hash, deserializer))
    constructor(deserialized: E) : this(NonWrittenEntry(deserialized))

    fun isWritten(): Boolean {
        val r = writtenOrUnwrittenReference
        return !(r is NonWrittenEntry && !r.isWritten())
    }

    override fun write(store: IDeserializingKeyValueStore) {
        val currentRef = writtenOrUnwrittenReference
        if (currentRef is NonWrittenEntry && !currentRef.isWritten()) {
            val deserializer = currentRef.getDeserializer()
            val hash = currentRef.getHash()
            currentRef.write(store)
            writtenOrUnwrittenReference = WrittenEntry(hash, deserializer)
        }
    }

    override fun getHash(): String = writtenOrUnwrittenReference.getHash()
    override fun getValue(store: IDeserializingKeyValueStore): E = writtenOrUnwrittenReference.getValue(store)
    override fun getDeserializer(): (String) -> E = writtenOrUnwrittenReference.getDeserializer()

    override fun toString(): String {
        throw RuntimeException("Use .getHash()")
        // return "Reference to ${getHash()}"
    }
}