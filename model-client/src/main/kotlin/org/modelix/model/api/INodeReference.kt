package org.modelix.model.api

/**
 * The relation between an INodeReference and an INode is n to 1.
 * Two INodeReferences that are not equal can resolve to the same INode.
 */
interface INodeReference {
    fun resolveNode(context: INodeResolveContext?): INode?
}
