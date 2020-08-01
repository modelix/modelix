package org.modelix.model

interface IKeyValueStore {
    operator fun get(key: String?): String?
    fun put(key: String?, value: String?)
    fun getAll(keys: Iterable<String?>?): Map<String?, String?>?
    fun putAll(entries: Map<String?, String?>?)
    fun prefetch(key: String?)
    fun listen(key: String?, listener: IKeyListener?)
    fun removeListener(key: String?, listener: IKeyListener?)
}
