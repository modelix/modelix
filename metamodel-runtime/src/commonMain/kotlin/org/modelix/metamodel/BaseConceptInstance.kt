package org.modelix.metamodel

import org.modelix.model.api.IConcept
import org.modelix.model.api.INode
import org.modelix.model.api.SimpleConcept

val BaseConcept = SimpleConcept("BaseConcept", true)

open class BaseConceptInstance(val node: INode) {
    open val concept: IConcept = BaseConcept
}