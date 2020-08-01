package org.modelix.model.api

import org.modelix.model.util.ContextValue

interface INodeResolveContext {
    fun resolve(ref: INodeReference?): INode?

    companion object {
        @JvmField
        val CONTEXT_VALUE = ContextValue<INodeResolveContext>()
    }
}
