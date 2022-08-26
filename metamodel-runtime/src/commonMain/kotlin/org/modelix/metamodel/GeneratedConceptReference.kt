package org.modelix.metamodel

import org.modelix.model.api.IConcept
import org.modelix.model.api.IConceptReference
import org.modelix.model.area.IArea

class GeneratedConceptReference(val uid: String) : IConceptReference {
    init {
        require(uid.startsWith(PREFIX)) { "UID expected to start with '$PREFIX': $uid" }
    }

    override fun resolve(area: IArea?): IConcept? {
        return LanguageRegistry.resolveConcept(uid)
    }

    override fun serialize(): String {
        return uid
    }

    companion object {
        const val PREFIX = "gen:"
    }
}