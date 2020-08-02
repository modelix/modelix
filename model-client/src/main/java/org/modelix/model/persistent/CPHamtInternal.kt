package org.modelix.model.persistent

import org.modelix.model.persistent.SerializationUtil.intToHex
import java.util.*

class CPHamtInternal(var bitmap: Int,
                     /**
                      * SHA to CPHamtNode
                      */
                     val children: Array<String?>) : CPHamtNode() {

    override fun serialize(): String {
        return String.format("I/%s/%s",
                intToHex(bitmap),
                Arrays.stream(children).reduce { a: String?, b: String? -> "$a,$b" }.orElse("")
        )
    }

}