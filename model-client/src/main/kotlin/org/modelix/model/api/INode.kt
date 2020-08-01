package org.modelix.model.api

import java.util.stream.Stream

interface INode {
    val isValid: Boolean
    val reference: INodeReference?
    val concept: IConcept?
    val roleInParent: String?
    val parent: INode?
    fun getChildren(role: String?): Stream<INode?>?
    val allChildren: Stream<INode>
    fun addChild(role: String?, index: Int, node: INode?)
    fun addNewChild(role: String?, index: Int, concept: IConcept?): INode?
    fun removeChild(child: INode?)
    fun getReferenceTarget(role: String?): INode?
    fun setReferenceTarget(role: String?, target: INode?)
    fun getPropertyValue(role: String?): String?
    fun setPropertyValue(role: String?, value: String?)
}