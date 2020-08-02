package org.modelix.model.lazy

import org.modelix.model.lazy.CLHamtInternal
import org.modelix.model.persistent.CPElement
import org.modelix.model.persistent.CPHamtInternal
import org.modelix.model.persistent.CPHamtLeaf
import org.modelix.model.persistent.CPHamtNode
import java.util.function.BiPredicate
import java.util.function.Function

abstract class CLHamtNode<E : CPHamtNode?>(protected var store: IDeserializingKeyValueStore) {
    protected fun createEmptyNode(): CLHamtNode<*> {
        return create(CPHamtInternal(0, arrayOfNulls(0)), store)!!
    }

    abstract fun getData() : CPHamtNode?

    operator fun get(key: Long): String? {
        val bulkQuery: IBulkQuery = NonBulkQuery(store)
        return get(key, 0, bulkQuery)!!.execute()
    }

    fun getAll(keys: Iterable<Long>?, bulkQuery: IBulkQuery): IBulkQuery.Value<List<String?>?>? {
        val f: Function<Long, IBulkQuery.Value<String?>?>? = Function { key: Long -> get(key, 0, bulkQuery) }
        return bulkQuery.map(keys, f)
    }

    fun put(key: Long, value: String?): CLHamtNode<*>? {
        return put(key, value, 0)
    }

    fun put(element: CLElement): CLHamtNode<*>? {
        return put(element.id, element.getData()!!.hash)
    }

    fun put(data: CPElement): CLHamtNode<*>? {
        return put(data.id, data.hash)
    }

    fun remove(key: Long): CLHamtNode<*>? {
        return remove(key, 0)
    }

    fun remove(element: CLElement): CLHamtNode<*>? {
        return remove(element.id)
    }

    abstract operator fun get(key: Long, shift: Int, bulkQuery: IBulkQuery?): IBulkQuery.Value<String?>?
    abstract fun put(key: Long, value: String?, shift: Int): CLHamtNode<*>?
    abstract fun remove(key: Long, shift: Int): CLHamtNode<*>?
    abstract fun visitEntries(visitor: BiPredicate<Long?, String?>?): Boolean
    abstract fun visitChanges(oldNode: CLHamtNode<*>?, visitor: IChangeVisitor?)
    interface IChangeVisitor {
        fun entryAdded(key: Long, value: String?)
        fun entryRemoved(key: Long, value: String?)
        fun entryChanged(key: Long, oldValue: String?, newValue: String?)
    }

    companion object {
        const val BITS_PER_LEVEL = 5
        const val ENTRIES_PER_LEVEL = 1 shl BITS_PER_LEVEL
        const val LEVEL_MASK = -0x1 ushr 32 - BITS_PER_LEVEL
        const val MAX_BITS = 64
        const val MAX_SHIFT = MAX_BITS - BITS_PER_LEVEL
        @JvmStatic
        fun create(data: CPHamtNode?, store: IDeserializingKeyValueStore?): CLHamtNode<*>? {
            if (data == null) {
                return null
            }
            return if (data is CPHamtLeaf) {
                CLHamtLeaf((data as CPHamtLeaf?)!!, store)
            } else if (data is CPHamtInternal) {
                CLHamtInternal((data as CPHamtInternal?)!!, store)
            } else {
                throw RuntimeException("Unknown type: " + data.javaClass.name)
            }
        }

        fun logicalToPhysicalIndex(bitmap: Int, logicalIndex: Int): Int {
            return Integer.bitCount(bitmap and (1 shl logicalIndex) - 1)
        }

        fun isBitNotSet(bitmap: Int, logicalIndex: Int): Boolean {
            return bitmap and (1 shl logicalIndex) == 0
        }
    }

}