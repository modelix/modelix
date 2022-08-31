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

import org.modelix.model.bitCount
import org.modelix.model.persistent.CPHamtInternal
import org.modelix.model.persistent.CPHamtNode
import org.modelix.model.persistent.CPHamtSingle
import org.modelix.model.persistent.CPNode

class CLHamtInternal(private val data: CPHamtInternal, store: IDeserializingKeyValueStore) : CLHamtNode(store) {

    companion object {
        fun createEmpty(store: IDeserializingKeyValueStore) = create(0, arrayOf(), store)

        fun create(bitmap: Int, childHashes: Array<KVEntryReference<CPHamtNode>>, store: IDeserializingKeyValueStore): CLHamtInternal {
            val data = CPHamtInternal(bitmap, childHashes)
            return CLHamtInternal(data, store)
        }

        fun create(key: Long, childHash: KVEntryReference<CPNode>, shift: Int, store: IDeserializingKeyValueStore): CLHamtNode? {
            return createEmpty(store).put(key, childHash, shift)
        }

        fun replace(single: CLHamtSingle): CLHamtInternal {
            if (single.getData().numLevels != 1) throw RuntimeException("Can only replace single level nodes")
            val data: CPHamtSingle = single.getData()
            val logicalIndex: Int = data.bits.toInt()
            return create(1 shl logicalIndex, arrayOf(data.child), single.store)
        }
    }

    override fun calculateSize(bulkQuery: IBulkQuery): IBulkQuery.Value<Long> {
        return bulkQuery
            .map(data.children.asIterable(), { bulkQuery.get(it) })
            .mapBulk { bulkQuery.map(it) { create(it, store)?.calculateSize(bulkQuery) ?: bulkQuery.constant(0L) } }
            .map { it.reduce { a, b -> a + b } }
    }

    override fun put(key: Long, value: KVEntryReference<CPNode>?, shift: Int): CLHamtNode? {
        require(shift <= MAX_SHIFT) { "$shift > $MAX_SHIFT" }
        val childIndex = indexFromKey(key, shift)
        val child = getChild(childIndex, NonBulkQuery(store)).execute()
        return if (child == null) {
            setChild(childIndex, CLHamtLeaf.create(key, value, store), shift)
        } else {
            setChild(childIndex, child.put(key, value, shift + BITS_PER_LEVEL), shift)
        }
    }

    override fun remove(key: Long, shift: Int): CLHamtNode? {
        require(shift <= MAX_SHIFT) { "$shift > $MAX_SHIFT" }
        val childIndex = indexFromKey(key, shift)
        val child = getChild(childIndex, NonBulkQuery(store)).execute()
        return if (child == null) {
            this
        } else {
            setChild(childIndex, child.remove(key, shift + BITS_PER_LEVEL), shift)
        }
    }

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<KVEntryReference<CPNode>?> {
        require(shift <= MAX_SHIFT) { "$shift > $MAX_SHIFT" }
        val childIndex = indexFromKey(key, shift)
        return getChild(childIndex, bulkQuery).mapBulk { child: CLHamtNode? ->
            if (child == null) {
                bulkQuery.constant(null)
            } else {
                child[key, shift + BITS_PER_LEVEL, bulkQuery]
            }
        }
    }

    protected fun getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode?> {
        if (isBitNotSet(data.bitmap, logicalIndex)) {
            return bulkQuery.constant(null) as IBulkQuery.Value<CLHamtNode?>
        }
        val physicalIndex = logicalToPhysicalIndex(data.bitmap, logicalIndex)
        require(physicalIndex < data.children.size) { "Invalid physical index ($physicalIndex). N. children: ${data.children.size}. Logical index: $logicalIndex" }
        val childHash = data.children[physicalIndex]
        return getChild(childHash, bulkQuery)
    }

    protected fun getChild(childHash: KVEntryReference<CPHamtNode>, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode?> {
        return bulkQuery[childHash].map { childData -> create(childData, store) }
    }

    protected fun getChild(logicalIndex: Int): CLHamtNode? {
        return getChild(logicalIndex, NonBulkQuery(store)).execute()
    }

    protected fun getChild(childHash: KVEntryReference<CPHamtNode>): CLHamtNode? {
        return getChild(childHash, NonBulkQuery(store)).execute()
    }

    fun setChild(logicalIndex: Int, child: CLHamtNode?, shift: Int): CLHamtNode? {
        if (child == null) {
            return deleteChild(logicalIndex)
        }
        val childHash = KVEntryReference(child.getData())
        val physicalIndex = logicalToPhysicalIndex(data.bitmap, logicalIndex)
        val newNode = if (isBitNotSet(data.bitmap, logicalIndex)) {
            create(
                data.bitmap or (1 shl logicalIndex),
                COWArrays.insert(data.children, physicalIndex, childHash),
                store
            )
        } else {
            create(
                data.bitmap,
                COWArrays.set(data.children, physicalIndex, childHash),
                store
            )
        }
        return if (shift < MAX_BITS - BITS_PER_LEVEL) CLHamtSingle.replaceIfSingleChild(newNode) else newNode
    }

    fun deleteChild(logicalIndex: Int): CLHamtNode? {
        if (isBitNotSet(data.bitmap, logicalIndex)) {
            return this
        }
        val physicalIndex = logicalToPhysicalIndex(data.bitmap, logicalIndex)
        val newBitmap = data.bitmap and (1 shl logicalIndex).inv()
        if (newBitmap == 0) {
            return null
        }
        val newChildren = COWArrays.removeAt(data.children, physicalIndex)
        if (newChildren.size == 1) {
            val child0 = getChild(newChildren[0], NonBulkQuery(store)).execute()
            if (child0 is CLHamtLeaf) {
                return child0
            }
        }
        return create(newBitmap, newChildren, store)
    }

    override fun visitEntries(visitor: (Long, KVEntryReference<CPNode>?) -> Boolean): Boolean {
        for (childHash in data.children) {
            val child = CLHamtNode.create(childHash.getValue(store), store)
            val continueVisit = child!!.visitEntries(visitor)
            if (!continueVisit) {
                return false
            }
        }
        return true
    }

    override fun visitChanges(oldNode: CLHamtNode?, shift: Int, visitor: IChangeVisitor) {
        if (oldNode === this) {
            return
        }
        when (oldNode) {
            is CLHamtInternal -> {
                val oldInternalNode: CLHamtInternal = oldNode
                if (data.bitmap == oldInternalNode.data.bitmap) {
                    for (i in data.children.indices) {
                        val oldChildHash = oldInternalNode.data.children[i]
                        val newChildHash = data.children[i]
                        if (oldChildHash != newChildHash) {
                            getChild(newChildHash)!!.visitChanges(oldInternalNode.getChild(oldChildHash), shift + BITS_PER_LEVEL, visitor)
                        }
                    }
                } else {
                    for (logicalIndex in 0 until ENTRIES_PER_LEVEL) {
                        val child = getChild(logicalIndex)
                        val oldChild = oldInternalNode.getChild(logicalIndex)
                        if (child == null) {
                            if (oldChild == null) {
                                // no change
                            } else {
                                if (!visitor.visitChangesOnly()) {
                                    oldChild.visitEntries { key, value ->
                                        visitor.entryRemoved(key, value)
                                        true
                                    }
                                }
                            }
                        } else {
                            if (oldChild == null) {
                                if (!visitor.visitChangesOnly()) {
                                    child.visitEntries { key, value ->
                                        visitor.entryAdded(key, value)
                                        true
                                    }
                                }
                            } else {
                                child.visitChanges(oldChild, shift + BITS_PER_LEVEL, visitor)
                            }
                        }
                    }
                }
            }
            is CLHamtLeaf -> {
                if (visitor.visitChangesOnly()) {
                    val newValue = get(oldNode.key, shift, NonBulkQuery(store)).execute()
                    if (newValue != null && newValue != oldNode.value) {
                        visitor.entryChanged(oldNode.key, oldNode.value, newValue)
                    }
                } else {
                    var oldEntryExists = false
                    visitEntries { k, v ->
                        if (k == oldNode.key) {
                            oldEntryExists = true
                            val oldValue = oldNode.value
                            if (v != oldValue) {
                                visitor.entryChanged(k, oldValue, v)
                            }
                        } else {
                            visitor.entryAdded(k, v)
                        }
                        true
                    }
                    if (!oldEntryExists) visitor.entryRemoved(oldNode.key, oldNode.value)
                }
            }
            is CLHamtSingle -> {
                if (oldNode.getData().numLevels == 1) {
                    visitChanges(CLHamtInternal.replace(oldNode), shift, visitor)
                } else {
                    visitChanges(CLHamtInternal.replace(oldNode.splitOneLevel()), shift, visitor)
                }
            }
            else -> {
                throw RuntimeException("Unknown type: " + oldNode!!::class.simpleName)
            }
        }
    }

    override fun getData(): CPHamtInternal {
        return data
    }

    private fun isBitNotSet(bitmap: Int, logicalIndex: Int): Boolean {
        return bitmap and (1 shl logicalIndex) == 0
    }

    private fun logicalToPhysicalIndex(bitmap: Int, logicalIndex: Int): Int {
        return bitCount(bitmap and (1 shl logicalIndex) - 1)
    }
}
