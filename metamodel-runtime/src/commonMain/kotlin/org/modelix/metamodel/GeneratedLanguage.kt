package org.modelix.metamodel

import org.modelix.model.api.ILanguage

abstract class GeneratedLanguage : ILanguage {
    override fun getName(): String {
        return this::class.qualifiedName!!
    }

    override fun getUID(): String {
        return getName()
    }


}