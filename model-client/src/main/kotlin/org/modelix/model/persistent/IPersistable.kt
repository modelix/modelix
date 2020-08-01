package org.modelix.model.persistent

interface IPersistable {
    fun calcHash(): String?
    fun serialize()
}
