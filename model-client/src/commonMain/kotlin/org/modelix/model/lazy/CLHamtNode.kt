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

package org.modelix.model.lazy

import org.modelix.model.persistent.*
import kotlin.jvm.JvmStatic

abstract class CLHamtNode<E : CPHamtNode>(val store: IDeserializingKeyValueStore) {
    protected fun createEmptyNode(): CLHamtNode<*> {
        return create(CPHamtInternal(0, arrayOf()), store)!!
    }

    abstract fun calculateSize(bulkQuery: IBulkQuery): IBulkQuery.Value<Long>

    abstract fun getData(): CPHamtNode

    operator fun get(key: Long): KVEntryReference<CPNode>? {
        val bulkQuery: IBulkQuery = NonBulkQuery(store)
        return get(key, 0, bulkQuery).execute()
    }

    fun getAll(keys: Iterable<Long>, bulkQuery: IBulkQuery): IBulkQuery.Value<List<KVEntryReference<CPNode>?>> {
        return bulkQuery.map(keys) { key: Long -> get(key, 0, bulkQuery) }
    }

    fun put(key: Long, value: KVEntryReference<CPNode>?): CLHamtNode<*>? {
        return put(key, value, 0)
    }

    fun put(element: CLNode): CLHamtNode<*>? {
        return put(element.getData())
    }

    fun put(data: CPNode): CLHamtNode<*>? {
        return put(data.id, KVEntryReference(data))
    }

    fun remove(key: Long): CLHamtNode<*>? {
        return remove(key, 0)
    }

    fun remove(element: CLNode): CLHamtNode<*>? {
        return remove(element.id)
    }

    abstract operator fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<KVEntryReference<CPNode>?>
    abstract fun put(key: Long, value: KVEntryReference<CPNode>?, shift: Int): CLHamtNode<*>?
    abstract fun remove(key: Long, shift: Int): CLHamtNode<*>?
    abstract fun visitEntries(visitor: (Long, KVEntryReference<CPNode>?) -> Boolean): Boolean
    abstract fun visitChanges(oldNode: CLHamtNode<*>?, visitor: IChangeVisitor)
    interface IChangeVisitor {
        fun entryAdded(key: Long, value: KVEntryReference<CPNode>?)
        fun entryRemoved(key: Long, value: KVEntryReference<CPNode>?)
        fun entryChanged(key: Long, oldValue: KVEntryReference<CPNode>?, newValue: KVEntryReference<CPNode>?)
    }

    companion object {
        const val BITS_PER_LEVEL = 5
        const val ENTRIES_PER_LEVEL = 1 shl BITS_PER_LEVEL
        const val LEVEL_MASK: Long = (-0x1 ushr 32 - BITS_PER_LEVEL).toLong()
        const val MAX_BITS = 64
        const val MAX_SHIFT = MAX_BITS - 1
        const val MAX_LEVELS = (MAX_BITS + BITS_PER_LEVEL - 1) / BITS_PER_LEVEL

        @JvmStatic
        fun create(data: CPHamtNode?, store: IDeserializingKeyValueStore): CLHamtNode<*>? {
            return when (data) {
                null -> null
                is CPHamtLeaf -> {
                    CLHamtLeaf(data, store)
                }
                is CPHamtInternal -> {
                    CLHamtInternal(data, store)
                }
                is CPHamtSingle -> {
                    CLHamtSingle(data, store)
                }
                else -> {
                    throw RuntimeException("Unknown type: ${data::class.simpleName}")
                }
            }
        }

        fun indexFromKey(key: Long, shift: Int): Int = levelBits(key, shift)

        fun levelBits(key: Long, shift: Int): Int {
            val s = MAX_BITS - BITS_PER_LEVEL - shift
            return if (s >= 0) {
                ((key ushr s) and LEVEL_MASK).toInt()
            } else {
                ((key shl -s) and LEVEL_MASK).toInt()
            }
        }
    }
}
