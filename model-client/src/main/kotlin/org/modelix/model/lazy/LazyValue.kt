package org.modelix.model.lazy

import org.modelix.model.IKeyValueStore

abstract class LazyValue<E> {
    private var store: IKeyValueStore? = null
    private var hash: String? = null
    var value: E? = null
        get() {
            if (hash != null) {
                field = deserialize(store!![hash])
                hash = null
                store = null
            }
            return field
        }
        private set

    abstract fun deserialize(input: String?): E
}
