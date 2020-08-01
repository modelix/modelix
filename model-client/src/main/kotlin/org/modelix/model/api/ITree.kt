package org.modelix.model.api

import java.util.stream.LongStream

interface ITree {
    fun visitChanges(oldVersion: ITree?, visitor: ITreeChangeVisitor?)
    fun containsNode(nodeId: Long): Boolean
    fun getProperty(nodeId: Long, role: String?): String?
    fun getChildren(parentId: Long, role: String?): LongStream?
    fun getConcept(nodeId: Long): IConcept?
    fun getParent(nodeId: Long): Long
    fun getRole(nodeId: Long): String?
    fun setProperty(nodeId: Long, role: String?, value: String?): ITree?
    fun getReferenceTarget(sourceId: Long, role: String?): INodeReference?
    fun setReferenceTarget(sourceId: Long, role: String?, target: INodeReference?): ITree?
    fun getReferenceRoles(sourceId: Long): Iterable<String?>?
    fun getPropertyRoles(sourceId: Long): Iterable<String?>?
    fun getChildRoles(sourceId: Long): Iterable<String?>?
    fun getAllChildren(parentId: Long): LongStream?
    fun moveChild(newParentId: Long, newRole: String?, newIndex: Int, childId: Long): ITree?
    fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?): ITree?
    fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray?, concepts: Array<IConcept?>?): ITree?
    fun deleteNode(nodeId: Long): ITree?
    fun deleteNodes(nodeIds: LongArray?): ITree?

    companion object {
        const val ROOT_ID = 1L
        const val DETACHED_NODES_ROLE = "detached"
    }
}
