package org.modelix.model.api

import org.modelix.model.area.IArea
import kotlin.test.Test
import kotlin.test.assertEquals

class MyNodeReference : INodeReference {
    override fun resolveNode(area: IArea?): INode? {
        TODO("Not yet implemented")
    }
}

class MyNode(val name: String) : INode {
    override fun getArea(): IArea {
        TODO("Not yet implemented")
    }
    override val isValid: Boolean
        get() = TODO("Not yet implemented")
    override val reference: INodeReference
        get() = TODO("Not yet implemented")
    override val concept: IConcept?
        get() = TODO("Not yet implemented")
    override val roleInParent: String?
        get() = TODO("Not yet implemented")
    override val parent: INode?
        get() = TODO("Not yet implemented")

    override fun getChildren(role: String?): Iterable<INode> {
        TODO("Not yet implemented")
    }

    override val allChildren: Iterable<INode>
        get() = TODO("Not yet implemented")

    override fun addChild(role: String?, index: Int, node: INode) {
        TODO("Not yet implemented")
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

    override fun equals(other: Any?): Boolean {
        return if (other is MyNode) {
            this.name == other.name
        } else {
            false
        }
    }

    override fun hashCode(): Int {
        return name.hashCode()
    }
}

class MyNodeResolveContext(val knownResolutions: Map<INodeReference, INode>) : INodeResolveContext {
    override fun resolve(ref: INodeReference?): INode? {
        return knownResolutions[ref]
    }
}

class CompositeNodeResolveContextTest {

    @Test
    fun resolveWhenEmpty() {
        val instance = CompositeNodeResolveContext()
        assertEquals(null, instance.resolve(null))
        assertEquals(null, instance.resolve(PNodeReference(123)))
        assertEquals(null, instance.resolve(MyNodeReference()))
    }

    @Test
    fun resolveWhenNotEmpty() {
        val instance = CompositeNodeResolveContext(
            MyNodeResolveContext(mapOf(PNodeReference(123) to MyNode("foo"))),
            MyNodeResolveContext(mapOf(PNodeReference(456) to MyNode("bar")))
        )
        assertEquals(null, instance.resolve(null))
        assertEquals(MyNode("foo"), instance.resolve(PNodeReference(123)))
        assertEquals(MyNode("bar"), instance.resolve(PNodeReference(456)))
        assertEquals(null, instance.resolve(PNodeReference(789)))
        assertEquals(null, instance.resolve(MyNodeReference()))
    }
}
