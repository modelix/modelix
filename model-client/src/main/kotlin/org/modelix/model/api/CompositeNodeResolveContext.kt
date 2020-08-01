package org.modelix.model.api

import java.util.Objects

class CompositeNodeResolveContext(contexts: Iterable<INodeResolveContext?>) : INodeResolveContext {
    private val contexts: List<INodeResolveContext?>

    constructor(vararg contexts: INodeResolveContext?) : this(contexts.toList()) {}

    override fun resolve(ref: INodeReference?): INode? {
        return contexts.stream().map { it?.resolve(ref) }.filter { obj: INode? -> Objects.nonNull(obj) }.findFirst().orElse(null)
    }

    companion object {
        fun withAdditionalContext(context: INodeResolveContext?, runnable: Runnable?) {
            val activeContext = INodeResolveContext.CONTEXT_VALUE.getValue()
            if (activeContext == null) {
                INodeResolveContext.CONTEXT_VALUE.runWith(context!!, runnable!!)
            } else {
                INodeResolveContext.CONTEXT_VALUE.runWith(CompositeNodeResolveContext(context, activeContext), runnable!!)
            }
        }
    }

    init {
        this.contexts = contexts.toList()
    }
}
