package org.modelix.metamodel

import org.modelix.model.api.IConcept
import org.modelix.model.api.INode
import kotlin.reflect.KClass
import kotlin.reflect.cast

class NodeChildren<ParentT : GeneratedConceptInstance, ChildT : GeneratedConceptInstance>(
    val parent: ParentT,
    val role: String,
    val childConcept: IConcept,
    val childType: KClass<ChildT>,
) : Iterable<ChildT> {
    override fun iterator(): Iterator<ChildT> {
        return parent.node.getChildren(role).map {
            val wrapped = when (childConcept) {
                is GeneratedConcept<*> -> childConcept.wrap(it)
                else -> throw RuntimeException("Unsupported concept type: ${childConcept::class.qualifiedName} (${childConcept.getLongName()})")
            }
            childType.cast(wrapped)
        }.iterator()
    }

    fun addNew(index: Int = -1) {
        parent.node.addNewChild(role, index, childConcept)
    }

    fun remove(child: INode) {
        parent.node.removeChild(child)
    }

    fun remove(child: GeneratedConceptInstance) {
        remove(child.node)
    }
}