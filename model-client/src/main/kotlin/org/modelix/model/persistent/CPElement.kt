package org.modelix.model.persistent

import org.modelix.model.persistent.HashUtil.sha256

abstract class CPElement(val id: Long, val parentId: Long, val roleInParent: String?) {

    abstract fun serialize(): String?
    val hash: String
        get() = sha256(serialize()!!)

    companion object {
        @JvmStatic
        open fun deserialize(input: String?): CPElement {
            return CPNode.deserialize(input!!)
        }
    }

}