package org.modelix.model.lazy

import org.modelix.model.api.ITree
import org.modelix.model.persistent.CPElement
import org.modelix.model.persistent.CPNode

abstract class CLElement(protected val _tree: CLTree, val _data: CPElement) {
    open fun getData(): CPElement? {
        return _data
    }

    val id: Long
        get() = _data.id

    fun getTree(): ITree {
        return _tree
    }

    val parent: CLNode
        get() = _tree.resolveElement(_data.parentId) as CLNode

    val roleInParent: String
        get() = _data.roleInParent

    val ref: CLElementRef
        get() = CLElementRef(id)

    companion object {
        @JvmStatic
        fun create(tree: CLTree?, data: CPElement?): CLNode? {
            return if (data == null) {
                null
            } else CLNode(tree, data as CPNode?)
        }
    }

}