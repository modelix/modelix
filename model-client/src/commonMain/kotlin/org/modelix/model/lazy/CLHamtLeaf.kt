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
import org.modelix.model.persistent.HashUtil

class CLHamtLeaf : CLHamtNode<CPHamtLeaf> {
    private val data: CPHamtLeaf

    constructor(data: CPHamtLeaf, store: IDeserializingKeyValueStore) : super(store) {
        this.data = data
    }

    private constructor(key: Long, value: String, store: IDeserializingKeyValueStore) : super(store) {
        data = CPHamtLeaf(key, value)
        val serialized = data.serialize()
        store.put(HashUtil.sha256(serialized), data, serialized)
    }

    override fun getData(): CPHamtLeaf {
        return data
    }

    val key: Long
        get() = data.key

    val value: String
        get() = data.value

    override fun put(key: Long, value: String?, shift: Int): CLHamtNode<*>? {
        return if (key == data.key) {
            if (value == data.value) {
                this
            } else {
                create(key, value, store)
            }
        } else {
            if (shift > MAX_SHIFT) {
                throw RuntimeException("$shift > $MAX_SHIFT")
            }
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
        return if (key == data.key) {
            null
        } else {
            this
        }
    }

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<String?> {
        return bulkQuery.constant(if (data.key == key) data.value else null)
    }

    override fun visitEntries(visitor: (Long, String?) -> Boolean): Boolean {
        return visitor(data.key, data.value)
    }

    override fun visitChanges(oldNode: CLHamtNode<*>?, visitor: IChangeVisitor) {
        if (oldNode === this) {
            return
        }
        var oldValue: String? = null
        val bp = { k: Long?, v: String? ->
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
        } else if (oldValue !== data.value) {
            visitor.entryChanged(data.key, oldValue, data.value)
        }
    }

    companion object {
        fun create(key: Long, value: String?, store: IDeserializingKeyValueStore): CLHamtLeaf? {
            return value?.let { CLHamtLeaf(key, it, store) }
        }
    }
}
