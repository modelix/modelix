/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.buildtools

abstract class CycleDetection<E, C> {
    val processed = HashSet<E>()
    val cycles: LinkedHashSet<LinkedHashSet<E>> = LinkedHashSet()
    val currentStack = ArrayList<E>()
    val categoryStack = ArrayList<C?>()

    fun process(elements: Iterable<E>) {
        for (element in elements) {
            process(element)
        }
    }

    fun process(node: E) {
        val category = getCategory(node)
        if (category != null) {
            val index = categoryStack.indexOf(category)
            if (index != -1) {
                cycles += LinkedHashSet(currentStack.drop(index))
            }
        }

        if (processed.contains(node)) return
        processed += node

        try {
            currentStack += node
            categoryStack += category
            for (dependency in getOutgoingEdges(node)) {
                process(dependency)
            }
        } finally {
            categoryStack.removeLast()
            currentStack.removeLast()
        }
    }

    abstract fun getOutgoingEdges(element: E): Iterable<E>

    abstract fun getCategory(element: E): C?
}