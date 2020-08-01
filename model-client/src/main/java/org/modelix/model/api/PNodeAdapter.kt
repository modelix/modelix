package org.modelix.model.api

import java.util.function.Supplier
import java.util.stream.Stream

class PNodeAdapter(val nodeId: Long, val branch: IBranch?) : INode {

    protected fun unwrap(node: INode?): Long {
        if (node == null) {
            return 0
        }
        if (node !is PNodeAdapter) {
            throw RuntimeException("Not a " + PNodeAdapter::class.java.simpleName + ": " + node)
        }
        val adapter = node
        if (adapter.branch != branch) {
            throw RuntimeException("Node belongs to a different branch. Expected " + branch + " but was " + adapter.branch)
        }
        return adapter.nodeId
    }

    protected fun notifyAccess() {
//    DependencyBroadcaster.INSTANCE.dependencyAccessed(new PNodeDependency(branch, nodeId));
    }

    override fun addChild(role: String?, index: Int, node: INode?) {
        throw UnsupportedOperationException("Not implemented")
    }

    override fun addNewChild(role: String?, index: Int, concept: IConcept?): INode? {
        return wrap(branch!!.writeTransaction!!.addNewChild(nodeId, role, index, concept))
    }

    override val allChildren: Stream<INode>
        get() {
            notifyAccess()
            return branch!!.transaction!!.getAllChildren(nodeId)!!.mapToObj { id: Long -> wrap(id) }
        }

    override fun getChildren(role: String?): Stream<INode?>? {
        notifyAccess()
        return branch!!.transaction!!.getChildren(nodeId, role)!!.mapToObj { id: Long -> wrap(id) }
    }

    override val concept: IConcept?
        get() {
            notifyAccess()
            return branch!!.computeRead(Supplier { branch.transaction!!.getConcept(nodeId) })
        }

    override val parent: INode?
        get() {
            notifyAccess()
            val parent = branch!!.transaction!!.getParent(nodeId)
            return if (parent == 0L || parent == ITree.ROOT_ID) {
                null
            } else wrap(parent)
        }

    override fun getPropertyValue(role: String?): String? {
        notifyAccess()
        return branch!!.transaction!!.getProperty(nodeId, role)
    }

    override val reference: INodeReference
        get() = PNodeReference(nodeId)

    override fun getReferenceTarget(role: String?): INode? {
        notifyAccess()
        val targetRef = branch!!.transaction!!.getReferenceTarget(nodeId, role)
        if (targetRef is PNodeReference) {
            return targetRef.resolveNode(PNodeResolveContext(branch))
        }
        val context = INodeResolveContext.CONTEXT_VALUE.getValue()
            ?: throw RuntimeException(INodeResolveContext::class.java.simpleName + " not available")
        return targetRef?.resolveNode(context)
    }

    override val roleInParent: String?
        get() {
            notifyAccess()
            return branch!!.transaction!!.getRole(nodeId)
        }

    override val isValid: Boolean
        get() {
            notifyAccess()
            return branch!!.transaction!!.containsNode(nodeId)
        }

    override fun removeChild(child: INode?) {
        branch!!.writeTransaction!!.deleteNode(unwrap(child))
    }

    override fun setPropertyValue(role: String?, value: String?) {
        branch!!.writeTransaction!!.setProperty(nodeId, role, value)
    }

    override fun setReferenceTarget(role: String?, target: INode?) {
        branch!!.writeTransaction!!.setReferenceTarget(nodeId, role, target?.reference)
    }

    fun setReferenceTarget(role: String?, target: INodeReference?) {
        branch!!.writeTransaction!!.setReferenceTarget(nodeId, role, target)
    }

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || this.javaClass != o.javaClass) {
            return false
        }
        val that = o as PNodeAdapter
        if (if (branch != null) branch != that.branch else that.branch != null) {
            return false
        }
        return if (nodeId != that.nodeId) {
            false
        } else true
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + if (branch != null) (branch as Any).hashCode() else 0
        result = 31 * result + (nodeId xor (nodeId shr 32)).toInt()
        return result
    }

    override fun toString(): String {
        var concept: IConcept? = null
        try {
            concept = branch!!.computeRead(Supplier { branch.transaction!!.getConcept(nodeId) })
        } catch (ex: Exception) {
        }
        var str = "PNode$nodeId"
        if (concept != null) {
            str += "[$concept]"
        }
        return str
    }

    // companion object {
    @JvmOverloads
    fun wrap(id: Long, branch: IBranch? = this.branch): INode? {
        return if (id == 0L) null else PNodeAdapter(id, branch)
    }
    // }

    init {
        notifyAccess()
    }
}
