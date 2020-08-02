package org.modelix.model.lazy

import org.modelix.model.api.ITree
import org.modelix.model.persistent.CPElement
import org.modelix.model.persistent.CPNode

abstract class CLElement(protected val tree_: CLTree, protected val data_: CPElement) {
    open fun getData(): CPElement? {
        return data_
    }

    val id: Long
        get() = data_.id

    fun getTree(): ITree {
        return tree_
    }

    val parent: CLNode
        get() = tree_.resolveElement(data_.parentId) as CLNode

    val roleInParent: String?
        get() = data_.roleInParent

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
