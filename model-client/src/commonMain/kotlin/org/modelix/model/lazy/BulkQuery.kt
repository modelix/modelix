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

import org.modelix.model.persistent.IKVValue
import kotlin.collections.ArrayList
import kotlin.jvm.Synchronized

/**
 * Not thread safe
 */
class BulkQuery(private val store: IDeserializingKeyValueStore) : IBulkQuery {
    private var queue: MutableList<Pair<KVEntryReference<IKVValue>, (IKVValue?) -> Unit>> = ArrayList()
    private var processing = false
    protected fun executeBulkQuery(refs: Iterable<KVEntryReference<IKVValue>>): Map<String, IKVValue?> {
        val refsMap = refs.associateBy { it.getHash() }
        val result = HashMap<String, IKVValue?>()
        result += refs.filter { !it.isWritten() }.map { it.getHash() to it.getValue(store) }
        val keysToQuery = refs.filter { it.isWritten() }.map { it.getHash() }
        val queriedValues = store.getAll(keysToQuery) { key, serialized -> refsMap[key]!!.getDeserializer()(serialized) }
        result += keysToQuery.zip(queriedValues)
        return result
    }

    fun <T : IKVValue> query(key: KVEntryReference<T>, callback: (T) -> Unit) {
        queue.add(Pair(key as KVEntryReference<IKVValue>, callback as (IKVValue?) -> Unit))
    }

    override fun <T : IKVValue> get(hash: KVEntryReference<T>): IBulkQuery.Value<T?> {
        val result = Value<T?>()
        query(hash) { value: T? -> result.success(value) }
        return result
    }

    override fun <T> constant(value: T): IBulkQuery.Value<T> {
        return Value(value)
    }

    fun process() {
        if (processing) {
            throw RuntimeException("Already processing")
        }
        processing = true
        try {
            while (queue.isNotEmpty()) {
                val currentRequests: List<Pair<KVEntryReference<IKVValue>, (IKVValue?) -> Unit>> = queue
                queue = ArrayList()
                val entries: Map<String, IKVValue?> = executeBulkQuery(
                    currentRequests.map { obj -> obj.first }.distinct()
                )
                for (request in currentRequests) {
                    request.second(entries[request.first.getHash()])
                }
            }
        } finally {
            processing = false
        }
    }

    override fun <I, O> map(input_: Iterable<I>, f: (I) -> IBulkQuery.Value<O>): IBulkQuery.Value<List<O>> {
        val input = input_.toList()
        if (input.isEmpty()) {
            return constant(emptyList())
        }
        val output = arrayOfNulls<Any>(input.size)
        val done = BooleanArray(input.size)
        var remaining = input.size
        val result = Value<List<O>>()
        for (i_ in input.indices) {
            f(input[i_]).onSuccess { value ->
                if (done[i_]) {
                    return@onSuccess
                }
                output[i_] = value
                done[i_] = true
                remaining--
                if (remaining == 0) {
                    result.success(output.map { e: Any? -> e as O })
                }
            }
        }
        return result
    }

    inner class Value<T> : IBulkQuery.Value<T> {
        private var handlers: MutableList<(T) -> Unit>? = ArrayList()
        private var value: T? = null
        private var done = false

        constructor() {}
        constructor(value: T) {
            this.value = value
            done = true
        }

        @Synchronized
        fun success(value: T) {
            check(!done) { "Value is already set" }
            this.value = value
            done = true
            for (handler in handlers!!) {
                handler(value)
            }
            handlers = null
        }

        @Synchronized
        override fun onSuccess(handler: (T) -> Unit) {
            if (done) {
                handler(value as T)
            } else {
                handlers!!.add(handler)
            }
        }

        override fun execute(): T {
            process()
            if (!done) {
                throw RuntimeException("No value received")
            }
            return value!!
        }

        override fun <R> map(handler: (T) -> R): IBulkQuery.Value<R> {
            val result = Value<R>()
            onSuccess { v -> result.success(handler(v)) }
            return result
        }

        override fun <R> mapBulk(handler: (T) -> IBulkQuery.Value<R>): IBulkQuery.Value<R> {
            val result = Value<R>()
            onSuccess { v -> handler(v).onSuccess { value -> result.success(value) } }
            return result
        }
    }
}
