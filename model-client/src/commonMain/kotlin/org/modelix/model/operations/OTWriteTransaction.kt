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

package org.modelix.model.operations

import org.modelix.model.ITransactionWrapper
import org.modelix.model.api.*
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.DuplicateNodeId
import org.modelix.model.lazy.IDeserializingKeyValueStore
import org.modelix.model.unwrapAll

class OTWriteTransaction(
    private val transaction: IWriteTransaction,
    private val otBranch: OTBranch,
    private var idGenerator: IIdGenerator,
    private val store: IDeserializingKeyValueStore
) : IWriteTransaction, ITransactionWrapper {
    override fun unwrap(): ITransaction = transaction

    fun apply(op: IOperation) {
        logTrace({ op.toString() }, OTWriteTransaction::class)
        val appliedOp = op.apply(transaction, getStore())
        otBranch.operationApplied(appliedOp)
    }

    fun getStore(): IDeserializingKeyValueStore {
        val tree = this.tree
        return if (tree is CLTree) tree.store else store
    }

    override fun moveChild(newParentId: Long, newRole: String?, newIndex_: Int, childId: Long) {
        val newIndex = if (newIndex_ != -1) newIndex_ else getChildren(newParentId, newRole).count()

        val newPosition = PositionInRole(newParentId, newRole, newIndex)
        val currentRole = RoleInNode(transaction.getParent(childId), transaction.getRole(childId))
        val currentIndex = transaction.getChildren(currentRole.nodeId, currentRole.role).indexOf(childId)
        val currentPosition = PositionInRole(currentRole, currentIndex)
        if (currentPosition == newPosition) return

        apply(MoveNodeOp(childId, newPosition))
    }

    override fun setProperty(nodeId: Long, role: String, value: String?) {
        apply(SetPropertyOp(nodeId, role, value))
    }

    override fun setReferenceTarget(sourceId: Long, role: String, target: INodeReference?) {
        apply(SetReferenceOp(sourceId, role, target))
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?) {
        var index_ = index
        if (index_ == -1) {
            index_ = getChildren(parentId, role).count()
        }
        apply(AddNewChildOp(PositionInRole(parentId, role, index_), childId, concept))
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConceptReference?) {
        TODO("Not yet implemented")
    }

    override fun deleteNode(nodeId: Long) {
        getAllChildren(nodeId).forEach { deleteNode(it) }
        apply(DeleteNodeOp(nodeId))
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, concept: IConcept?): Long {
        return try {
            val childId = idGenerator.generate()
            addNewChild(parentId, role, index, childId, concept)
            childId
        } catch (dni: DuplicateNodeId) {
            addNewChild(parentId, role, index, concept)
        }
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, concept: IConceptReference?): Long {
        TODO("Not yet implemented")
    }

    override fun containsNode(nodeId: Long): Boolean {
        return transaction.containsNode(nodeId)
    }

    override fun getAllChildren(parentId: Long): Iterable<Long> {
        return transaction.getAllChildren(parentId)
    }

    override val branch: IBranch
        get() = otBranch

    override fun getChildren(parentId: Long, role: String?): Iterable<Long> {
        return transaction.getChildren(parentId, role)
    }

    override fun getConcept(nodeId: Long): IConcept? {
        return transaction.getConcept(nodeId)
    }

    override fun getConceptReference(nodeId: Long): IConceptReference? {
        return transaction.getConceptReference(nodeId)
    }

    override fun getParent(nodeId: Long): Long {
        return transaction.getParent(nodeId)
    }

    override fun getProperty(nodeId: Long, role: String): String? {
        return transaction.getProperty(nodeId, role)
    }

    override fun getReferenceTarget(sourceId: Long, role: String): INodeReference? {
        return transaction.getReferenceTarget(sourceId, role)
    }

    override fun getRole(nodeId: Long): String? {
        return transaction.getRole(nodeId)
    }

    override fun getReferenceRoles(sourceId: Long): Iterable<String> {
        return transaction.getReferenceRoles(sourceId)
    }

    override fun getPropertyRoles(sourceId: Long): Iterable<String> {
        return transaction.getPropertyRoles(sourceId)
    }

    override var tree: ITree
        get() = transaction.tree
        set(tree) {
            throw UnsupportedOperationException()
        }

    override fun getUserObject(key: Any): Any? {
        return transaction.getUserObject(key)
    }

    override fun putUserObject(key: Any, value: Any?) {
        transaction.putUserObject(key, value)
    }
}

fun IWriteTransaction.applyOperation(op: IOperation) {
    this.unwrapAll().filterIsInstance<OTWriteTransaction>().first().apply(op)
}
