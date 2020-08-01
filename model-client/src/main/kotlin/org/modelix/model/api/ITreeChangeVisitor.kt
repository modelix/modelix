package org.modelix.model.api

interface ITreeChangeVisitor {
    fun containmentChanged(nodeId: Long)
    fun childrenChanged(nodeId: Long, role: String?)
    fun referenceChanged(nodeId: Long, role: String?)
    fun propertyChanged(nodeId: Long, role: String?)
    fun userObjectChanged(nodeId: Long, key: Any?)
    fun nodeRemoved(nodeId: Long)
    fun nodeAdded(nodeId: Long)
    fun nodeLoaded(nodeId: Long)
    fun nodeUnloaded(nodeId: Long)
}