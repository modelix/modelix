package org.modelix.model.lazy

import org.modelix.model.persistent.CPHamtInternal
import org.modelix.model.persistent.CPHamtNode
import org.modelix.model.persistent.HashUtil
import org.modelix.model.util.pmap.COWArrays
import org.modelix.model.util.pmap.LongKeyPMap
import java.util.function.BiPredicate
import java.util.function.Function

class CLHamtInternal : CLHamtNode<CPHamtInternal?> {
    private val data_: CPHamtInternal

    constructor(store: IDeserializingKeyValueStore) : this(0, arrayOfNulls<String>(0), store) {}
    constructor(data: CPHamtInternal, store: IDeserializingKeyValueStore?) : super(store!!) {
        this.data_ = data
    }

    private constructor(bitmap: Int, childHashes: Array<String?>, store: IDeserializingKeyValueStore) : super(store) {
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

    override fun get(key: Long, shift: Int, bulkQuery: IBulkQuery?): IBulkQuery.Value<String?>? {
        val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
        // getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        return getChild(childIndex, bulkQuery!!).mapBulk<String?>(
            Function { child: CLHamtNode<*>? ->
                if (child == null) {
                    bulkQuery!!.constant<String?>(null)
                } else {
                    child[key, shift + BITS_PER_LEVEL, bulkQuery]
                }
            }
        )
    }

    protected fun getChild(logicalIndex: Int, bulkQuery: IBulkQuery): IBulkQuery.Value<CLHamtNode<*>?> {
        if (isBitNotSet(data_.bitmap, logicalIndex)) {
            return bulkQuery.constant(null) as IBulkQuery.Value<CLHamtNode<*>?>
        }
        val physicalIndex = logicalToPhysicalIndex(data_.bitmap, logicalIndex)
        return getChild(data_.children[physicalIndex], bulkQuery)
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
        val childHash = HashUtil.sha256(child.getData()!!.serialize()!!)
        val physicalIndex = logicalToPhysicalIndex(data_.bitmap, logicalIndex)
        return if (LongKeyPMap.isBitNotSet(data_.bitmap, logicalIndex)) {
            CLHamtInternal(data_.bitmap or (1 shl logicalIndex), COWArrays.insert(data_.children, physicalIndex, childHash), store)
        } else {
            CLHamtInternal(data_.bitmap, COWArrays.set(data_.children, physicalIndex, childHash), store)
        }
    }

    fun deleteChild(logicalIndex: Int): CLHamtNode<*>? {
        if (isBitNotSet(data_.bitmap, logicalIndex)) {
            return this
        }
        val physicalIndex = LongKeyPMap.logicalToPhysicalIndex(data_.bitmap, logicalIndex)
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

    override fun visitEntries(visitor: BiPredicate<Long?, String?>?): Boolean {
        for (childHash in data_.children) {
            val child = getChild(childHash)
            val continueVisit = child!!.visitEntries(visitor)
            if (!continueVisit) {
                return false
            }
        }
        return true
    }

    override fun visitChanges(oldNode: CLHamtNode<*>?, visitor: IChangeVisitor?) {
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
                            oldChild.visitEntries(
                                BiPredicate { key, value ->
                                    visitor!!.entryRemoved(key!!, value)
                                    true
                                }
                            )
                        }
                    } else {
                        if (oldChild == null) {
                            child.visitEntries(
                                BiPredicate { key, value ->
                                    visitor!!.entryAdded(key!!, value)
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
                BiPredicate<Long?, String?> { k, v ->
                    if (k == oldLeafNode.key) {
                        val oldValue = oldLeafNode.value
                        if (v != oldValue) {
                            visitor!!.entryChanged(k, oldValue, v)
                        }
                    } else {
                        visitor!!.entryAdded(k!!, v)
                    }
                    true
                }
            )
        } else {
            throw RuntimeException("Unknown type: " + oldNode!!.javaClass.name)
        }
    }

    override fun getData(): CPHamtNode {
        return data_
    }
}
