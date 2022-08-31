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

package org.modelix.model.util.pmap

import org.apache.commons.lang3.mutable.MutableObject
import org.modelix.model.lazy.COWArrays.insert
import org.modelix.model.lazy.COWArrays.removeAt
import org.modelix.model.lazy.COWArrays.set
import java.util.function.BiPredicate

class LongKeyPMap<V> protected constructor(root: INode<V?>?) {
    private val root: INode<V?>

    constructor() : this(null) {}

    operator fun get(key: Long): V {
        return root[key, 0]!!
    }

    fun put(key: Long, value: V): LongKeyPMap<V?> {
        return LongKeyPMap<V?>(this.root.put(key, value, 0) as INode<V?>)
    }

    fun remove(key: Long): LongKeyPMap<V?> {
        return LongKeyPMap<V?>(root.remove(key, 0) as INode<V?>)
    }

    fun visitEntries(visitor: BiPredicate<Long, V?>?) {
        root.visitEntries(visitor!!)
    }

    fun visitChanges(oldMap: LongKeyPMap<V>, visitor: IChangeVisitor<V?>?) {
        root.visitChanges(oldMap.root, visitor!!)
    }

    interface INode<V> {
        fun put(key: Long, value: V?, shift: Int): INode<*>?
        fun remove(key: Long, shift: Int): INode<*>?
        operator fun get(key: Long, shift: Int): V
        fun visitEntries(visitor: BiPredicate<Long, V>): Boolean
        fun visitChanges(oldNode: INode<V>, visitor: IChangeVisitor<V>)
    }

    interface IChangeVisitor<V> {
        fun entryAdded(key: Long, value: V)
        fun entryRemoved(key: Long, value: V)
        fun entryChanged(key: Long, oldValue: V, newValue: V)
    }

    class InternalNode<V>(private val bitmap: Int, children: Array<INode<V?>>) : INode<V?> {
        private val children: Array<INode<V?>>
        override fun put(key: Long, value: V?, shift: Int): INode<V?>? {
            val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
            val child = getChild(childIndex)
            return if (child == null) {
                setChild(childIndex, LeafNode.create(key, value))
            } else {
                setChild(childIndex, child.put(key, value, shift + BITS_PER_LEVEL))
            }
        }

        override fun remove(key: Long, shift: Int): INode<V?>? {
            val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
            val child = getChild(childIndex)
            return if (child == null) {
                this as INode<V?>
            } else {
                setChild(childIndex, child.remove(key, shift + BITS_PER_LEVEL))
            }
        }

        override fun get(key: Long, shift: Int): V? {
            val childIndex = (key ushr shift and LEVEL_MASK.toLong()).toInt()
            val child = getChild(childIndex) ?: return null
            return child[key, shift + BITS_PER_LEVEL]
        }

        fun getChild(logicalIndex: Int): INode<V?>? {
            if (isBitNotSet(bitmap, logicalIndex)) {
                return null
            }
            val physicalIndex = logicalToPhysicalIndex(bitmap, logicalIndex)
            return children[physicalIndex]
        }

        fun setChild(logicalIndex: Int, child: INode<*>?): INode<V?>? {
            if (child == null) {
                return deleteChild(logicalIndex)
            }
            val physicalIndex = logicalToPhysicalIndex(bitmap, logicalIndex)
            return if (isBitNotSet(bitmap, logicalIndex)) {
                val bm: Int = bitmap or (1 shl logicalIndex)
                val resultingArray: Array<INode<V?>> = insert<INode<V?>>(children as Array<INode<V?>>, physicalIndex, child as INode<V?>) as Array<INode<V?>>
                InternalNode(bm, resultingArray)
            } else {
                InternalNode(bitmap, set<INode<V?>>(children, physicalIndex, child as INode<V?>))
            }
        }

        fun deleteChild(logicalIndex: Int): INode<V?>? {
            if (isBitNotSet(bitmap, logicalIndex)) {
                return this
            }
            val physicalIndex = logicalToPhysicalIndex(bitmap, logicalIndex)
            val newBitmap = bitmap and (1 shl logicalIndex).inv()
            if (newBitmap == 0) {
                return null
            }
            val newChildren: Array<INode<V?>> = removeAt(children, physicalIndex)
            return if (newChildren.size == 1 && newChildren[0] is LeafNode<*>) {
                newChildren[0]
            } else InternalNode(newBitmap, newChildren)
        }

        override fun visitEntries(visitor: BiPredicate<Long, V?>): Boolean {
            for (child in children) {
                val continueVisit = child.visitEntries(visitor)
                if (!continueVisit) {
                    return false
                }
            }
            return true
        }

        override fun visitChanges(oldNode: INode<V?>, visitor: IChangeVisitor<V?>) {
            if (oldNode === this) {
                return
            }
            if (oldNode is InternalNode<*>) {
                if (bitmap == (oldNode as InternalNode<*>).bitmap) {
                    for (i in children.indices) {
                        children[i].visitChanges((oldNode as InternalNode<V?>).children[i], visitor)
                    }
                } else {
                    for (logicalIndex in 0 until ENTRIES_PER_LEVEL) {
                        val child = getChild(logicalIndex)
                        val oldChild = (oldNode as InternalNode<V?>).getChild(logicalIndex)
                        if (child == null) {
                            if (oldChild == null) {
                                // no change 
                            } else {
                                oldChild.visitEntries(
                                    BiPredicate { key: Long?, value: V? ->
                                        visitor.entryRemoved(key!!, value)
                                        true
                                    }
                                )
                            }
                        } else {
                            if (oldChild == null) {
                                child.visitEntries(
                                    BiPredicate { key: Long?, value: V? ->
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
            } else if (oldNode is LeafNode<*>) {
                visitEntries(
                    BiPredicate { k: Long, v: V? ->
                        if (k == (oldNode as LeafNode<V?>).key) {
                            if (v !== oldNode.value) {
                                visitor.entryChanged(k, oldNode.value, v)
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

        companion object {
            private val EMPTY_CHILDREN: Array<INode<*>?> = arrayOfNulls(0)
            val EMPTY: InternalNode<*> = InternalNode<Any?>(0, EMPTY_CHILDREN as Array<INode<Any?>>)
            fun <T> empty(): InternalNode<T> {
                return EMPTY as InternalNode<T>
            }
        }

        init {
            this.children = children
        }
    }

    class LeafNode<V>(val key: Long, val value: V) : INode<V?> {
        override fun put(key: Long, value: V?, shift: Int): INode<*>? {
            return if (key == this.key) {
                if (value === this.value) {
                    this
                } else {
                    create(key, value)
                }
            } else {
                if (shift > MAX_SHIFT) {
                    throw RuntimeException("$shift > $MAX_SHIFT")
                }
                var result: INode<V?>? = InternalNode.empty<V?>()
                result = result!!.put(this.key, this.value, shift) as INode<V?>
                if (result == null) {
                    result = InternalNode.empty<V?>()
                }
                result = result.put(key, value, shift) as INode<V?>
                result
            }
        }

        override fun remove(key: Long, shift: Int): INode<*>? {
            return if (key == this.key) {
                null
            } else {
                this
            }
        }

        override fun get(key: Long, shift: Int): V? {
            return if (this.key == key) value else null
        }

        override fun visitEntries(visitor: BiPredicate<Long, V?>): Boolean {
            return visitor.test(key, value)
        }

        override fun visitChanges(oldNode: INode<V?>, visitor: IChangeVisitor<V?>) {
            if (oldNode === this) {
                return
            }
            val oldValue = MutableObject<V?>()
            oldNode.visitEntries(
                BiPredicate { k: Long, v: V? ->
                    if (k == key) {
                        oldValue.setValue(v)
                    } else {
                        visitor.entryRemoved(k, v)
                    }
                    true
                }
            )
            if (oldValue.value == null) {
                visitor.entryAdded(key, value)
            } else if (oldValue.value !== value) {
                visitor.entryChanged(key, oldValue.value, value)
            }
        }

        companion object {
            fun <V> create(key: Long, value: V?): LeafNode<V>? {
                return value?.let { LeafNode(key, it) }
            }
        }
    }

    class EmptyNode<V> : INode<V?> {
        override fun put(key: Long, value: V?, shift: Int): INode<*>? {
            return LeafNode.create(key, value)
        }

        override fun get(key: Long, shift: Int): V? {
            return null
        }

        override fun remove(key: Long, shift: Int): INode<*> {
            return this
        }

        override fun visitEntries(visitor: BiPredicate<Long, V?>): Boolean {
            return true
        }

        override fun visitChanges(oldNode: INode<V?>, visitor: IChangeVisitor<V?>) {
            if (oldNode === this) {
                return
            }
            oldNode.visitEntries(
                BiPredicate { k: Long?, v: V? ->
                    visitor.entryRemoved(k!!, v)
                    true
                }
            )
        }
    }

    companion object {
        private const val BITS_PER_LEVEL = 5
        private const val ENTRIES_PER_LEVEL = 1 shl BITS_PER_LEVEL
        private const val LEVEL_MASK = -0x1 ushr 32 - BITS_PER_LEVEL
        private const val MAX_BITS = 64
        private const val MAX_SHIFT = MAX_BITS - BITS_PER_LEVEL
        fun logicalToPhysicalIndex(bitmap: Int, logicalIndex: Int): Int {
            return Integer.bitCount(bitmap and (1 shl logicalIndex) - 1)
        }

        fun isBitNotSet(bitmap: Int, logicalIndex: Int): Boolean {
            return bitmap and (1 shl logicalIndex) == 0
        }
    }

    init {
        this.root = root ?: EmptyNode<V?>()
    }
}
