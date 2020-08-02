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

import java.util.function.Supplier

class ContextValue<E> {
    private var defaultValue: E? = null
    private val value = ThreadLocal<MutableList<E>>()

    constructor() {}
    constructor(defaultValue: E) {
        this.defaultValue = defaultValue
    }

    private val stack: MutableList<E>
        private get() {
            var stack = value.get()
            if (stack == null) {
                stack = ArrayList()
                value.set(stack)
            }
            return stack
        }

    fun runWith(newValue: E, r: Runnable) {
        try {
            stack.add(newValue)
            r.run()
        } finally {
            val stack: MutableList<E> = stack
            stack.removeAt(stack.size - 1)
        }
    }

    fun <T> computeWith(newValue: E, r: Supplier<T>): T {
        return try {
            stack.add(newValue)
            r.get()
        } finally {
            val stack: MutableList<E> = stack
            stack.removeAt(stack.size - 1)
        }
    }

    fun getValue(): E? {
        val stack: List<E> = stack
        return if (stack.isEmpty()) defaultValue else stack[stack.size - 1]
    }

    val allValues: Iterable<E>
        get() = stack
}
