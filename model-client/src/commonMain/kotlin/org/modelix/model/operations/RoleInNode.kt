package org.modelix.model.operations

data class RoleInNode(val nodeId: Long, val role: String?) {
    override fun toString() = "${nodeId.toString(16)}.$role"
}