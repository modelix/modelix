package org.modelix.model.persistent

class CPTree(
    val id: String,
    val rootId: Long,
    /**
     * SHA to CPHamtNode
     */
    var idToHash: String
) {

    fun serialize(): String {
        return "$id/$rootId/$idToHash"
    }

    companion object {
        @JvmStatic
        fun deserialize(input: String): CPTree {
            val parts = input.split("/").dropLastWhile { it.isEmpty() }.toTypedArray()
            return CPTree(parts[0], parts[1].toLong(), parts[2])
        }
    }
}
