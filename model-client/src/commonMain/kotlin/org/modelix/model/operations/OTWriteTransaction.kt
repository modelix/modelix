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

import org.modelix.model.api.IBranch
import org.modelix.model.api.IConcept
import org.modelix.model.api.IIdGenerator
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.model.api.ITree
import org.modelix.model.api.IWriteTransaction
import org.modelix.model.api.PNodeAdapter

class OTWriteTransaction(private val transaction: IWriteTransaction, private val otBranch: OTBranch, protected var idGenerator: IIdGenerator) : IWriteTransaction {
    protected fun apply(op: IOperation) {
//        val opCode = op.toCode()
//        if (opCode.isNotEmpty()) logDebug({ opCode }, OTWriteTransaction::class)
        val appliedOp = op.apply(transaction)
        otBranch.operationApplied(appliedOp)
    }

    override fun moveChild(newParentId: Long, newRole: String?, newIndex: Int, childId: Long) {
        var newIndex = newIndex
        val oldparent = getParent(childId)
        val oldRole = getRole(childId)
        val oldIndex = getChildren(oldparent, oldRole).indexOf(childId)
        if (newIndex == -1) {
            newIndex = getChildren(newParentId, newRole).count()
        }
        apply(MoveNodeOp(childId, PositionInRole(oldparent, oldRole, oldIndex), PositionInRole(newParentId, newRole, newIndex)))
    }

    override fun setProperty(nodeId: Long, role: String, value: String?) {
        apply(SetPropertyOp(nodeId, role, value))
    }

    override fun setReferenceTarget(sourceId: Long, role: String, target: INodeReference?) {
        apply(SetReferenceOp(sourceId, role, target))
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?) {
        var index = index
        if (index == -1) {
            index = getChildren(parentId, role).count().toInt()
        }
        apply(AddNewChildOp(PositionInRole(parentId, role, index), childId, concept))
    }

    override fun deleteNode(nodeId: Long) {
        getAllChildren(nodeId).forEach { deleteNode(it) }

        val parent = getParent(nodeId)
        val role = getRole(nodeId)
        val index = getChildren(parent, role).indexOf(nodeId)
        apply(DeleteNodeOp(PositionInRole(parent, role, index), nodeId))
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, concept: IConcept?): Long {
        val childId = idGenerator.generate()
        addNewChild(parentId, role, index, childId, concept)
        return childId
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

    override var tree: ITree
        get() = transaction.tree
        set(tree) {
            throw UnsupportedOperationException()
        }

    protected fun wrap(node: INode): INode {
        return if (node is PNodeAdapter) PNodeAdapter(node.nodeId, otBranch) else node
    }
}
