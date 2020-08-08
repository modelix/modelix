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

class NonBulkQuery(private val store: IDeserializingKeyValueStore) : IBulkQuery {
    override fun <I, O> map(input_: Iterable<I>, f: (I) -> IBulkQuery.Value<O>): IBulkQuery.Value<List<O>> {
        val list = input_.map(f).map { it.execute() }.toList()
        return Value(list)
    }

    override fun <T> constant(value: T): IBulkQuery.Value<T> {
        return Value(value)
    }

    override fun <T> get(hash: String, deserializer: (String) -> T): IBulkQuery.Value<T?> {
        return constant(store[hash, deserializer] ?: throw RuntimeException("store expected to have entry for hash=$hash, deserializer=$deserializer"))
    }

    class Value<T>(private val value: T) : IBulkQuery.Value<T> {
        override fun execute(): T {
            return value
        }

        override fun <R> mapBulk(handler: (T) -> IBulkQuery.Value<R>): IBulkQuery.Value<R> {
            return handler(value)
        }

        override fun <R> map(handler: (T) -> R): IBulkQuery.Value<R> {
            return Value(handler(value))
        }

        override fun onSuccess(handler: (T) -> Unit) {
            handler(value)
        }
    }
}
