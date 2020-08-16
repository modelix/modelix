package org.modelix.model.api

import kotlin.test.Test
import kotlin.test.assertEquals

class SimpleNode : INode {
    override val isValid: Boolean
        get() = TODO("Not yet implemented")
    override val reference: INodeReference
        get() = TODO("Not yet implemented")
    override val concept: IConcept?
        get() = TODO("Not yet implemented")
    override var roleInParent: String? = null
    override var parent: INode? = null

    private val childrenByRole = HashMap<String?, MutableList<INode>>()

    override fun getChildren(role: String?): Iterable<INode> {
        return childrenByRole[role] ?: emptyList()
    }

    override val allChildren: Iterable<INode>
        get() = childrenByRole.values.flatten()

    override fun addChild(role: String?, index: Int, node: INode) {
        val l = childrenByRole.getOrPut(role) { mutableListOf() }
        l.add(index, node)
        if (node is SimpleNode) {
            node.parent = this
            node.roleInParent = role
        }
        require(node.parent == this)
        require(node.roleInParent == role)
    }

    override fun addNewChild(role: String?, index: Int, concept: IConcept?): INode {
        TODO("Not yet implemented")
    }

    override fun removeChild(child: INode) {
        TODO("Not yet implemented")
    }

    override fun getReferenceTarget(role: String): INode? {
        TODO("Not yet implemented")
    }

    override fun setReferenceTarget(role: String, target: INode?) {
        TODO("Not yet implemented")
    }

    override fun getPropertyValue(role: String): String? {
        TODO("Not yet implemented")
    }

    override fun setPropertyValue(role: String, value: String?) {
        TODO("Not yet implemented")
    }

}

class NodeUtilTest {

    @Test
    fun getDescendantsIncludingItself() {
        val rootNode = SimpleNode()
        val child1 = SimpleNode()
        val child2 = SimpleNode()
        val grandChildA = SimpleNode()
        val grandChildB = SimpleNode()
        val grandChildC = SimpleNode()
        rootNode.addChild("link_a", 0, child1)
        rootNode.addChild("link_b", 0, child2)
        child1.addChild("link_c", 0, grandChildA)
        child1.addChild("link_c", 1, grandChildB)
        child1.addChild("link_c", 2, grandChildC)
        assertEquals(hashSetOf(grandChildA), grandChildA.getDescendants(true).toSet())
        assertEquals(hashSetOf(grandChildB), grandChildB.getDescendants(true).toSet())
        assertEquals(hashSetOf(grandChildC), grandChildC.getDescendants(true).toSet())
        assertEquals(hashSetOf(child1, grandChildA, grandChildB, grandChildC), child1.getDescendants(true).toSet())
        assertEquals(hashSetOf(child2), child2.getDescendants(true).toSet())
        assertEquals(hashSetOf(rootNode, child1, child2, grandChildA, grandChildB, grandChildC), rootNode.getDescendants(true).toSet())
    }

    @Test
    fun getDescendantsNotIncludingItself() {
        val rootNode = SimpleNode()
        val child1 = SimpleNode()
        val child2 = SimpleNode()
        val grandChildA = SimpleNode()
        val grandChildB = SimpleNode()
        val grandChildC = SimpleNode()
        rootNode.addChild("link_a", 0, child1)
        rootNode.addChild("link_b", 0, child2)
        child1.addChild("link_c", 0, grandChildA)
        child1.addChild("link_c", 1, grandChildB)
        child1.addChild("link_c", 2, grandChildC)
        assertEquals(hashSetOf(), grandChildA.getDescendants(false).toSet())
        assertEquals(hashSetOf(), grandChildB.getDescendants(false).toSet())
        assertEquals(hashSetOf(), grandChildC.getDescendants(false).toSet())
        assertEquals(hashSetOf( grandChildA, grandChildB, grandChildC), child1.getDescendants(false).toSet())
        assertEquals(hashSetOf(), child2.getDescendants(false).toSet())
        assertEquals(hashSetOf(child1, child2, grandChildA, grandChildB, grandChildC), rootNode.getDescendants(false).toSet())

    }
}