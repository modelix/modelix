package org.modelix.metamodel

import org.modelix.model.api.*
import kotlin.reflect.KClass

object SandboxLanguage : GeneratedLanguage() {
    override fun getConcepts(): List<IConcept> {
        return listOf(Concept1)
    }

    object Concept1 : GeneratedConcept(false) {
        override val instanceClass = Concept1Instance::class
        val property1A = newProperty("property1A")
        val childLink1A = newChildLink("childLink1A", false, false, Concept2)
        val referenceLink1A = newReferenceLink("childLink1A", false, Concept1)

        override val language: ILanguage = SandboxLanguage

        override fun getDirectSuperConcepts(): List<IConcept> {
            return listOf(Concept2)
        }

        override fun wrap(node: INode) = Concept1Instance(node)
    }

    class Concept1Instance(node: INode) : BaseConceptInstance(node) {
        override val concept = Concept1
        var property1A: String?
            get() = node.getPropertyValue("property1A")
            set(value) = node.setPropertyValue("property1A", value)
        val childLink1A = NodeChildren(this, "childLink1A", Concept2, Concept2Instance::class)
    }

    object Concept2 : GeneratedConcept(false) {
        override val instanceClass = Concept2Instance::class
        override val language: ILanguage
            get() = SandboxLanguage

        override fun getDirectSuperConcepts(): List<IConcept> {
            return listOf()
        }

        override fun wrap(node: INode) = Concept2Instance(node)
    }

    class Concept2Instance(node: INode) : BaseConceptInstance(node) {

    }
}
