package org.modelix.metamodel

import org.modelix.model.api.INode

object LanguageRegistry {
    private val conceptConstructors: MutableMap<String, (INode)->BaseConceptInstance> = HashMap()
    fun wrapNode(conceptName: String, node: INode): BaseConceptInstance {
        val conceptConstructor = conceptConstructors[conceptName]
            ?: throw IllegalArgumentException("Unknown concept: $conceptName")
        return conceptConstructor(node)
    }
}