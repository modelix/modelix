/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.persistent

import org.modelix.model.logWarning
import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.SerializationUtil.escape
import org.modelix.model.persistent.SerializationUtil.longFromHex
import org.modelix.model.persistent.SerializationUtil.longToHex
import org.modelix.model.persistent.SerializationUtil.unescape

class CPVersion(
    id: Long,
    time: String?,
    author: String?,
    treeHash: String?,
    previousVersion: String?, // deprecated, use baseVersion instead
    originalVersion: String?, // deprecated, there is no rewriting of versions anymore. Use mergedVersion1/2 instead
    baseVersion: String?, // the version, the operations are applied to, to create this version
    // in case of a merge it is the common base version of the two branches
    mergedVersion1: String?, // null if this is not a merge
    mergedVersion2: String?, // null if this is not a merge
    operations: Array<IOperation>?,
    operationsHash: String?,
    numberOfOperations: Int
) {
    val id: Long
    val time: String?
    val author: String?

    /**
     * SHA to CPTree
     */
    val treeHash: String?
    val previousVersion: String?

    /**
     * The version created by the original author before is was rewritten during a merge
     */
    val originalVersion: String?

    val baseVersion: String?
    val mergedVersion1: String?
    val mergedVersion2: String?

    val operations: Array<IOperation>?
    val operationsHash: String?
    val numberOfOperations: Int
    fun serialize(): String {
        val opsPart = operationsHash
            ?: if (operations!!.isEmpty()) "" else operations
                .map { OperationSerializer.INSTANCE.serialize(it) }
                .reduce { a: String, b: String -> "$a,$b" }
        return longToHex(id) +
            "/" + escape(time) +
            "/" + escape(author) +
            "/" + nullAsEmptyString(treeHash) +
            "/" + nullAsEmptyString(baseVersion) +
            "/" + nullAsEmptyString(mergedVersion1) +
            "/" + nullAsEmptyString(mergedVersion2) +
            "/" + numberOfOperations +
            "/" + opsPart
    }

    val hash: String
        get() = HashUtil.sha256(serialize())

    companion object {
        fun deserialize(input: String): CPVersion {
            try {
                val parts = input.split("/").toTypedArray()
                if (parts.size == 9) {
                    var opsHash: String? = null
                    var ops: Array<IOperation>? = null
                    if (HashUtil.isSha256(parts[8])) {
                        opsHash = parts[8]
                    } else {
                        ops = parts[8].split(",")
                            .filter { cs -> cs.isNotEmpty() }
                            .map { OperationSerializer.INSTANCE.deserialize(it) }
                            .toTypedArray()
                    }
                    return CPVersion(
                        longFromHex(parts[0]),
                        unescape(parts[1]),
                        unescape(parts[2]),
                        treeHash = emptyStringAsNull(parts[3]),
                        previousVersion = null,
                        originalVersion = null,
                        baseVersion = emptyStringAsNull(parts[4]),
                        mergedVersion1 = emptyStringAsNull(parts[5]),
                        mergedVersion2 = emptyStringAsNull(parts[6]),
                        operations = ops,
                        operationsHash = opsHash,
                        numberOfOperations = parts[7].toInt()
                    )
                } else {
                    var opsHash: String? = null
                    var ops: Array<IOperation>? = null
                    if (HashUtil.isSha256(parts[5])) {
                        opsHash = parts[5]
                    } else {
                        ops = parts[5].split(",")
                            .filter { cs: String? -> !cs.isNullOrEmpty() }
                            .map { serialized: String -> OperationSerializer.INSTANCE.deserialize(serialized) }
                            .toTypedArray()
                    }
                    val numOps = if (parts.size > 6) parts[6].toInt() else -1
                    return CPVersion(
                        id = longFromHex(parts[0]),
                        time = unescape(parts[1]),
                        author = unescape(parts[2]),
                        treeHash = emptyStringAsNull(parts[3]),
                        previousVersion = emptyStringAsNull(parts[4]),
                        originalVersion = if (parts.size > 7) emptyStringAsNull(parts[7]) else null,
                        baseVersion = null,
                        mergedVersion1 = null,
                        mergedVersion2 = null,
                        ops,
                        opsHash,
                        numOps
                    )
                }
            } catch (ex: Exception) {
                throw RuntimeException("Failed to deserialize version: $input", ex)
            }
        }
    }

    init {
        if (treeHash.isNullOrEmpty()) {
            logWarning("No tree hash provided", RuntimeException(), CPVersion::class)
        }
        if ((operations == null) == (operationsHash == null)) {
            throw RuntimeException("Only one of 'operations' and 'operationsHash' can be provided")
        }
        if (previousVersion != null && baseVersion != null) {
            throw RuntimeException("Only one of 'previousVersion' and 'baseVersion' can be provided")
        }
        if ((mergedVersion1 == null) != (mergedVersion2 == null)) {
            throw RuntimeException("A merge has to specify two versions. Only one was provided.")
        }
        this.id = id
        this.author = author
        this.time = time
        this.treeHash = treeHash
        this.previousVersion = previousVersion
        this.originalVersion = originalVersion
        this.baseVersion = baseVersion
        this.mergedVersion1 = mergedVersion1
        this.mergedVersion2 = mergedVersion2
        this.operations = operations
        this.operationsHash = operationsHash
        this.numberOfOperations = operations?.size ?: numberOfOperations
    }
}
