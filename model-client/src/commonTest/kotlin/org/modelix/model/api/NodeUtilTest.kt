package org.modelix.model.api

import org.modelix.model.area.IArea
import kotlin.test.Test
import kotlin.test.assertEquals

class SimpleTestConcept : IConcept {
    override val language: ILanguage?
        get() = TODO("Not yet implemented")

    override fun getDirectSuperConcepts(): List<IConcept> {
        TODO("Not yet implemented")
    }

    override fun getReference(): IConceptReference {
        TODO("Not yet implemented")
    }

    override fun getUID(): String {
        TODO("Not yet implemented")
    }

    override fun isAbstract(): Boolean {
        TODO("Not yet implemented")
    }

    override fun getShortName(): String {
        TODO("Not yet implemented")
    }

    override fun getLongName(): String {
        TODO("Not yet implemented")
    }

    override fun isSubConceptOf(superConcept: IConcept?): Boolean {
        return this == superConcept
    }

    override fun isExactly(concept: IConcept?): Boolean {
        return this == concept
    }

    override fun getAllChildLinks(): List<IChildLink> {
        TODO("Not yet implemented")
    }

    override fun getAllProperties(): List<IProperty> {
        TODO("Not yet implemented")
    }

    override fun getAllReferenceLinks(): List<IReferenceLink> {
        TODO("Not yet implemented")
    }

    override fun getOwnChildLinks(): List<IChildLink> {
        TODO("Not yet implemented")
    }

    override fun getOwnProperties(): List<IProperty> {
        TODO("Not yet implemented")
    }

    override fun getOwnReferenceLinks(): List<IReferenceLink> {
        TODO("Not yet implemented")
    }

    override fun getProperty(name: String): IProperty {
        TODO("Not yet implemented")
    }

    override fun getChildLink(name: String): IChildLink {
        TODO("Not yet implemented")
    }

    override fun getReferenceLink(name: String): IReferenceLink {
        TODO("Not yet implemented")
    }
}

class SimpleTestNode(override val concept: IConcept? = null) : INode {
    override fun getArea(): IArea {
        TODO("Not yet implemented")
    }

    override val isValid: Boolean
        get() = TODO("Not yet implemented")
    override val reference: INodeReference
        get() = TODO("Not yet implemented")
    override var roleInParent: String? = null
    override var parent: INode? = null

    private val childrenByRole = HashMap<String?, MutableList<INode>>()

    override fun getChildren(role: String?): Iterable<INode> {
        return childrenByRole[role] ?: emptyList()
    }

    override val allChildren: Iterable<INode>
        get() = childrenByRole.values.flatten()

    override fun moveChild(role: String?, index: Int, node: INode) {
        val l = childrenByRole.getOrPut(role) { mutableListOf() }
        l.add(index, node)
        if (node is SimpleTestNode) {
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

    override fun getPropertyRoles(): List<String> {
        TODO("Not yet implemented")
    }

    override fun getReferenceRoles(): List<String> {
        TODO("Not yet implemented")
    }
}

class NodeUtilTest {

    @Test
    fun getDescendantsIncludingItself() {
        val rootNode = SimpleTestNode()
        val child1 = SimpleTestNode()
        val child2 = SimpleTestNode()
        val grandChildA = SimpleTestNode()
        val grandChildB = SimpleTestNode()
        val grandChildC = SimpleTestNode()
        rootNode.moveChild("link_a", 0, child1)
        rootNode.moveChild("link_b", 0, child2)
        child1.moveChild("link_c", 0, grandChildA)
        child1.moveChild("link_c", 1, grandChildB)
        child1.moveChild("link_c", 2, grandChildC)
        assertEquals(hashSetOf(grandChildA), grandChildA.getDescendants(true).toSet())
        assertEquals(hashSetOf(grandChildB), grandChildB.getDescendants(true).toSet())
        assertEquals(hashSetOf(grandChildC), grandChildC.getDescendants(true).toSet())
        assertEquals(hashSetOf(child1, grandChildA, grandChildB, grandChildC), child1.getDescendants(true).toSet())
        assertEquals(hashSetOf(child2), child2.getDescendants(true).toSet())
        assertEquals(hashSetOf(rootNode, child1, child2, grandChildA, grandChildB, grandChildC), rootNode.getDescendants(true).toSet())
    }

    @Test
    fun getDescendantsNotIncludingItself() {
        val rootNode = SimpleTestNode()
        val child1 = SimpleTestNode()
        val child2 = SimpleTestNode()
        val grandChildA = SimpleTestNode()
        val grandChildB = SimpleTestNode()
        val grandChildC = SimpleTestNode()
        rootNode.moveChild("link_a", 0, child1)
        rootNode.moveChild("link_b", 0, child2)
        child1.moveChild("link_c", 0, grandChildA)
        child1.moveChild("link_c", 1, grandChildB)
        child1.moveChild("link_c", 2, grandChildC)
        assertEquals(hashSetOf(), grandChildA.getDescendants(false).toSet())
        assertEquals(hashSetOf(), grandChildB.getDescendants(false).toSet())
        assertEquals(hashSetOf(), grandChildC.getDescendants(false).toSet())
        assertEquals(hashSetOf(grandChildA, grandChildB, grandChildC), child1.getDescendants(false).toSet())
        assertEquals(hashSetOf(), child2.getDescendants(false).toSet())
        assertEquals(hashSetOf(child1, child2, grandChildA, grandChildB, grandChildC), rootNode.getDescendants(false).toSet())
    }

    @Test
    fun getAncestorIncludingItself() {
        val concept1 = SimpleTestConcept()
        val concept2 = SimpleTestConcept()
        val concept3 = SimpleTestConcept()
        val concept4 = SimpleTestConcept()
        val rootNode = SimpleTestNode(concept1)
        val child1 = SimpleTestNode(concept2)
        val grandChildA = SimpleTestNode(concept3)
        rootNode.moveChild("link_a", 0, child1)
        child1.moveChild("link_c", 0, grandChildA)
        assertEquals(null, null.getAncestor(null, true))
        assertEquals(null, null.getAncestor(concept1, true))
        assertEquals(null, null.getAncestor(concept2, true))
        assertEquals(null, null.getAncestor(concept3, true))
        assertEquals(null, null.getAncestor(concept4, true))
        assertEquals(null, rootNode.getAncestor(null, true))
        assertEquals(rootNode, rootNode.getAncestor(concept1, true))
        assertEquals(null, rootNode.getAncestor(concept2, true))
        assertEquals(null, rootNode.getAncestor(concept3, true))
        assertEquals(null, rootNode.getAncestor(concept4, true))
        assertEquals(null, child1.getAncestor(null, true))
        assertEquals(rootNode, child1.getAncestor(concept1, true))
        assertEquals(child1, child1.getAncestor(concept2, true))
        assertEquals(null, child1.getAncestor(concept3, true))
        assertEquals(null, child1.getAncestor(concept4, true))
        assertEquals(null, grandChildA.getAncestor(null, true))
        assertEquals(rootNode, grandChildA.getAncestor(concept1, true))
        assertEquals(child1, grandChildA.getAncestor(concept2, true))
        assertEquals(grandChildA, grandChildA.getAncestor(concept3, true))
        assertEquals(null, grandChildA.getAncestor(concept4, true))
    }

    @Test
    fun getAncestorNotIncludingItself() {
        val concept1 = SimpleTestConcept()
        val concept2 = SimpleTestConcept()
        val concept3 = SimpleTestConcept()
        val concept4 = SimpleTestConcept()
        val rootNode = SimpleTestNode(concept1)
        val child1 = SimpleTestNode(concept2)
        val grandChildA = SimpleTestNode(concept3)
        rootNode.moveChild("link_a", 0, child1)
        child1.moveChild("link_c", 0, grandChildA)
        assertEquals(null, null.getAncestor(null, false))
        assertEquals(null, null.getAncestor(concept1, false))
        assertEquals(null, null.getAncestor(concept2, false))
        assertEquals(null, null.getAncestor(concept3, false))
        assertEquals(null, null.getAncestor(concept4, false))
        assertEquals(null, rootNode.getAncestor(null, false))
        assertEquals(null, rootNode.getAncestor(concept1, false))
        assertEquals(null, rootNode.getAncestor(concept2, false))
        assertEquals(null, rootNode.getAncestor(concept3, false))
        assertEquals(null, rootNode.getAncestor(concept4, false))
        assertEquals(null, child1.getAncestor(null, false))
        assertEquals(rootNode, child1.getAncestor(concept1, false))
        assertEquals(null, child1.getAncestor(concept2, false))
        assertEquals(null, child1.getAncestor(concept3, false))
        assertEquals(null, child1.getAncestor(concept4, false))
        assertEquals(null, grandChildA.getAncestor(null, false))
        assertEquals(rootNode, grandChildA.getAncestor(concept1, false))
        assertEquals(child1, grandChildA.getAncestor(concept2, false))
        assertEquals(null, grandChildA.getAncestor(concept3, false))
        assertEquals(null, grandChildA.getAncestor(concept4, false))
    }
}
