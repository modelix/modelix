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
