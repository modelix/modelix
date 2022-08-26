package org.modelix.metamodel

import org.modelix.model.api.IConcept
import org.modelix.model.api.INode
import kotlin.reflect.KClass
import kotlin.reflect.KProperty
import kotlin.reflect.cast

abstract class GeneratedConceptInstance(val node: INode) {
    abstract val concept: IConcept

    init {
        require(node.concept == concept) { "Concept of node $node expected to be $concept, but was ${node.concept}" }
        (concept.language as? GeneratedLanguage)?.assertRegistered()
    }

    class ReferenceAccessor<SourceT : GeneratedConceptInstance, TargetT : GeneratedConceptInstance>(
        val role: String,
        val targetType: KClass<TargetT>
    ) {
        operator fun getValue(thisRef: SourceT, property: KProperty<*>): TargetT? {
            return thisRef.node.getReferenceTarget(role)?.let { targetType.cast(LanguageRegistry.wrapNode(it)) }
        }

        operator fun setValue(thisRef: SourceT, property: KProperty<*>, target: TargetT?) {
            thisRef.node.setReferenceTarget(role, target?.node)
        }
    }

    class PropertyAccessor(val role: String) {
        operator fun getValue(thisRef: GeneratedConceptInstance, property: KProperty<*>): String? {
            return thisRef.node.getPropertyValue(role)
        }

        operator fun setValue(thisRef: GeneratedConceptInstance, property: KProperty<*>, value: String?) {
            thisRef.node.setPropertyValue(role, value)
        }
    }
}