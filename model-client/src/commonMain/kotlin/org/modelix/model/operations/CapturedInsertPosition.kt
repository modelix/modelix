package org.modelix.model.operations

class CapturedInsertPosition(val siblingsBefore: LongArray, val siblingsAfter: LongArray) {
    constructor(index: Int, children: LongArray) : this(children.take(index).toLongArray(),
        children.drop(index).toLongArray())

    fun findIndex(children: LongArray): Int {
        if (children.contentEquals(siblingsBefore + siblingsAfter)) return siblingsBefore.size

        var bestIndex: Int = 0
        var bestRating: Int = -1
        for (i in children.indices) {
            val rating = children.take(i).filter { siblingsBefore.contains(it) }.size +
                children.drop(i).filter { siblingsAfter.contains(it) }.size
            if (rating >= bestRating) {
                bestRating = rating
                bestIndex = i
            }
        }
        return bestIndex
    }
}