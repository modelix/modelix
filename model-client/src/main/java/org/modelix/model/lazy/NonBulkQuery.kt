package org.modelix.model.lazy

import org.modelix.model.util.StreamUtils.toStream
import java.util.function.Consumer
import java.util.function.Function
import java.util.stream.Collectors

class NonBulkQuery(private val store: IDeserializingKeyValueStore) : IBulkQuery {
    override fun <I, O> map(input: Iterable<I>, f: Function<I, IBulkQuery.Value<O>>): IBulkQuery.Value<List<O>> {
        val list = toStream(input).map(f).map(Function<IBulkQuery.Value<O>, O> { it.execute() }).collect(Collectors.toList())
        return Value(list)
    }

    override fun <T> constant(value: T): IBulkQuery.Value<T> {
        return Value(value)
    }

    override fun <T> get(hash: String, deserializer: Function<String?, T>): IBulkQuery.Value<T> {
        return constant(store.get(hash, deserializer))
    }

    class Value<T>(private val value: T) : IBulkQuery.Value<T> {
        override fun execute(): T {
            return value
        }

        override fun <R> mapBulk(handler: Function<T, IBulkQuery.Value<R>>): IBulkQuery.Value<R> {
            return handler.apply(value)
        }

        override fun <R> map(handler: Function<T, R>): IBulkQuery.Value<R> {
            return Value(handler.apply(value))
        }

        override fun onSuccess(handler: Consumer<T>) {
            handler.accept(value)
        }

    }

}