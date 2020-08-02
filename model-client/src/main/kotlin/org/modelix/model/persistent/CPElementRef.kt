package org.modelix.model.persistent

abstract class CPElementRef /*package*/
internal constructor() {
    abstract val isGlobal: Boolean
    abstract val isLocal: Boolean
    abstract val elementId: Long
    abstract val treeId: String?

    private class LocalRef(private val id: Long) : CPElementRef() {
        override fun toString(): String {
            return "" + id
        }

        override val isGlobal: Boolean
            get() = false

        override val isLocal: Boolean
            get() = true

        override val elementId: Long
            get() = id

        override val treeId: String?
            get() {
                throw RuntimeException("Local reference")
            }

        override fun equals(o: Any?): Boolean {
            if (this === o) {
                return true
            }
            if (o == null || this.javaClass != o.javaClass) {
                return false
            }
            val that = o as LocalRef
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

    private class GlobalRef(treeId1: String, elementId1: Long) : CPElementRef() {
        override val treeId: String?
        override val elementId: Long
        override fun toString(): String {
            return "G$treeId#$elementId"
        }

        override val isGlobal: Boolean
            get() = true

        override val isLocal: Boolean
            get() = false

        override fun equals(o: Any?): Boolean {
            if (this === o) {
                return true
            }
            if (o == null || this.javaClass != o.javaClass) {
                return false
            }
            val that = o as GlobalRef
            if (elementId != that.elementId) {
                return false
            }
            return if (if (treeId != null) treeId as Any != that.treeId else that.treeId != null) {
                false
            } else true
        }

        override fun hashCode(): Int {
            var result = 0
            result = 31 * result + (elementId xor (elementId shr 32)).toInt()
            result = 31 * result + (treeId?.hashCode() ?: 0)
            return result
        }

        init {
            treeId = treeId1
            elementId = elementId1
        }
    }

    class MpsRef(ref: String) : CPElementRef() {
        val serializedRef: String?

        override fun toString(): String {
            return "M" + serializedRef
        }

        override val isGlobal: Boolean
            get() = false

        override val isLocal: Boolean
            get() = false

        override val elementId: Long
            get() {
                throw RuntimeException("MPS reference")
            }

        override val treeId: String?
            get() {
                throw RuntimeException("MPS reference")
            }

        override fun equals(o: Any?): Boolean {
            if (this === o) {
                return true
            }
            if (o == null || this.javaClass != o.javaClass) {
                return false
            }
            val that = o as MpsRef
            return if (if (serializedRef != null) serializedRef as Any != that.serializedRef else that.serializedRef != null) {
                false
            } else true
        }

        override fun hashCode(): Int {
            var result = 0
            result = 31 * result + if (serializedRef != null) serializedRef.toString().hashCode() else 0
            return result
        }

        init {
            serializedRef = ref
        }
    }

    companion object {
        @JvmStatic
        fun local(elementId: Long): CPElementRef {
            return LocalRef(elementId)
        }

        fun global(treeId: String, elementId: Long): CPElementRef {
            return GlobalRef(treeId, elementId)
        }

        fun mps(pointer: String): CPElementRef {
            return MpsRef(pointer)
        }

        @JvmStatic
        fun fromString(str: String): CPElementRef {
            return if (str[0] == 'G') {
                val i = str.lastIndexOf("#")
                global(str.substring(1, i), java.lang.Long.valueOf(str.substring(i + 1)))
            } else if (str[0] == 'M') {
                mps(str.substring(1))
            } else {
                local(java.lang.Long.valueOf(str))
            }
        }
    }
}
