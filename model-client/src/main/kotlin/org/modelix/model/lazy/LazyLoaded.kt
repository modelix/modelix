package org.modelix.model.lazy

import java.util.function.Function

abstract class LazyLoaded<E>(protected var hash: String?, protected var store: IDeserializingKeyValueStore?) {
    protected fun init() {
        if (hash == null) {
            return
        }
        try {
            val deserialized = store!![hash, Function { serialized: String? -> deserialize(serialized) }]
            init(deserialized)
        } finally {
            store = null
            hash = null
        }
    }

    protected abstract fun init(data: E?)
    abstract fun deserialize(serialized: String?): E
}
