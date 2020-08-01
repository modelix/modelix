package org.modelix.model.util

import java.util.stream.Collectors
import java.util.stream.LongStream
import java.util.stream.Stream
import java.util.stream.StreamSupport

object StreamUtils {
    fun <T> toStream(iterable: Iterable<T>): Stream<T> {
        return StreamSupport.stream(iterable.spliterator(), false)
    }

    fun indexOf(stream: LongStream, value: Long): Int {
        val iterator = stream.iterator()
        var index = 0
        while (iterator.hasNext()) {
            if (iterator.nextLong() == value) {
                return index
            }
            index++
        }
        return -1
    }

    fun <T> intersection(a: Stream<T>, b: Set<T>): Set<T> {
        return a.filter { o: T -> b.contains(o) }.collect(Collectors.toSet())
    }

    fun <T> last(list: List<T>): T? {
        return if (list.isEmpty()) null else list[list.size - 1]
    }

    fun <T> removeLast(list: MutableList<T>): T? {
        return if (list.isEmpty()) null else list.removeAt(list.size - 1)
    }
}