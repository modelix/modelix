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

import org.modelix.model.persistent.CPHamtLeaf
import org.modelix.model.persistent.CPNode

class CLHamtLeaf : CLHamtNode<CPHamtLeaf> {
    private val data: CPHamtLeaf

    constructor(data: CPHamtLeaf, store: IDeserializingKeyValueStore) : super(store) {
        this.data = data
    }

    override fun calculateSize(bulkQuery: IBulkQuery): IBulkQuery.Value<Long> {
        return bulkQuery.constant(1L)
    }

    override fun getData(): CPHamtLeaf {
        return data
    }

    val key: Long
        get() = data.key

    val value: KVEntryReference<CPNode>
        get() = data.value

    override fun put(key: Long, value: KVEntryReference<CPNode>?, shift: Int): CLHamtNode<*>? {
        require(shift <= MAX_SHIFT + BITS_PER_LEVEL) { "$shift > ${MAX_SHIFT + BITS_PER_LEVEL}" }
        return if (key == data.key) {
            if (value?.getHash() == data.value.getHash()) {
                this
            } else {
                create(key, value, store)
            }
        } else {
            var result: CLHamtNode<*>? = createEmptyNode()
            result = result!!.put(data.key, data.value, shift)
            if (result == null) {
                result = createEmptyNode()
            }
            result = result.put(key, value, shift)
            result
        }
    }

    override fun remove(key: Long, shift: Int): CLHamtNode<*>? {
        require(shift <= MAX_SHIFT + BITS_PER_LEVEL) { "$shift > ${MAX_SHIFT + BITS_PER_LEVEL}" }
        return if (key == data.key) {
            null
        } else {
            this
        }
    }

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<KVEntryReference<CPNode>?> {
        require(shift <= MAX_SHIFT + BITS_PER_LEVEL) { "$shift > ${MAX_SHIFT + BITS_PER_LEVEL}" }
        return bulkQuery.constant(if (data.key == key) data.value else null)
    }

    override fun visitEntries(visitor: (Long, KVEntryReference<CPNode>?) -> Boolean): Boolean {
        return visitor(data.key, data.value)
    }

    override fun visitChanges(oldNode: CLHamtNode<*>?, shift: Int, visitor: IChangeVisitor) {
        if (oldNode === this) {
            return
        }
        if (visitor.visitChangesOnly()) {
            if (oldNode != null) {
                val oldValue = oldNode.get(key, shift, NonBulkQuery(store)).execute()
                if (oldValue != null && value != oldValue) visitor.entryChanged(key, oldValue, value)
            }
        } else {
            var oldValue: KVEntryReference<CPNode>? = null
            val bp = { k: Long?, v: KVEntryReference<CPNode>? ->
                if (k == data.key) {
                    oldValue = v
                } else {
                    visitor.entryRemoved(k!!, v)
                }
                true
            }
            oldNode!!.visitEntries(bp)
            if (oldValue == null) {
                visitor.entryAdded(data.key, data.value)
            } else if (oldValue?.getHash() !== data.value.getHash()) {
                visitor.entryChanged(data.key, oldValue, data.value)
            }
        }
    }

    companion object {
        fun create(key: Long, value: KVEntryReference<CPNode>?, store: IDeserializingKeyValueStore): CLHamtLeaf? {
            if (value == null) return null
            val data = CPHamtLeaf(key, value)
            return CLHamtLeaf(data, store)
        }
    }
}
