package org.modelix.model.persistent

import org.apache.commons.lang3.StringUtils
import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.HashUtil.sha256
import java.util.stream.Collectors
import java.util.stream.Stream

class CPOperationsList(val operations: Array<IOperation?>) {
    fun serialize(): String {
        return Stream.of(*operations)
            .map { op: IOperation? -> OperationSerializer.INSTANCE.serialize(op!!) }
            .reduce { a: String, b: String -> "$a,$b" }
            .orElse("")
    }

    val hash: String
        get() = sha256(serialize())

    companion object {
        fun deserialize(input: String): CPOperationsList {
            return CPOperationsList(
                Stream.of(*input.split(",").toTypedArray())
                    .filter { cs: String? -> StringUtils.isNotEmpty(cs) }
                    .map { serialized: String? -> OperationSerializer.INSTANCE.deserialize(serialized!!) }
                    .collect(Collectors.toList()).toTypedArray()
            )
        }
    }
}
