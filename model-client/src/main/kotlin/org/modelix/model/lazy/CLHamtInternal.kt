package org.modelix.model.lazy

import org.modelix.model.persistent.CPHamtInternal
import org.modelix.model.persistent.CPHamtNode
import org.modelix.model.persistent.HashUtil
import org.modelix.model.util.pmap.COWArrays
import org.modelix.model.util.pmap.LongKeyPMap
import java.util.function.BiPredicate
import java.util.function.Function

class CLHamtInternal : CLHamtNode<CPHamtInternal?> {
    private val data: CPHamtInternal

    constructor(store: IDeserializingKeyValueStore) : this(0, arrayOfNulls<String>(0), store) {}
    constructor(data: CPHamtInternal, store: IDeserializingKeyValueStore?) : super(store) {
        this.data = data
    }

    private constructor(bitmap: Int, childHashes: Array<String?>, store: IDeserializingKeyValueStore) : super(store) {
        data = CPHamtInternal(bitmap, childHashes)
        val serialized = data.serialize()
        store.put(HashUtil.sha256(serialized), data, serialized)
    }

    override fun put(key: Long, value: String, shift: Int): CLHamtNode<*>? {
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

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<String?>? {
        val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
        // getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        return getChild(childIndex, bulkQuery).mapBulk<String?>(Function { child: CLHamtNode<*>? ->
            if (child == null) {
                bulkQuery.constant<String?>(null)
            } else {
                child[key, shift + BITS_PER_LEVEL, bulkQuery]
            }
        })
    }

    protected fun getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        if (isBitNotSet(data.bitmap, logicalIndex)) {
            return bulkQuery.constant(null) as IBulkQuery.Value<CLHamtNode<*>?>
        }
        val physicalIndex = logicalToPhysicalIndex(data.bitmap, logicalIndex)
        return getChild(data.children[physicalIndex], bulkQuery)
    }

    protected fun getChild(childHash: String?, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        return bulkQuery.get(childHash, CPHamtNode.DESERIALIZER)!!.map(Function { childData: CPHamtNode -> create(childData, store) })!!
    }

    protected fun getChild(logicalIndex: Int): CLHamtNode<*>? {
        return getChild(logicalIndex, NonBulkQuery(store)).execute()
    }

    protected fun getChild(childHash: String?): CLHamtNode<*>? {
        return getChild(childHash, NonBulkQuery(store)).execute()
    }

    fun setChild(logicalIndex: Int, child: CLHamtNode<*>?): CLHamtNode<*>? {
        if (child == null) {
            return deleteChild(logicalIndex)
        }
        val childHash = HashUtil.sha256(child.data.serialize()!!)
        val physicalIndex = logicalToPhysicalIndex(data.bitmap, logicalIndex)
        return if (LongKeyPMap.isBitNotSet(data.bitmap, logicalIndex)) {
            CLHamtInternal(data.bitmap or (1 shl logicalIndex), COWArrays.insert(data.children, physicalIndex, childHash), store)
        } else {
            CLHamtInternal(data.bitmap, COWArrays.set(data.children, physicalIndex, childHash), store)
        }
    }

    fun deleteChild(logicalIndex: Int): CLHamtNode<*>? {
        if (isBitNotSet(data.bitmap, logicalIndex)) {
            return this
        }
        val physicalIndex = LongKeyPMap.logicalToPhysicalIndex(data.bitmap, logicalIndex)
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
        return CLHamtInternal(newBitmap, newChildren, store)
    }

    override fun visitEntries(visitor: BiPredicate<Long, String>): Boolean {
        for (childHash in data.children) {
            val child = getChild(childHash)
            val continueVisit = child!!.visitEntries(visitor)
            if (!continueVisit) {
                return false
            }
        }
        return true
    }

    override fun visitChanges(oldNode: CLHamtNode<*>, visitor: IChangeVisitor) {
        if (oldNode === this) {
            return
        }
        if (oldNode is CLHamtInternal) {
            val oldInternalNode = oldNode
            if (data.bitmap == oldInternalNode.data.bitmap) {
                for (i in data.children.indices) {
                    getChild(data.children[i])!!.visitChanges(oldInternalNode.getChild(oldInternalNode.data.children[i]), visitor)
                }
            } else {
                for (logicalIndex in 0 until ENTRIES_PER_LEVEL) {
                    val child = getChild(logicalIndex)
                    val oldChild = oldInternalNode.getChild(logicalIndex)
                    if (child == null) {
                        if (oldChild == null) {
                            // no change 
                        } else {
                            oldChild.visitEntries(
                                BiPredicate { key, value ->
                                    visitor.entryRemoved(key!!, value)
                                    true
                                }
                            )
                        }
                    } else {
                        if (oldChild == null) {
                            child.visitEntries(
                                BiPredicate { key, value ->
                                    visitor.entryAdded(key!!, value)
                                    true
                                }
                            )
                        } else {
                            child.visitChanges(oldChild, visitor)
                        }
                    }
                }
            }
        } else if (oldNode is CLHamtLeaf) {
            val oldLeafNode = oldNode
            visitEntries(
                BiPredicate<Long, String> { k, v ->
                    if (k == oldLeafNode.key) {
                        val oldValue = oldLeafNode.value
                        if (v != oldValue) {
                            visitor.entryChanged(k, oldValue, v)
                        }
                    } else {
                        visitor.entryAdded(k, v)
                    }
                    true
                }
            )
        } else {
            throw RuntimeException("Unknown type: " + oldNode.javaClass.name)
        }
    }

    override fun getData(): CPHamtNode {
        return data
    }
}
