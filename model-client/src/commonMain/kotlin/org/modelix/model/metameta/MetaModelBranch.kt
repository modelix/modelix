/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.metameta

import org.modelix.model.ITransactionWrapper
import org.modelix.model.api.*
import org.modelix.model.lazy.CLNode
import org.modelix.model.lazy.IBulkTree
import org.modelix.model.lazy.IConceptReferenceSerializer
import org.modelix.model.lazy.ITreeWrapper

class MetaModelBranch(val branch: IBranch) : IBranch by branch {
    private val metaModelSynchronizer = MetaModelSynchronizer(branch)
    private val listenerWrappers: MutableMap<IBranchListener, MMBranchListener> = HashMap()
    override val readTransaction: IReadTransaction
        get() = MMReadTransaction(branch.readTransaction)
    override val transaction: ITransaction
        get() {
            val t = branch.transaction
            return when (t) {
                is IReadTransaction -> MMReadTransaction(t)
                is IWriteTransaction -> MMWriteTransaction(t)
                else -> throw RuntimeException()
            }
        }
    override val writeTransaction: IWriteTransaction
        get() = MMWriteTransaction(branch.writeTransaction)

    override fun addListener(l: IBranchListener) {
        branch.addListener(listenerWrappers.getOrPut(l) { MMBranchListener(l) })
    }

    override fun removeListener(l: IBranchListener) {
        listenerWrappers.remove(l)?.listener?.let { branch.removeListener(it) }
    }

    fun toGlobalConcept(localConcept: IConcept, tree: ITree): IConcept {
        if (localConcept is PersistedConcept) {
            var uid = localConcept.uid
            if (uid == null && tree.containsNode(localConcept.id)) {
                uid = tree.getProperty(localConcept.id, MetaMetaLanguage.property_IHasUID_uid.name)
            }
            return IConceptReferenceSerializer.deserializeAll(uid, tree).firstOrNull { it !is PersistedConcept }
                ?: throw RuntimeException("Cannot find concept $uid")
        }
        return localConcept
    }

    fun toLocalConcept(globalConcept: IConcept): IConcept {
        val localConceptId = metaModelSynchronizer.getConceptId(globalConcept)
        if (localConceptId == 0L) return globalConcept
        return PersistedConcept(localConceptId, globalConcept.getUID())
    }

    private fun prefetch() {
        // prefetch only for the root transaction, not for all nested ones
//        if (!branch.canRead()) {
//            metaModelSynchronizer.prefetch()
//        }
    }

    override fun <T> computeRead(computable: () -> T): T {
        prefetch()
        return branch.computeRead(computable)
    }

    override fun <T> computeReadT(computable: (IReadTransaction) -> T): T {
        prefetch()
        return branch.computeReadT { computable(MMReadTransaction(it)) }
    }

    override fun <T> computeWrite(computable: () -> T): T {
        prefetch()
        return branch.computeWrite(computable)
    }

    override fun <T> computeWriteT(computable: (IWriteTransaction) -> T): T {
        prefetch()
        return branch.computeWriteT { computable(MMWriteTransaction(it)) }
    }

    override fun runRead(runnable: () -> Unit) {
        prefetch()
        return branch.runRead(runnable)
    }

    override fun runReadT(f: (IReadTransaction) -> Unit) {
        prefetch()
        return branch.runReadT { f(MMReadTransaction(it)) }
    }

    override fun runWrite(runnable: () -> Unit) {
        prefetch()
        return branch.runWrite(runnable)
    }

    override fun runWriteT(f: (IWriteTransaction) -> Unit) {
        prefetch()
        return branch.runWriteT { f(MMWriteTransaction(it)) }
    }

    fun wrapTree(tree: ITree) = if (tree is IBulkTree) MMBulkTree(tree) else MMTree(tree)

    inner class MMReadTransaction(val transaction: IReadTransaction) : IReadTransaction by transaction, ITransactionWrapper {
        override fun unwrap(): ITransaction = transaction

        override val branch: IBranch
            get() = this@MetaModelBranch
        override val tree: ITree
            get() = wrapTree(transaction.tree)

        override fun getConcept(nodeId: Long): IConcept? {
            return transaction.getConcept(nodeId)?.let { toGlobalConcept(it, transaction.tree) }
        }
    }

    inner class MMWriteTransaction(val transaction: IWriteTransaction) : IWriteTransaction by transaction, ITransactionWrapper {
        override fun unwrap(): ITransaction = transaction

        override val branch: IBranch
            get() = this@MetaModelBranch
        override var tree: ITree
            get() = wrapTree(transaction.tree)
            set(value) {
                transaction.tree = if (value is MMTree) value.tree else tree
            }

        override fun getConcept(nodeId: Long): IConcept? {
            return transaction.getConcept(nodeId)?.let { toGlobalConcept(it, transaction.tree) }
        }
        override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?) {
            transaction.addNewChild(parentId, role, index, childId, concept?.let { toLocalConcept(it) })
        }

        override fun addNewChild(parentId: Long, role: String?, index: Int, concept: IConcept?): Long {
            return transaction.addNewChild(parentId, role, index, concept?.let { toLocalConcept(it) })
        }
    }

    open inner class MMTree(open val tree: ITree) : ITree by tree {
        override fun getConcept(nodeId: Long): IConcept? {
            return tree.getConcept(nodeId)?.let { toGlobalConcept(it, tree) }
        }

        override fun visitChanges(oldVersion: ITree, visitor: ITreeChangeVisitor) {
            val unwrapped = if (oldVersion is MMTree) oldVersion.tree else tree
            tree.visitChanges(unwrapped, visitor)
        }

        override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?): ITree {
            return wrapTree(tree.addNewChild(parentId, role, index, childId, concept))
        }

        override fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray, concepts: Array<IConcept?>): ITree {
            return wrapTree(tree.addNewChildren(parentId, role, index, newIds, concepts))
        }

        override fun deleteNode(nodeId: Long): ITree {
            return wrapTree(tree.deleteNode(nodeId))
        }

        override fun deleteNodes(nodeIds: LongArray): ITree {
            return wrapTree(tree.deleteNodes(nodeIds))
        }

        override fun moveChild(newParentId: Long, newRole: String?, newIndex: Int, childId: Long): ITree {
            return wrapTree(tree.moveChild(newParentId, newRole, newIndex, childId))
        }

        override fun setProperty(nodeId: Long, role: String, value: String?): ITree {
            return wrapTree(tree.setProperty(nodeId, role, value))
        }

        override fun setReferenceTarget(sourceId: Long, role: String, target: INodeReference?): ITree {
            return wrapTree(tree.setReferenceTarget(sourceId, role, target))
        }

        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (other == null || this::class != other::class) return false

            other as MMTree

            if (tree != other.tree) return false

            return true
        }

        override fun hashCode(): Int {
            return tree.hashCode()
        }

        override fun toString(): String {
            return "MMTree[$tree]"
        }
    }

    inner class MMBulkTree(override val tree: IBulkTree) : MMTree(tree), IBulkTree, ITreeWrapper {
        override fun getDescendants(root: Long, includeSelf: Boolean): Iterable<CLNode> {
            return tree.getDescendants(root, includeSelf)
        }

        override fun getDescendants(roots: Iterable<Long>, includeSelf: Boolean): Iterable<CLNode> {
            return tree.getDescendants(roots, includeSelf)
        }

        override fun getWrappedTree(): ITree {
            return tree
        }

        override fun getAncestors(nodeIds: Iterable<Long>, includeSelf: Boolean): Set<Long> {
            return tree.getAncestors(nodeIds, includeSelf)
        }
    }

    inner class MMBranchListener(val listener: IBranchListener) : IBranchListener {
        override fun treeChanged(oldTree: ITree?, newTree: ITree) {
            listener.treeChanged(oldTree?.let { wrapTree(it) }, wrapTree(newTree))
        }
    }
}
