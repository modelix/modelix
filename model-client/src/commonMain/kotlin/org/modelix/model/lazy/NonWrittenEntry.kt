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

import kotlinx.collections.immutable.PersistentMap
import kotlinx.collections.immutable.persistentHashMapOf
import org.modelix.model.persistent.HashUtil

class NonWrittenEntry {
    val hash: String
    private var serialized: String?
    private var deserialized: Any?
    var children: List<NonWrittenEntry>?
    private var written: Boolean = false
    private var entryMap: PersistentMap<String, NonWrittenEntry>? = null

    private constructor(hash: String, serialized: String?, deserialized: Any?, children: List<NonWrittenEntry>?, written: Boolean) {
        this.hash = hash
        this.serialized = serialized
        this.deserialized = deserialized
        this.children = children
        this.written = written
    }

    constructor(hash: String, serialized: String, deserialized: Any, children: List<NonWrittenEntry>?): this(hash, serialized, deserialized, children, false)

    constructor(serialized: String, deserialized: Any, children: List<NonWrittenEntry>?): this(HashUtil.sha256(serialized), serialized, deserialized, children, false)

    constructor(hash: String): this(hash, null, null, null, true)

    fun getSerialized(): String = serialized ?: throw IllegalStateException("already written")

    fun getDeserialized(): Any = deserialized ?: throw IllegalStateException("already written")

    fun findEntry(hash: String): NonWrittenEntry? = getMap()[hash]?.let { if (it.written) null else it }

    fun <T> get(hash: String, deserializer: (String) -> T): T? {
        if (written) return null
        return findEntry(hash)?.deserialized as T?
    }

    fun write(store: IDeserializingKeyValueStore) {
        if (!written) {
            children?.forEach { child -> child.write(store) }
            store.put(hash, deserialized!!, serialized!!)
            written = true
            children = null
            serialized = null
            deserialized = null
            entryMap = null
        }
    }

    fun withChildren(newChildren: List<NonWrittenEntry>): NonWrittenEntry {
        if (written) throw IllegalStateException("Already written")
        return NonWrittenEntry(hash, serialized!!, deserialized!!, newChildren)
    }

    fun load(map: MutableMap<String, NonWrittenEntry>) {
        map[hash] = this
        children?.forEach { it.load(map) }
    }

    fun getMap(): PersistentMap<String, NonWrittenEntry> {
        if (written) return persistentHashMapOf()
        var m: PersistentMap<String, NonWrittenEntry>? = entryMap
        if (m == null) {
            m = (children ?: listOf())
                .map { it.getMap() }
                .sortedByDescending { it.size }
                .reduceOrNull { l, r -> putAllIfMissing(l, r) }
                ?: persistentHashMapOf()
            m = m.put(hash, this)
            entryMap = m
        }
        return m
    }

    private fun putAllIfMissing(base: PersistentMap<String, NonWrittenEntry>, toAdd: PersistentMap<String, NonWrittenEntry>): PersistentMap<String, NonWrittenEntry> {
        var result = base
        for (entry in toAdd) {
            if (!result.containsKey(entry.key)) {
                result = result.put(entry.key, entry.value)
            }
        }
        return result
    }
}