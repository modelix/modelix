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

package org.modelix.model.lazy

import java.util.function.Consumer
import java.util.function.Function

interface IBulkQuery {
    fun <I, O> map(input_: Iterable<I>, f: Function<I, Value<O>>): Value<List<O>>
    fun <T> constant(value: T): Value<T>
    operator fun <T> get(hash: String, deserializer: Function<String, T>): Value<T?>
    interface Value<T> {
        fun execute(): T
        fun <R> mapBulk(handler: Function<T, Value<R>>): Value<R>
        fun <R> map(handler: Function<T, R>): Value<R>
        fun onSuccess(handler: Consumer<T?>)
    }
}
