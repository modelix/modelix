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

package org.modelix.model.util.pmap

import java.util.Arrays

object COWArrays {
    fun <T> insert(array: Array<T>, index: Int, element: T): Array<T> {
        val newArray = java.lang.reflect.Array.newInstance(array.javaClass.componentType, array.size + 1) as Array<T>
        System.arraycopy(array, 0, newArray, 0, index)
        newArray[index] = element
        System.arraycopy(array, index, newArray, index + 1, array.size - index)
        return newArray
    }

    fun insert(array: LongArray, index: Int, element: Long): LongArray {
        val newArray = LongArray(array.size + 1)
        System.arraycopy(array, 0, newArray, 0, index)
        newArray[index] = element
        System.arraycopy(array, index, newArray, index + 1, array.size - index)
        return newArray
    }

    fun insert(array: LongArray, index: Int, elements: LongArray): LongArray {
        val newArray = LongArray(array.size + elements.size)
        System.arraycopy(array, 0, newArray, 0, index)
        System.arraycopy(elements, 0, newArray, index, elements.size)
        System.arraycopy(array, index, newArray, index + elements.size, array.size - index)
        return newArray
    }

    fun <T> removeAt(array: Array<T>, index: Int): Array<T> {
        val newArray = java.lang.reflect.Array.newInstance(array.javaClass.componentType, array.size - 1) as Array<T>
        System.arraycopy(array, 0, newArray, 0, index)
        System.arraycopy(array, index + 1, newArray, index, array.size - index - 1)
        return newArray
    }

    fun removeAt(array: LongArray, index: Int): LongArray {
        val newArray = LongArray(array.size - 1)
        System.arraycopy(array, 0, newArray, 0, index)
        System.arraycopy(array, index + 1, newArray, index, array.size - index - 1)
        return newArray
    }

    fun <T> remove(array: Array<T>, value: T): Array<T> {
        val index = indexOf(array, value)
        return if (index != -1) removeAt(array, index) else array
    }

    @JvmStatic
    fun remove(array: LongArray, value: Long): LongArray {
        val index = indexOf(array, value)
        return if (index != -1) removeAt(array, index) else array
    }

    fun removeAll(array: LongArray, valuesToRemove: LongArray): LongArray {
        val sortedValues = copy(valuesToRemove)
        Arrays.sort(sortedValues)
        val filtered = LongArray(array.size)
        var cursor = 0
        for (l in array) {
            if (Arrays.binarySearch(sortedValues, l) < 0) {
                filtered[cursor++] = l
            }
        }
        return Arrays.copyOf(filtered, cursor)
    }

    operator fun <T> set(array: Array<T>, index: Int, value: T): Array<T> {
        val newArray = Arrays.copyOf(array, array.size)
        newArray[index] = value
        return newArray
    }

    operator fun set(array: LongArray, index: Int, value: Long): LongArray {
        val newArray = Arrays.copyOf(array, array.size)
        newArray[index] = value
        return newArray
    }

    fun <T> add(array: Array<T>, value: T): Array<T> {
        val newArray = Arrays.copyOf(array, array.size + 1)
        newArray[newArray.size - 1] = value
        return newArray
    }

    fun add(array: LongArray, value: Long): LongArray {
        val newArray = Arrays.copyOf(array, array.size + 1)
        newArray[newArray.size - 1] = value
        return newArray
    }

    fun add(array: LongArray, values: LongArray): LongArray {
        val newArray = Arrays.copyOf(array, array.size + values.size)
        System.arraycopy(values, 0, newArray, array.size, values.size)
        return newArray
    }

    fun <T> copy(array: Array<T>): Array<T> {
        return Arrays.copyOf(array, array.size)
    }

    @JvmStatic
    fun copy(array: LongArray): LongArray {
        return Arrays.copyOf(array, array.size)
    }

    fun <T> addIfAbsent(array: Array<T>, value: T): Array<T> {
        return if (indexOf(array, value) == -1) add(array, value) else array
    }

    fun <T> indexOf(array: Array<T>, value: T): Int {
        for (i in array.indices) {
            if (array[i] == value) {
                return i
            }
        }
        return -1
    }

    @JvmStatic
    fun indexOf(array: LongArray, value: Long): Int {
        for (i in array.indices) {
            if (array[i] == value) {
                return i
            }
        }
        return -1
    }

    fun <T> concat(array1: Array<T>, array2: Array<T>): Array<T> {
        val newArray = Arrays.copyOf(array1, array1.size + array2.size)
        System.arraycopy(array2, 0, newArray, array1.size, array2.size)
        return newArray
    }
}
