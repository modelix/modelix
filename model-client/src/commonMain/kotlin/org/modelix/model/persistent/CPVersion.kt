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
    previousVersion: String?,
    originalVersion: String?,
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
            "/" + nullAsEmptyString(previousVersion) +
            "/" + opsPart +
            "/" + numberOfOperations +
            "/" + nullAsEmptyString(originalVersion)
    }

    val hash: String
        get() = HashUtil.sha256(serialize())

    companion object {
        fun deserialize(input: String): CPVersion {
            try {
                val parts = input.split("/").dropLastWhile { it.isEmpty() }.toTypedArray()
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
                    longFromHex(parts[0]),
                    unescape(parts[1]),
                    unescape(parts[2]),
                    emptyStringAsNull(parts[3]),
                    emptyStringAsNull(parts[4]),
                    if (parts.size > 7) emptyStringAsNull(parts[7]) else null,
                    ops,
                    opsHash,
                    numOps
                )
            } catch (ex: Exception) {
                throw RuntimeException("Failed to deserialize version: $input", ex)
            }
        }
    }

    init {
        if (treeHash.isNullOrEmpty()) {
            logWarning("No tree hash provided", RuntimeException(), CPVersion::class)
        }
        if (operations == null == (operationsHash == null)) {
            throw RuntimeException("Only one of 'operations' and 'operationsHash' can be provided")
        }
        this.id = id
        this.author = author
        this.previousVersion = previousVersion
        this.originalVersion = originalVersion
        this.time = time
        this.treeHash = treeHash
        this.operations = operations
        this.operationsHash = operationsHash
        this.numberOfOperations = operations?.size ?: numberOfOperations
    }
}
