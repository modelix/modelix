package org.modelix.model.lazy

import org.modelix.model.persistent.CPElement
import org.modelix.model.persistent.HashUtil

object IDeserializingKeyValueStore_extensions {
    fun put(_this: IDeserializingKeyValueStore, deserialized: Any?, serialized: String?) {
        _this.put(HashUtil.sha256(serialized), deserialized, serialized)
    }

    @JvmStatic
    fun put(_this: IDeserializingKeyValueStore, element: CPElement) {
        put(_this, element, element.serialize())
    }
}