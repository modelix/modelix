package org.modelix.model.lazy

import java.util.function.Consumer
import java.util.function.Function

interface IBulkQuery {
    fun <I, O> map(input_: Iterable<I>?, f: Function<I, Value<O>?>?): Value<List<O>?>?
    fun <T> constant(value: T): Value<T>?
    operator fun <T> get(hash: String?, deserializer: Function<String?, T>?): Value<T>?
    interface Value<T> {
        fun execute(): T
        fun <R> mapBulk(handler: Function<T, Value<R>?>?): Value<R>?
        fun <R> map(handler: Function<T, R>?): Value<R>?
        fun onSuccess(handler: Consumer<T?>?)
    }
}
