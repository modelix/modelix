package org.modelix.model.api

interface IWriteTransaction : ITransaction {
    fun setProperty(nodeId: Long, role: String?, value: String?)
    fun setReferenceTarget(sourceId: Long, role: String?, target: INodeReference?)
    fun moveChild(newParentId: Long, newRole: String?, newIndex: Int, childId: Long)
    fun addNewChild(parentId: Long, role: String?, index: Int, concept: IConcept?): Long
    fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?)
    fun deleteNode(nodeId: Long)
    //fun setTree(tree: ITree?)
}