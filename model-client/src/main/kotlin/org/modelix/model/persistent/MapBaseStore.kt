package org.modelix.model.persistent

import gnu.trove.map.hash.THashMap
import org.modelix.model.IKeyListener
import org.modelix.model.IKeyValueStore

class MapBaseStore : IKeyValueStore {
    private val map: MutableMap<String?, String?> = THashMap()
    override fun get(key: String?): String? {
        return map[key]
    }

    override fun put(key: String?, value: String?) {
        map[key] = value
    }

    override fun getAll(keys: Iterable<String?>?): Map<String?, String?>? {
        val result: MutableMap<String?, String?> = LinkedHashMap(16, 0.75.toFloat(), false)
        for (key in keys!!) {
            result[key] = map[key]
        }
        return result
    }

    override fun putAll(entries: Map<String?, String?>?) {
        map.putAll(entries!!)
    }

    override fun prefetch(key: String?) {}
    val entries: Iterable<Map.Entry<String?, String?>>
        get() = map.entries

    override fun listen(key: String?, listener: IKeyListener?) {
        throw UnsupportedOperationException()
    }

    override fun removeListener(key: String?, listener: IKeyListener?) {
        throw UnsupportedOperationException()
    }
}
