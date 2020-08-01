package org.modelix.model.api

class PNodeResolveContext(val branch: IBranch) : INodeResolveContext {

    override fun resolve(ref: INodeReference?): INode? {
        return if (ref is PNodeReference) {
            PNodeAdapter(ref.id, branch)
        } else {
            null
        }
    }
}
