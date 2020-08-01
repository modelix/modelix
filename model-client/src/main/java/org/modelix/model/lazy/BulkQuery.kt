package org.modelix.model.lazy

import io.vavr.Tuple
import io.vavr.Tuple3
import org.apache.commons.lang3.mutable.MutableInt
import java.util.*
import java.util.function.Consumer
import java.util.function.Function
import java.util.stream.Collectors
import java.util.stream.StreamSupport

/**
 * Not thread safe
 */
class BulkQuery(private val store: IDeserializingKeyValueStore) : IBulkQuery {
    private var queue: MutableList<Tuple3<String, Function<String, *>, Consumer<Any?>>> = ArrayList()
    private var processing = false
    protected fun executeBulkQuery(keys: Iterable<String>, deserializers: Map<String, Function<String, *>>): Map<String, Any> {
        val values = store.getAll(keys) { key: String?, serialized: String? -> deserializers[key]!!.apply(serialized!!) }
        val result: MutableMap<String, Any> = HashMap()
        run {
            val key_it = keys.iterator()
            val value_it: Iterator<Any> = values.iterator()
            var key_var: String
            var value_var: Any
            while (key_it.hasNext() && value_it.hasNext()) {
                key_var = key_it.next()
                value_var = value_it.next()
                result[key_var] = value_var
            }
        }
        return result
    }

    fun query(key: String, deserializer: Function<String, *>, callback: Consumer<Any?>) {
        queue.add(Tuple.of<String, Function<String, *>, Consumer<Any?>>(key, deserializer, callback))
    }

    override fun <T> get(hash: String, deserializer: Function<String, T>): IBulkQuery.Value<T> {
        val result = Value<T>()
        query(hash, deserializer, Consumer { value: Any? -> result.success(value as T) })
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
            while (!queue.isEmpty()) {
                val currentRequests: List<Tuple3<String, Function<String, *>, Consumer<Any?>>> = queue
                queue = ArrayList()
                val deserializers: MutableMap<String, Function<String, *>> = HashMap()
                for (request in currentRequests) {
                    deserializers[request._1()] = request._2()
                }
                val entries = executeBulkQuery(
                        currentRequests.stream()
                                .map { obj: Tuple3<String, Function<String, *>, Consumer<Any?>> -> obj._1() }
                                .distinct()
                                .collect(Collectors.toList()),
                        deserializers)
                for (request in currentRequests) {
                    request._3().accept(entries[request._1()])
                }
            }
        } finally {
            processing = false
        }
    }

    override fun <I, O> map(input_: Iterable<I>, f: Function<I, IBulkQuery.Value<O>>): IBulkQuery.Value<List<O>> {
        val input = StreamSupport.stream(input_.spliterator(), false).collect(Collectors.toList())
        if (input.isEmpty()) {
            return constant(emptyList())
        }
        val output = arrayOfNulls<Any>(input.size)
        val done = BooleanArray(input.size)
        val remaining = MutableInt(input.size)
        val result = Value<List<O>>()
        for (i_ in input.indices) {
            f.apply(input[i_]).onSuccess(Consumer { value ->
                if (done[i_]) {
                    return@Consumer
                }
                output[i_] = value
                done[i_] = true
                remaining.decrement()
                if (remaining.toInt() == 0) {
                    result.success(Arrays.stream(output).map { e: Any? -> e as O }.collect(Collectors.toList()))
                }
            })
        }
        return result
    }

    inner class Value<T> : IBulkQuery.Value<T> {
        private var handlers: MutableList<Consumer<T?>>? = ArrayList()
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
                handler.accept(value)
            }
            handlers = null
        }

        @Synchronized
        override fun onSuccess(handler: Consumer<T?>) {
            if (done) {
                handler.accept(value)
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

        override fun <R> map(handler: Function<T, R>): IBulkQuery.Value<R> {
            val result = Value<R>()
            onSuccess { v: T? -> result.success(handler.apply(v!!)) }
            return result
        }

        override fun <R> mapBulk(handler: Function<T, IBulkQuery.Value<R>>): IBulkQuery.Value<R> {
            val result = Value<R>()
            onSuccess { v: T? -> handler.apply(v!!).onSuccess { value: R -> result.success(value) } }
            return result
        }
    }

}