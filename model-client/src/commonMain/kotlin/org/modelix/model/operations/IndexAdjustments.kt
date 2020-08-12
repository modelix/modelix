package org.modelix.model.operations


class IndexAdjustments {
    private val adjustments: MutableMap<RoleInNode, MutableList<Range>> = HashMap()

    fun nodeRemoved(position: PositionInRole) {
        val ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(position.index, position.index, Adjustment(0, true, false)))
        apply(ranges, Range(position.index + 1, Int.MAX_VALUE, Adjustment(-1)))
    }

    fun undoNodeRemoved(position: PositionInRole) {
        val ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(position.index, position.index, Adjustment(0, false, true)))
        apply(ranges, Range(position.index + 1, Int.MAX_VALUE, Adjustment(1)))
    }

    fun concurrentNodeAdd(position: PositionInRole) {
        val ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(position.index, Int.MAX_VALUE, Adjustment(1)))
    }

    fun nodeAdd(position: PositionInRole) {
        val amount = getAdjustedIndex(position, true) - position.index
        var ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        ensureRangeBorders(ranges, position.index, Int.MAX_VALUE)
        ranges = (ranges.filter { it.from < position.index }
                + Range(position.index, position.index, Adjustment(amount))
                + ranges.filter { it.from >= position.index }.map { Range(it.from + 1, if (it.to < Int.MAX_VALUE) it.to + 1 else Int.MAX_VALUE, it.adjustment) }
            ).toMutableList()
        mergeRanges(ranges)
        adjustments[position.roleInNode] = ranges
    }

    fun nodeRemove(position: PositionInRole) {
        var ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        ensureRangeBorders(ranges, position.index, Int.MAX_VALUE)
        ranges = ranges.filter { it.from == position.index }.toMutableList()
        mergeRanges(ranges)
        adjustments[position.roleInNode] = ranges
    }

    fun undoConcurrentNodeAdd(position: PositionInRole) {
        val ranges = adjustments.getOrPut(position.roleInNode, { mutableListOf(Range(0, Int.MAX_VALUE, Adjustment(0))) })
        apply(ranges, Range(position.index, Int.MAX_VALUE, Adjustment(-1)))
    }

    fun getAdjustedIndex(position: PositionInRole, allowDeleted: Boolean = false): Int {
        return adjustments[position.roleInNode]?.find { it.contains(position.index) }?.adjustment?.adjust(position.index, allowDeleted) ?: position.index
    }

    private fun apply(ranges: MutableList<Range>, newAdjustment: Range) {
        ensureRangeBorders(ranges, newAdjustment.from, newAdjustment.to)
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

    private fun ensureRangeBorders(ranges: MutableList<Range>, from: Int, to: Int) {
        var i = 0;
        while (i < ranges.size) {
            if (ranges[i].contains(from) && ranges[i].from != from) {
                ranges.add(i + 1, Range(from, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Range(ranges[i].from, from - 1, ranges[i].adjustment)
            }
            if (ranges[i].contains(to) && ranges[i].to != to) {
                ranges.add(i + 1, Range(to + 1, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Range(ranges[i].from, to, ranges[i].adjustment)
            }
            i++
        }
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
    override fun toString(): String {
        return "$from..${if (to == Int.MAX_VALUE) "" else to}/$adjustment"
    }
}
private class Adjustment(val amount: Int, val invalid: Boolean = false, val undoInvalid: Boolean = false) {
    fun combine(other: Adjustment): Adjustment {
        return Adjustment(
            amount + other.amount,
            (invalid || other.invalid) && !(undoInvalid || other.undoInvalid),
            false
        )
    }
    fun adjust(index: Int, allowDeleted: Boolean): Int {
        if (!allowDeleted && invalid) {
            throw RuntimeException("Attempt to access a deleted location: $index")
        }
        return index + amount
    }

    override fun toString(): String {
        return when {
            undoInvalid -> "UNDO_DELETE"
            invalid -> "DELETED"
            else -> amount.toString()
        }
    }
}
