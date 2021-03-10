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
import org.modelix.model.persistent.HashUtil
import org.modelix.model.api.COWArrays

class CLHamtInternal : CLHamtNode<CPHamtInternal> {
    private val data_: CPHamtInternal

    constructor(store: IDeserializingKeyValueStore) : this(0, arrayOf<String>(), store) {}
    constructor(data: CPHamtInternal, store: IDeserializingKeyValueStore?) : super(store!!) {
        this.data_ = data
    }

    private constructor(bitmap: Int, childHashes: Array<String>, store: IDeserializingKeyValueStore) : super(store) {
        data_ = CPHamtInternal(bitmap, childHashes)
        val serialized = data_.serialize()
        store.put(HashUtil.sha256(serialized), data_, serialized)
    }

    override fun put(key: Long, value: String?, shift: Int): CLHamtNode<*>? {
        val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
        val child = getChild(childIndex, NonBulkQuery(store)).execute()
        return if (child == null) {
            setChild(childIndex, CLHamtLeaf.create(key, value, store))
        } else {
            setChild(childIndex, child.put(key, value, shift + BITS_PER_LEVEL))
        }
    }

    override fun remove(key: Long, shift: Int): CLHamtNode<*>? {
        val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
        val child = getChild(childIndex, NonBulkQuery(store)).execute()
        return if (child == null) {
            this
        } else {
            setChild(childIndex, child.remove(key, shift + BITS_PER_LEVEL))
        }
    }

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<String?> {
        val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
        return getChild(childIndex, bulkQuery).mapBulk { child: CLHamtNode<*>? ->
            if (child == null) {
                bulkQuery.constant<String?>(null)
            } else {
                child[key, shift + BITS_PER_LEVEL, bulkQuery]
            }
        }
    }

    protected fun getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        if (isBitNotSet(data_.bitmap, logicalIndex)) {
            return bulkQuery.constant(null) as IBulkQuery.Value<CLHamtNode<*>?>
        }
        val physicalIndex = logicalToPhysicalIndex(data_.bitmap, logicalIndex)
        require(physicalIndex < data_.children.size) { "Invalid physical index ($physicalIndex). N. children: ${data_.children.size}. Logical index: $logicalIndex" }
        val childHash = data_.children[physicalIndex]
        return getChild(childHash, bulkQuery)
    }

    protected fun getChild(childHash: String, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        return bulkQuery[childHash, CPHamtNode.DESERIALIZER].map { childData -> create(childData, store) }
    }

    protected fun getChild(logicalIndex: Int): CLHamtNode<*>? {
        return getChild(logicalIndex, NonBulkQuery(store)).execute()
    }

    protected fun getChild(childHash: String): CLHamtNode<*>? {
        return getChild(childHash, NonBulkQuery(store)).execute()
    }

    fun setChild(logicalIndex: Int, child: CLHamtNode<*>?): CLHamtNode<*>? {
        if (child == null) {
            return deleteChild(logicalIndex)
        }
        val childHash = HashUtil.sha256(child.getData().serialize())
        val physicalIndex = logicalToPhysicalIndex(data_.bitmap, logicalIndex)
        return if (isBitNotSet(data_.bitmap, logicalIndex)) {
            CLHamtInternal(data_.bitmap or (1 shl logicalIndex), COWArrays.insert(data_.children, physicalIndex, childHash), store)
        } else {
            CLHamtInternal(data_.bitmap, COWArrays.set(data_.children, physicalIndex, childHash), store)
        }
    }

    fun deleteChild(logicalIndex: Int): CLHamtNode<*>? {
        if (isBitNotSet(data_.bitmap, logicalIndex)) {
            return this
        }
        val physicalIndex = logicalToPhysicalIndex(data_.bitmap, logicalIndex)
        val newBitmap = data_.bitmap and (1 shl logicalIndex).inv()
        if (newBitmap == 0) {
            return null
        }
        val newChildren = COWArrays.removeAt(data_.children, physicalIndex)
        if (newChildren.size == 1) {
            val child0 = getChild(newChildren[0], NonBulkQuery(store)).execute()
            if (child0 is CLHamtLeaf) {
                return child0
            }
        }
        return CLHamtInternal(newBitmap, newChildren, store)
    }

    override fun visitEntries(visitor: (Long, String?) -> Boolean): Boolean {
        for (childHash in data_.children) {
            val child = getChild(childHash)
            val continueVisit = child!!.visitEntries(visitor)
            if (!continueVisit) {
                return false
            }
        }
        return true
    }

    override fun visitChanges(oldNode: CLHamtNode<*>?, visitor: IChangeVisitor) {
        if (oldNode === this) {
            return
        }
        if (oldNode is CLHamtInternal) {
            val oldInternalNode: CLHamtInternal = oldNode
            if (data_.bitmap == oldInternalNode.data_.bitmap) {
                for (i in data_.children.indices) {
                    getChild(data_.children[i])!!.visitChanges(oldInternalNode.getChild(oldInternalNode.data_.children[i]), visitor)
                }
            } else {
                for (logicalIndex in 0 until ENTRIES_PER_LEVEL) {
                    val child = getChild(logicalIndex)
                    val oldChild = oldInternalNode.getChild(logicalIndex)
                    if (child == null) {
                        if (oldChild == null) {
                            // no change 
                        } else {
                            oldChild.visitEntries { key, value ->
                                visitor.entryRemoved(key, value)
                                true
                            }
                        }
                    } else {
                        if (oldChild == null) {
                            child.visitEntries { key, value ->
                                visitor.entryAdded(key, value)
                                true
                            }
                        } else {
                            child.visitChanges(oldChild, visitor)
                        }
                    }
                }
            }
        } else if (oldNode is CLHamtLeaf) {
            visitEntries { k, v ->
                if (k == oldNode.key) {
                    val oldValue = oldNode.value
                    if (v != oldValue) {
                        visitor.entryChanged(k, oldValue, v)
                    }
                } else {
                    visitor.entryAdded(k, v)
                }
                true
            }
        } else {
            throw RuntimeException("Unknown type: " + oldNode!!::class.simpleName)
        }
    }

    override fun getData(): CPHamtInternal {
        return data_
    }

    private fun isBitNotSet(bitmap: Int, logicalIndex: Int): Boolean {
        return bitmap and (1 shl logicalIndex) == 0
    }

    private fun logicalToPhysicalIndex(bitmap: Int, logicalIndex: Int): Int {
        return bitCount(bitmap and (1 shl logicalIndex) - 1)
    }
}
