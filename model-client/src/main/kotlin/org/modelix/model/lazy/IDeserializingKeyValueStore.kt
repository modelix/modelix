package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore
import java.util.function.BiFunction
import java.util.function.Function

interface IDeserializingKeyValueStore {
    val keyValueStore: IKeyValueStore?
    operator fun <T> get(hash: String?, deserializer: Function<String?, T>?): T?
    fun <T> getAll(hash: Iterable<String?>?, deserializer: BiFunction<String?, String?, T>?): Iterable<T>?
    fun put(hash: String?, deserialized: Any?, serialized: String?)
    fun prefetch(hash: String?)
}