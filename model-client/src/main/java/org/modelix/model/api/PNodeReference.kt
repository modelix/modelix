package org.modelix.model.api

class PNodeReference(val id: Long) : INodeReference {

    override fun resolveNode(context: INodeResolveContext?): INode? {
        return if (context is PNodeResolveContext) {
            PNodeAdapter(id, context.branch)
        } else {
            context!!.resolve(this)
        }
    }

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || this.javaClass != o.javaClass) {
            return false
        }
        val that = o as PNodeReference
        return if (id != that.id) {
            false
        } else true
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + (id xor (id shr 32)).toInt()
        return result
    }

    override fun toString(): String {
        return "PNodeReference{id=$id}"
    }

}