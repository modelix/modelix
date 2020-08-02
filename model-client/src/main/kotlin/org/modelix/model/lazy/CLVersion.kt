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

package org.modelix.model.lazy

import org.modelix.model.operations.IOperation
import org.modelix.model.persistent.CPOperationsList
import org.modelix.model.persistent.CPVersion
import java.util.Arrays
import java.util.function.Function

class CLVersion {
    private var store: IDeserializingKeyValueStore
    var data: CPVersion? = null
        private set

    constructor(id: Long, time: String?, author: String?, treeHash: String?, previousVersion: String?, operations: Array<IOperation?>, store: IDeserializingKeyValueStore) {
        this.store = store
        if (operations.size <= 10) {
            data = CPVersion(id, time, author, treeHash, previousVersion, operations, null, operations.size)
        } else {
            val opsList = CPOperationsList(operations)
            IDeserializingKeyValueStore_extensions.put(store, opsList, opsList.serialize())
            data = CPVersion(id, time, author, treeHash, previousVersion, null, opsList.hash, operations.size)
        }
        IDeserializingKeyValueStore_extensions.put(store, data, data!!.serialize())
    }

    constructor(hash: String?, store: IDeserializingKeyValueStore) : this(store.get<CPVersion>(hash, Function { input: String? -> CPVersion.deserialize(input!!) }), store) {}
    constructor(data: CPVersion?, store: IDeserializingKeyValueStore) {
        if (data == null) {
            throw NullPointerException("data is null")
        }
        this.data = data
        this.store = store
    }

    val author: String
        get() = data!!.author!!

    val id: Long
        get() = data!!.id

    val time: String
        get() = data!!.time!!

    val hash: String
        get() = data!!.hash

    val previousHash: String
        get() = data!!.previousVersion!!

    val treeHash: String
        get() = data!!.treeHash!!

    val tree: CLTree
        get() = CLTree(treeHash, store)

    val previousVersion: CLVersion?
        get() {
            if (data!!.previousVersion == null) {
                return null
            }
            val previousVersion = store.get(data!!.previousVersion, Function { input: String? -> CPVersion.deserialize(input!!) })
                ?: return null
            return CLVersion(previousVersion, store)
        }

    val operations: Iterable<IOperation?>
        get() {
            val ops = if (data!!.operationsHash == null) data!!.operations else store.get(data!!.operationsHash, Function { input: String? -> CPOperationsList.deserialize(input!!) })!!.operations
            return Iterable { Arrays.stream(ops).iterator() }
        }

    val numberOfOperations: Int
        get() = data!!.numberOfOperations

    fun operationsInlined(): Boolean {
        return data!!.operations != null
    }

    companion object {
        @JvmStatic
        fun loadFromHash(hash: String?, store: IDeserializingKeyValueStore): CLVersion? {
            val data = store.get(hash, Function { input: String? -> CPVersion.deserialize(input!!) })
            return data?.let { CLVersion(it, store) }
        }
    }
}
