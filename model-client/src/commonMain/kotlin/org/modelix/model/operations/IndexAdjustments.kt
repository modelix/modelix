package org.modelix.model.operations


class IndexAdjustments {
    private val adjustments: MutableMap<Role, MutableList<Adjustment>> = HashMap()

    fun nodeRemoved(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Adjustment(0, Int.MAX_VALUE, 0)) })
        apply(ranges, Adjustment(index + 1, Int.MAX_VALUE, -1))
    }

    fun nodeAdded(parent: Long, role: String?, index: Int) {
        val ranges = adjustments.getOrPut(Role(parent, role), { mutableListOf(Adjustment(0, Int.MAX_VALUE, 0)) })
        apply(ranges, Adjustment(index, Int.MAX_VALUE, 1))
    }

    fun getAdjustedIndex(parentId: Long, role: String?, index: Int): Int {
        return index + (adjustments[Role(parentId, role)]?.find { it.contains(index) }?.adjustment ?: 0)
    }

    private fun apply(ranges: MutableList<Adjustment>, newAdjustment: Adjustment) {
        var i = 0;
        while (i < ranges.size) {
            if (ranges[i].contains(newAdjustment.from) && ranges[i].from != newAdjustment.from) {
                ranges.add(i + 1, Adjustment(newAdjustment.from, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Adjustment(ranges[i].from, newAdjustment.from - 1, ranges[i].adjustment)
            }
            if (ranges[i].contains(newAdjustment.to) && ranges[i].to != newAdjustment.to) {
                ranges.add(i + 1, Adjustment(newAdjustment.to + 1, ranges[i].to, ranges[i].adjustment))
                ranges[i] = Adjustment(ranges[i].from, newAdjustment.to, ranges[i].adjustment)
            }
            i++
        }
        for (i in ranges.indices) {
            if (ranges[i].intersects(newAdjustment)) {
                require(newAdjustment.contains(ranges[i]))
                ranges[i] = Adjustment(ranges[i].from, ranges[i].to,
                    ranges[i].adjustment + newAdjustment.adjustment)
            }
        }
        mergeRanges(ranges)
    }

    private fun mergeRanges(ranges: MutableList<Adjustment>) {
        var i = 0;
        while (i < ranges.size - 1) {
            if (ranges[i].adjustment == ranges[i + 1].adjustment) {
                require(ranges[i].to + 1 == ranges[i + 1].from)
                ranges[i] = Adjustment(ranges[i].from, ranges[i + 1].to, ranges[i].adjustment)
                ranges.removeAt(i + 1)
            } else {
                i++
            }
        }
    }
}

private class Adjustment(val from: Int, val to: Int, val adjustment: Int) {
    fun intersects(other: Adjustment) = contains(other.from) || contains(other.to) || other.contains(from) || other.contains(to)
    fun contains(index: Int) = index in from..to
    fun contains(other: Adjustment) = other.from in from..to && other.to in from..to
}
private data class Role(val nodeId: Long, val role: String?) {}

