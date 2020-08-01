package org.modelix.model.operations

interface IModifiesChildrenOp {
    fun adjustIndex(parentId: Long, role: String?, index: Int): Int
}