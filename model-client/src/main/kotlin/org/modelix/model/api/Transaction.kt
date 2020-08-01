package org.modelix.model.api

import java.util.stream.LongStream

abstract class Transaction(override val branch: IBranch?) : ITransaction {

    override fun containsNode(nodeId: Long): Boolean {
        return tree!!.containsNode(nodeId)
    }

    override fun getConcept(nodeId: Long): IConcept? {
        return tree!!.getConcept(nodeId)
    }

    override fun getParent(nodeId: Long): Long {
        return tree!!.getParent(nodeId)
    }

    override fun getRole(nodeId: Long): String? {
        return tree!!.getRole(nodeId)
    }

    override fun getProperty(nodeId: Long, role: String?): String? {
        return tree!!.getProperty(nodeId, role)
    }

    override fun getReferenceTarget(sourceId: Long, role: String?): INodeReference? {
        return tree!!.getReferenceTarget(sourceId, role)
    }

    override fun getChildren(parentId: Long, role: String?): LongStream? {
        return tree!!.getChildren(parentId, role)
    }

    override fun getAllChildren(parentId: Long): LongStream? {
        return tree!!.getAllChildren(parentId)
    }
}
