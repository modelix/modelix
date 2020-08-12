package org.modelix.model.operations

data class PositionInRole(val roleInNode: RoleInNode, val index: Int) {
    constructor(nodeId: Long, role: String?, index: Int) : this(RoleInNode(nodeId, role), index)
    val nodeId: Long
        get() = roleInNode.nodeId
    val role: String?
        get() = roleInNode.role
    override fun toString() = "$roleInNode[$index]"
    fun withIndex(newIndex: Int) = PositionInRole(roleInNode, newIndex)
}