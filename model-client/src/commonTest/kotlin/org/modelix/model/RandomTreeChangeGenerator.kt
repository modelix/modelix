package org.modelix.model

import org.modelix.model.api.*
import org.modelix.model.client.IdGenerator
import kotlin.random.Random

class RandomTreeChangeGenerator(private val idGenerator: IdGenerator, private val rand: Random) {
    val childRoles = listOf("cRole1", "cRole2", "cRole3")
    val propertyRoles = listOf("pRole1", "pRole2", "pRole3")
    val referenceRoles = listOf("rRole1", "rRole2", "rRole3")
    val deleteOp: (IWriteTransaction, ExpectedTreeData) -> Unit = { t, expectedTree ->
        val nodeToDelete = TreeTestUtil(t.tree, rand).randomLeafNode
        if (nodeToDelete != 0L && nodeToDelete != ITree.ROOT_ID) {
            t.deleteNode(nodeToDelete)
            expectedTree.removeChild(expectedTree.expectedParents[nodeToDelete]!!, expectedTree.expectedRoles[nodeToDelete], nodeToDelete)
            expectedTree.expectedParents[nodeToDelete] = 0L
            expectedTree.expectedRoles.remove(nodeToDelete)
            expectedTree.expectedDeletes.add(nodeToDelete)
        }
    }
    val addNewOp: (IWriteTransaction, ExpectedTreeData) -> Unit = { t, expectedTree ->
        val parent = TreeTestUtil(t.tree, rand).randomNodeWithRoot
        if (parent != 0L) {
            val childId = idGenerator.generate()
            val role = childRoles[rand.nextInt(childRoles.size)]
            val index = if (rand.nextBoolean()) rand.nextInt(t.getChildren(parent, role).count().toInt() + 1) else -1
            t.addNewChild(parent, role, index, childId, null)
            expectedTree.expectedParents[childId] = parent
            expectedTree.expectedRoles[childId] = role
            expectedTree.insertChild(parent, role, index, childId)
        }
    }
    val setPropertyOp: (IWriteTransaction, ExpectedTreeData) -> Unit = { t, expectedTree ->
        val nodeId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
        if (nodeId != 0L) {
            val role = propertyRoles[rand.nextInt(propertyRoles.size)]
            val chars = "abcdABCDⓐⓑⓒⓓ"
            val value = (1..10).map { chars.elementAt(rand.nextInt(chars.length)) }.joinToString()
            t.setProperty(nodeId, role, value)
        }
    }
    val setReferenceOp: (IWriteTransaction, ExpectedTreeData) -> Unit = { t, expectedTree ->
        val sourceId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
        val targetId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
        if (sourceId != 0L && targetId != 0L) {
            val role = referenceRoles[rand.nextInt(referenceRoles.size)]
            t.setReferenceTarget(sourceId, role, PNodeReference(targetId))
        }
    }
    val moveOp: (IWriteTransaction, ExpectedTreeData) -> Unit = { t, expectedTree ->
        val util = TreeTestUtil(t.tree, rand)
        val childId = util.randomNodeWithoutRoot
        val parent = util.getRandomNode(
            util
                .allNodes
                .filter { it: Long -> util.getAncestors(it, true).none { it2: Long -> it2 == childId } }
        )
        if (childId != 0L && parent != 0L) {
            val role = childRoles[rand.nextInt(childRoles.size)]
            var index = if (rand.nextBoolean()) rand.nextInt(t.getChildren(parent, role).count() + 1) else -1
            t.moveChild(parent, role, index, childId)
            val oldParent = expectedTree.expectedParents[childId]!!
            val oldRole = expectedTree.expectedRoles[childId]
            if (oldParent == parent && oldRole == role) {
                val oldIndex = expectedTree.expectedChildren[Pair(oldParent, oldRole)]!!.indexOf(childId)
                if (oldIndex < index) {
                    index--
                }
            }
            expectedTree.removeChild(oldParent, oldRole, childId)
            expectedTree.expectedParents[childId] = parent
            expectedTree.expectedRoles[childId] = role
            expectedTree.insertChild(parent, role, index, childId)
        }
    }
    var operations: List<(IWriteTransaction, ExpectedTreeData) -> Unit> = listOf(
        deleteOp,
        addNewOp,
        setPropertyOp,
        setReferenceOp,
        moveOp
    )

    fun growingOperationsOnly(): RandomTreeChangeGenerator {
        operations = listOf(
            addNewOp,
            setPropertyOp,
            setReferenceOp
        )
        return this
    }

    fun applyRandomChange(tree: ITree, expectedTree: ExpectedTreeData): ITree {
        val branch = PBranch(tree, idGenerator)
        applyRandomChange(branch, expectedTree)
        return branch.computeRead { branch.transaction.tree }
    }

    fun applyRandomChange(branch: IBranch, expectedTree: ExpectedTreeData) {
        branch.runWrite {
            val t = branch.writeTransaction
            operations[rand.nextInt(operations.size)](t, expectedTree)
        }
    }
}
