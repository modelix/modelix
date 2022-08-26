package org.modelix.metamodel

import org.modelix.model.api.ILanguage

abstract class GeneratedLanguage : ILanguage {
    fun register() {
        LanguageRegistry.register(this)
    }

    fun unregister() {
        LanguageRegistry.unregister(this)
    }

    fun isRegistered(): Boolean {
        return LanguageRegistry.isRegistered(this)
    }

    fun assertRegistered() {
        if (!isRegistered()) throw IllegalStateException("Language ${getUID()} is not registered")
    }

    override fun getName(): String {
        return this::class.qualifiedName!!
    }

    override fun getUID(): String {
        return getName()
    }


}