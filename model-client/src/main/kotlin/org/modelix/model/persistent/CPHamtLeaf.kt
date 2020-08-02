package org.modelix.model.persistent

import org.modelix.model.persistent.SerializationUtil.longToHex

class CPHamtLeaf(
    val key: Long,
    /**
     * SHA to CPElement
     */
    val value: String
) : CPHamtNode() {

    override fun serialize(): String {
        return "L/" + longToHex(key) + "/" + value
    }
}
