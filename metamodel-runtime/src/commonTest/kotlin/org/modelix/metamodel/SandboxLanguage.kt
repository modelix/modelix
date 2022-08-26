package org.modelix.metamodel

import org.modelix.model.api.*

object SandboxLanguage : GeneratedLanguage("org.modelix.metamodel.sandboxlanguage") {
    override fun getConcepts(): List<IConcept> {
        return listOf(Concept1)
    }

    object Concept1 : GeneratedConcept<Concept1Instance>(false) {
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

    class Concept1Instance(node: INode) : GeneratedConceptInstance(node) {
        override val concept = Concept1
        var property1A: String? by PropertyAccessor("property1A")
        val childLink1A = NodeChildren(this, "childLink1A", Concept2, Concept2Instance::class)
        var reference1B: Concept2Instance? by ReferenceAccessor("reference1B", Concept2Instance::class)
        var reference1A: Concept2Instance?
            get() = node.getReferenceTarget("reference1A")?.let { LanguageRegistry.wrapNode(it) as Concept2Instance }
            set(value) = node.setReferenceTarget("reference1A", value?.node)
    }

    object Concept2 : GeneratedConcept<Concept2Instance>(false) {
        override val instanceClass = Concept2Instance::class
        override val language: ILanguage
            get() = SandboxLanguage

        override fun getDirectSuperConcepts(): List<IConcept> {
            return listOf()
        }

        override fun wrap(node: INode) = Concept2Instance(node)
    }

    class Concept2Instance(node: INode) : GeneratedConceptInstance(node) {
        override val concept = Concept2
    }
}
