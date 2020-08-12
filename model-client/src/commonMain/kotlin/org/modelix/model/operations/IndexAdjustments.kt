package org.modelix.model.operations

typealias AdjustmentFunction = (PositionInRole, forInsert: Boolean) -> PositionInRole

class IndexAdjustments {
    private val adjustments: MutableList<OwnerAndAdjustment> = ArrayList()

    fun getAdjustedIndex(position: PositionInRole, forInsert: Boolean = false): Int {
        return getAdjustedPosition(position, forInsert).index
    }

    fun getAdjustedPositionForInsert(position: PositionInRole): PositionInRole {
        return getAdjustedPosition(position, true)
    }

    fun getAdjustedPosition(position: PositionInRole, forInsert: Boolean = false): PositionInRole {
        var result = position
        for (adj in adjustments) {
            result = adj.adj(result, forInsert)
        }
        return result
    }

    fun addAdjustment(owner: IOperation, adj: AdjustmentFunction) {
        adjustments.add(OwnerAndAdjustment(owner, adj))
    }
    
    fun removeAdjustment(owner: IOperation) {
        adjustments.removeAll { it.owner == owner }
    }

    fun nodeAdded(owner: IOperation, addedPos: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            if (posToTransform.roleInNode == addedPos.roleInNode && posToTransform.index >= addedPos.index) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else {
                posToTransform
            }
        }
    }

    fun redirectedAdd(owner: IOperation, originalPos: PositionInRole, redirectedPos: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            if (posToTransform.roleInNode == redirectedPos.roleInNode && posToTransform.index >= redirectedPos.index) {
                posToTransform.withIndex(posToTransform.index + 1)
            } else {
                posToTransform
            }
        }
        redirectReads(owner, originalPos, redirectedPos)
    }

    fun redirectedMove(owner: IOperation, source: PositionInRole, originalTarget: PositionInRole, redirectedTarget: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            when {
                posToTransform == originalTarget -> {
                    if (forInsert) posToTransform else redirectedTarget
                }
                posToTransform.roleInNode == originalTarget.roleInNode -> {
                    when {
                        posToTransform.index > originalTarget.index -> posToTransform.withIndex(posToTransform.index - 1)
                        posToTransform.index == originalTarget.index -> {
                            if (forInsert) posToTransform
                            else throw RuntimeException("$originalTarget was removed")
                        }
                        else -> posToTransform
                    }
                }
                posToTransform.roleInNode == redirectedTarget.roleInNode -> {
                    if (posToTransform.index >= redirectedTarget.index) {
                        posToTransform.withIndex(posToTransform.index + 1)
                    } else {
                        posToTransform
                    }
                }
                else -> posToTransform
            }
        }
    }

    fun redirectReads(owner: IOperation, originalPos: PositionInRole, redirectedPos: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            if (!forInsert && posToTransform == originalPos) redirectedPos else posToTransform
        }
    }

    fun nodeRemoved(owner: IOperation, removedPos: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            if (posToTransform.roleInNode == removedPos.roleInNode) {
                when {
                    posToTransform.index > removedPos.index -> posToTransform.withIndex(posToTransform.index - 1)
                    posToTransform.index == removedPos.index -> {
                        if (forInsert) posToTransform
                        else throw RuntimeException("$removedPos was removed")
                    }
                    else -> posToTransform
                }
            } else {
                posToTransform
            }
        }
    }

    fun nodeMoved(owner: IOperation, sourcePos: PositionInRole, targetPos: PositionInRole) {
        addAdjustment(owner) { posToTransform, forInsert ->
            when (posToTransform.roleInNode) {
                sourcePos.roleInNode -> {
                    when {
                        posToTransform.index > sourcePos.index -> posToTransform.withIndex(posToTransform.index - 1)
                        posToTransform.index == sourcePos.index -> {
                            if (forInsert) posToTransform
                            else targetPos
                        }
                        else -> posToTransform
                    }
                }
                targetPos.roleInNode -> {
                    when {
                        posToTransform.index >= targetPos.index -> posToTransform.withIndex(posToTransform.index + 1)
                        else -> posToTransform
                    }

                }
                else -> {
                    posToTransform
                }
            }
        }
    }
}

data class OwnerAndAdjustment(val owner: IOperation, val adj: AdjustmentFunction) {}