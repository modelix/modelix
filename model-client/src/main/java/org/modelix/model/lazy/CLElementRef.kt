package org.modelix.model.lazy

class CLElementRef(val id: Long) {

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || this.javaClass != o.javaClass) {
            return false
        }
        val that = o as CLElementRef
        return if (id != that.id) {
            false
        } else true
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + (id xor (id shr 32)).toInt()
        return result
    }
}
