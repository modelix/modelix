package org.modelix.model.operations

class CapturedInsertPosition(val siblingsBefore: LongArray, val siblingsAfter: LongArray) {
    constructor(index: Int, children: LongArray) : this(
        children.take(index).toLongArray(),
        children.drop(index).toLongArray()
    )

    fun findIndex(children: LongArray): Int {
        if (children.contentEquals(siblingsBefore + siblingsAfter)) return siblingsBefore.size

        var leftIndex = 0
        var rightIndex = children.size

        for (sibling in siblingsBefore.reversed()) {
            val index = children.indexOf(sibling)
            if (index != -1) {
                leftIndex = index + 1
                break
            }
        }

        for (sibling in siblingsAfter) {
            val index = children.indexOf(sibling)
            if (index != -1) {
                rightIndex = index
                break
            }
        }

        return if (leftIndex < rightIndex) rightIndex else leftIndex
    }
}
