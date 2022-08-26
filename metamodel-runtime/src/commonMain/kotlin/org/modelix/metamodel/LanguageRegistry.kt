package org.modelix.metamodel

import org.modelix.model.api.IConceptReference
import org.modelix.model.api.INode

object LanguageRegistry {
    private var languages: Map<String, GeneratedLanguage> = emptyMap()
    private var concepts: Map<String, GeneratedConcept<*>> = emptyMap()

    init {
        IConceptReference.registerDeserializer(this) { serialized ->
            if (serialized.startsWith(GeneratedConceptReference.PREFIX)) {
                GeneratedConceptReference(serialized.drop(GeneratedConceptReference.PREFIX.length))
            } else {
                null
            }
        }
    }

    fun dispose() {
        IConceptReference.unregisterSerializer(this)
    }

    fun register(language: GeneratedLanguage) {
        languages += language.getUID() to language
        concepts += language.getConcepts().filterIsInstance<GeneratedConcept<*>>().associateBy { it.getUID() }
    }

    fun unregister(language: GeneratedLanguage) {
        languages -= language.getUID()
        concepts -= language.getConcepts().map { it.getUID() }
    }

    fun isRegistered(language: GeneratedLanguage) = languages[language.getUID()] == language

    fun resolveConcept(uid: String): GeneratedConcept<*>? {
        return concepts[uid]
    }

    fun wrapNode(node: INode): GeneratedConceptInstance {
        val concept = (node.concept as? GeneratedConcept<*>)
            ?: throw IllegalArgumentException("Unknown concept: ${node.concept}")
        return concept.wrap(node)
    }
}