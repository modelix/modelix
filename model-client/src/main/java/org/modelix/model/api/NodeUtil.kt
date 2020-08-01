package org.modelix.model.api

import java.util.stream.Stream

object NodeUtil {
    fun getDescendants(node: INode, includeSelf: Boolean): Stream<INode?> {
        return if (includeSelf) {
            Stream.concat(Stream.of(node), getDescendants(node, false))
        } else {
            node.allChildren.flatMap { it: INode -> getDescendants(it, true) }
        }
    }

    fun getAncestor(_this: INode?, concept: IConcept?, includeSelf: Boolean): INode? {
        if (_this == null) {
            return null
        }
        return if (includeSelf && _this.concept!!.isSubconceptOf(concept)) {
            _this
        } else getAncestor(_this.parent, concept, true)
    }
}
