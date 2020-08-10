package org.modelix.model.operations


class IndexAdjustments {
    private val adjustments: MutableMap<Role, MutableList<Range>> = HashMap()

    fun nodeRemoved(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(index, index, Adjustment(0, true, false)))
        apply(ranges, Range(index + 1, Int.MAX_VALUE, Adjustment(-1)))
    }

    fun undoNodeRemoved(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(index, index, Adjustment(0, false, true)))
        apply(ranges, Range(index + 1, Int.MAX_VALUE, Adjustment(1)))
    }

    fun nodeAdded(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(index, Int.MAX_VALUE, Adjustment(1)))
    }

    fun undoNodeAdded(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(index, Int.MAX_VALUE, Adjustment(-1)))
    }

    fun getAdjustedIndex(parentId: Long, role: String?, index: Int): Int {
        return adjustments[Role(parentId, role)]?.find { it.contains(index) }?.adjustment?.adjust(index) ?: 0
    }

    private fun apply(ranges: MutableList<Range>, newAdjustment: Range) {
        var i = 0;
        while (i < ranges.size) {
            if (ranges[i].contains(newAdjustment.from) && ranges[i].from != newAdjustment.from) {
                ranges.add(i + 1, Range(newAdjustment.from, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Range(ranges[i].from, newAdjustment.from - 1, ranges[i].adjustment)
            }
            if (ranges[i].contains(newAdjustment.to) && ranges[i].to != newAdjustment.to) {
                ranges.add(i + 1, Range(newAdjustment.to + 1, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Range(ranges[i].from, newAdjustment.to, ranges[i].adjustment)
            }
            i++
        }
        for (i in ranges.indices) {
            if (ranges[i].intersects(newAdjustment)) {
                require(newAdjustment.contains(ranges[i]))
                ranges[i] = Range(
                    ranges[i].from,
                    ranges[i].to,
                    ranges[i].adjustment.combine(newAdjustment.adjustment)
                )
            }
        }
        mergeRanges(ranges)
    }

    private fun mergeRanges(ranges: MutableList<Range>) {
        var i = 0;
        while (i < ranges.size - 1) {
            if (ranges[i].adjustment == ranges[i + 1].adjustment) {
                require(ranges[i].to + 1 == ranges[i + 1].from)
                ranges[i] = Range(ranges[i].from, ranges[i + 1].to, ranges[i].adjustment)
                ranges.removeAt(i + 1)
            } else {
                i++
            }
        }
    }
}

private class Range(val from: Int, val to: Int, val adjustment: Adjustment) {
    fun intersects(other: Range) = contains(other.from) || contains(other.to) || other.contains(from) || other.contains(to)
    fun contains(index: Int) = index in from..to
    fun contains(other: Range) = other.from in from..to && other.to in from..to
}
private class Adjustment(val amount: Int, val deleted: Boolean = false, val undoDelete: Boolean = false) {
    fun combine(other: Adjustment): Adjustment {
        return Adjustment(
            amount + other.amount,
            (deleted || other.deleted) && !(undoDelete || other.undoDelete),
            false
        )
    }
    fun adjust(index: Int): Int {
        if (deleted) throw RuntimeException("Attempt to access a deleted location: $index")
        return index + amount
    }
}
private data class Role(val nodeId: Long, val role: String?) {}

