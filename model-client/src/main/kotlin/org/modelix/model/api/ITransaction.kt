package org.modelix.model.api

import java.util.stream.LongStream

interface ITransaction {
    val branch: IBranch?
    var tree: ITree?
    fun containsNode(nodeId: Long): Boolean
    fun getConcept(nodeId: Long): IConcept?
    fun getParent(nodeId: Long): Long
    fun getRole(nodeId: Long): String?
    fun getProperty(nodeId: Long, role: String?): String?
    fun getReferenceTarget(sourceId: Long, role: String?): INodeReference?
    fun getChildren(parentId: Long, role: String?): LongStream?
    fun getAllChildren(parentId: Long): LongStream?
}