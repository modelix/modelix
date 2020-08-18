package org.modelix.model.operations

class IndexAdjustments {
    private val adjustments: MutableList<Adjustment> = ArrayList()
    private val knownPositions: MutableMap<Long, KnownPosition> = HashMap()

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

    fun addAdjustment(newAdjustment: Adjustment) {
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
        addAdjustment(NodeInsertAdjustment(owner, concurrentSide, addedPos))
    }

    fun redirectedAdd(owner: IOperation, originalPos: PositionInRole, redirectedPos: PositionInRole, nodeId: Long) {
        adjustKnownPositions(redirectedPos.roleInNode) { if (it >= redirectedPos.index) it + 1 else it }
        adjustKnownPositions(originalPos.roleInNode) { if (it > originalPos.index) it - 1 else it }
        setKnownPosition(nodeId, redirectedPos, deleted = false)
        addAdjustment(NodeInsertAdjustment(owner, false, redirectedPos))
    }

    fun redirectedMove(owner: IOperation, source: PositionInRole, originalTarget: PositionInRole, redirectedTarget: PositionInRole) {
        adjustKnownPositions(redirectedTarget.roleInNode) { if (it >= redirectedTarget.index) it + 1 else it }
        addAdjustment(NodeInsertAdjustment(owner, false, redirectedTarget))
        addAdjustment(NodeRemoveAdjustment(owner, false, originalTarget))
    }

    fun nodeRemoved(owner: IOperation, concurrentSide: Boolean, removedPos: PositionInRole, nodeId: Long) {
        adjustKnownPositions(removedPos.roleInNode) { if (it > removedPos.index) it - 1 else it }
        setKnownPosition(nodeId, KnownPosition(removedPos, true))
        addAdjustment(NodeRemoveAdjustment(owner, concurrentSide, removedPos))
    }

    fun nodeMoved(owner: IOperation, concurrentSide: Boolean, sourcePos: PositionInRole, targetPos: PositionInRole) {
        adjustKnownPositions(targetPos.roleInNode) { if (it >= targetPos.index) it + 1 else it }
        adjustKnownPositions(sourcePos.roleInNode) { if (it > sourcePos.index) it - 1 else it }
        addAdjustment(NodeInsertAdjustment(owner, concurrentSide, targetPos))
        addAdjustment(NodeRemoveAdjustment(owner, concurrentSide, sourcePos))
    }
}

data class KnownPosition(val position: PositionInRole, val deleted: Boolean) {
    fun withIndex(newIndex: Int) = KnownPosition(position.withIndex(newIndex), deleted)
}

abstract class Adjustment(val owner: IOperation) {
    abstract fun adjust(posToTransform: PositionInRole, forInsert: Boolean): PositionInRole
    abstract fun isConcurrentSide(): Boolean
    abstract fun adjustSelf(addedAdjustment: Adjustment): Adjustment
}

class NodeInsertAdjustment(owner: IOperation, val concurrentSide: Boolean, val insertedPos: PositionInRole) : Adjustment(owner) {
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

    override fun adjustSelf(addedAdjustment: Adjustment): Adjustment {
        if (addedAdjustment.isConcurrentSide() == isConcurrentSide()) return this
        val adjustedPos = addedAdjustment.adjust(insertedPos, false)
        if (adjustedPos == insertedPos) return this
        return NodeInsertAdjustment(owner, concurrentSide, adjustedPos)
    }

    override fun isConcurrentSide() = concurrentSide
}

class NodeRemoveAdjustment(owner: IOperation, val concurrentSide: Boolean, val removedPos: PositionInRole) : Adjustment(owner) {
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

    override fun adjustSelf(addedAdjustment: Adjustment): Adjustment {
        if (addedAdjustment.isConcurrentSide() == isConcurrentSide()) return this
        val adjustedPos = addedAdjustment.adjust(removedPos, false)
        if (adjustedPos == removedPos) return this
        return NodeRemoveAdjustment(owner, concurrentSide, adjustedPos)
    }
    override fun isConcurrentSide() = concurrentSide
}
