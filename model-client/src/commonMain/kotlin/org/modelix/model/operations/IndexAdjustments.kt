package org.modelix.model.operations

import org.modelix.model.api.ITree

class IndexAdjustments {
    private val adjustments: MutableList<Adjustment_> = ArrayList()
    private val knownPositions: MutableMap<Long, KnownPosition> = HashMap()
    private val knownParents: MutableMap<Long, Long> = HashMap()

    init {
        knownParents[ITree.ROOT_ID] = 0L
    }

    fun setKnownParent(childId: Long, parentId: Long) {
        knownParents[childId] = parentId
    }

    fun getKnownParent(childId: Long): Long {
        return knownParents[childId] ?: 0
    }

    fun getKnownAncestors(childId: Long): LongArray {
        val ancestors: MutableList<Long> = ArrayList()
        var ancestor = knownParents[childId] ?: throw RuntimeException("Parent of ${childId.toString(16)} unknown")
        while (ancestor != 0L) {
            ancestors.add(ancestor)
            ancestor = getKnownParent(ancestor)
        }
        return ancestors.toLongArray()
    }

    fun setKnownPosition(nodeId: Long, pos: PositionInRole, deleted: Boolean = false) {
        setKnownPosition(nodeId, KnownPosition(pos, deleted))
    }

    fun setKnownPosition(nodeId: Long, newPosition: KnownPosition) {
        knownPositions[nodeId] = newPosition
    }

    fun getAdjustedIndex(position: PositionInRole, forInsert: Boolean = false): Int {
        return getAdjustedPosition(position, forInsert).index
    }

    fun getAdjustedPositionForInsert(position: PositionInRole): PositionInRole {
        return getAdjustedPosition(position, true)
    }

    fun getAdjustedPosition(position: PositionInRole, forInsert: Boolean = false): PositionInRole {
        var result = position
        for (adj in adjustments) {
            if (adj.isConcurrentSide()) {
                result = adj.adjust(result, forInsert)
            }
        }
        return result
    }

    fun getAdjustedPosition(nodeId: Long, lastKnownPosition: PositionInRole): PositionInRole {
        val knownPosition = knownPositions[nodeId]
        if (knownPosition != null) {
            if (knownPosition.deleted) throw RuntimeException("Node ${nodeId.toString(16)} is deleted")
            return knownPosition.position
        }
        return getAdjustedPosition(lastKnownPosition)
    }

    fun isDeleted(nodeId: Long) = knownPositions[nodeId]?.deleted == true

    fun addAdjustment(newAdjustment: Adjustment_) {
        for (i in adjustments.indices) {
            adjustments[i] = adjustments[i].adjustSelf(newAdjustment)
        }
        adjustments.add(newAdjustment)
    }

    fun removeAdjustment(owner: IOperation) {
        adjustments.removeAll { it.owner == owner }
    }

    private fun adjustKnownPositions(role: RoleInNode, entryAdjustment: (index: Int) -> Int) {
        for (entry in knownPositions.entries) {
            if (entry.value.position.roleInNode == role) {
                val newIndex = entryAdjustment(entry.value.position.index)
                if (newIndex != entry.value.position.index) {
                    entry.setValue(entry.value.withIndex(newIndex))
                }
            }
        }
    }

    fun nodeAdded(owner: IOperation, concurrentSide: Boolean, addedPos: PositionInRole, nodeId: Long) {
        adjustKnownPositions(addedPos.roleInNode) { if (it >= addedPos.index) it + 1 else it }
        addAdjustment(NodeInsertAdjustment_(owner, concurrentSide, addedPos))
    }

    fun redirectedAdd(owner: IOperation, originalPos: PositionInRole, redirectedPos: PositionInRole, nodeId: Long) {
        adjustKnownPositions(redirectedPos.roleInNode) { if (it >= redirectedPos.index) it + 1 else it }
        adjustKnownPositions(originalPos.roleInNode) { if (it > originalPos.index) it - 1 else it }
        setKnownPosition(nodeId, redirectedPos, deleted = false)
        addAdjustment(NodeInsertAdjustment_(owner, false, redirectedPos))
    }

    fun redirectedMove(owner: IOperation, source: PositionInRole, originalTarget: PositionInRole, redirectedTarget: PositionInRole) {
        adjustKnownPositions(redirectedTarget.roleInNode) { if (it >= redirectedTarget.index) it + 1 else it }
        addAdjustment(NodeInsertAdjustment_(owner, false, redirectedTarget))
        addAdjustment(NodeRemoveAdjustment_(owner, false, originalTarget))
    }

    fun nodeRemoved(owner: IOperation, concurrentSide: Boolean, removedPos: PositionInRole, nodeId: Long) {
        adjustKnownPositions(removedPos.roleInNode) { if (it > removedPos.index) it - 1 else it }
        setKnownPosition(nodeId, KnownPosition(removedPos, true))
        setKnownParent(nodeId, 0L)
        addAdjustment(NodeRemoveAdjustment_(owner, concurrentSide, removedPos))
    }

    fun nodeMoved(owner: IOperation, concurrentSide: Boolean, sourcePos: PositionInRole, targetPos: PositionInRole) {
        adjustKnownPositions(targetPos.roleInNode) { if (it >= targetPos.index) it + 1 else it }
        adjustKnownPositions(sourcePos.roleInNode) { if (it > sourcePos.index) it - 1 else it }
        addAdjustment(NodeInsertAdjustment_(owner, concurrentSide, targetPos))
        addAdjustment(NodeRemoveAdjustment_(owner, concurrentSide, sourcePos))
    }
}

data class KnownPosition(val position: PositionInRole, val deleted: Boolean) {
    fun withIndex(newIndex: Int) = KnownPosition(position.withIndex(newIndex), deleted)
}

abstract class Adjustment_(val owner: IOperation) {
    abstract fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole
    abstract fun isConcurrentSide(): Boolean
    abstract fun adjustSelf(addedAdjustment: Adjustment_): Adjustment_
}

class NodeInsertAdjustment_(owner: IOperation, val concurrentSide: Boolean, val insertedPos: PositionInRole) : Adjustment_(owner) {
    override fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole {
        return if (posToTransform.roleInNode == insertedPos.roleInNode) {
            if (posToTransform.index > insertedPos.index) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else if (posToTransform.index == insertedPos.index && !forInsert) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else {
                posToTransform
            }
        } else {
            posToTransform
        }
    }

    override fun adjustSelf(addedAdjustment: Adjustment_): Adjustment_ {
        if (addedAdjustment.isConcurrentSide() == isConcurrentSide()) return this
        val adjustedPos = addedAdjustment.adjust(insertedPos, false)
        if (adjustedPos == insertedPos) return this
        return NodeInsertAdjustment_(owner, concurrentSide, adjustedPos)
    }

    override fun isConcurrentSide() = concurrentSide
}

class NodeRemoveAdjustment_(owner: IOperation, val concurrentSide: Boolean, val removedPos: PositionInRole) : Adjustment_(owner) {
    override fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole {
        return if (posToTransform.roleInNode == removedPos.roleInNode) {
            when {
                posToTransform.index > removedPos.index -> posToTransform.withIndex(posToTransform.index - 1)
                else -> posToTransform
            }
        } else {
            posToTransform
        }
    }

    override fun adjustSelf(addedAdjustment: Adjustment_): Adjustment_ {
        if (addedAdjustment.isConcurrentSide() == isConcurrentSide()) return this
        val adjustedPos = addedAdjustment.adjust(removedPos, false)
        if (adjustedPos == removedPos) return this
        return NodeRemoveAdjustment_(owner, concurrentSide, adjustedPos)
    }
    override fun isConcurrentSide() = concurrentSide
}

interface IndexAdjustment {
    fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole
    fun plus(other: IndexAdjustment): IndexAdjustment
}

class NodeInsertAdjustment(val insertedPos: PositionInRole) : IndexAdjustment {
    override fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole {
        return if (posToTransform.roleInNode == insertedPos.roleInNode) {
            if (posToTransform.index > insertedPos.index) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else if (posToTransform.index == insertedPos.index && !forInsert) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else {
                posToTransform
            }
        } else {
            posToTransform
        }
    }

    override fun plus(other: IndexAdjustment) = CompositeAdjustment(this, other)
}

class NodeRemoveAdjustment(val removedPos: PositionInRole) : IndexAdjustment {
    override fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole {
        return if (posToTransform.roleInNode == removedPos.roleInNode) {
            when {
                posToTransform.index > removedPos.index -> posToTransform.withIndex(posToTransform.index - 1)
                else -> posToTransform
            }
        } else {
            posToTransform
        }
    }

    override fun plus(other: IndexAdjustment) = CompositeAdjustment(this, other)
}

class CompositeAdjustment(val adjustment1: IndexAdjustment, val adjustment2: IndexAdjustment) : IndexAdjustment {
    override fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole {
        return adjustment2.adjust(adjustment1.adjust(posToTransform, forInsert), forInsert)
    }

    override fun plus(other: IndexAdjustment) = CompositeAdjustment(this, other)
}
