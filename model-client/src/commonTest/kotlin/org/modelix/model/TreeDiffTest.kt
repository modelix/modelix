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
package org.modelix.model

import org.modelix.model.api.*
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.operations.*
import org.modelix.model.persistent.MapBaseStore
import org.modelix.model.persistent.SerializationUtil
import kotlin.random.Random
import kotlin.test.Test
import kotlin.test.assertEquals

class TreeDiffTest {

    @Test
    fun random1() {
        for (seed in 1L..200L) {
            // println("Seed: $seed")
            test(seed, 30, 5)
        }
    }

    @Test
    fun random2() {
        for (seed in 1L..200L) {
            // println("Seed: $seed")
            test(seed, 50, 10)
        }
    }

    @Test
    fun knownIssue01() {
        test(59L, 20, 10)
    }

    @Test
    fun knownIssue02() {
        test(372L, 30, 5)
    }

    @Test
    fun knownIssue03() {
        test(569L, 50, 10)
    }

    fun test(seed: Long, initialSize: Int, numModifications: Int) {
        val rand = Random(seed)
        val store = MapBaseStore()
        val storeCache = ObjectStoreCache(store)
        val idGenerator = IdGenerator(255)
        val initialTree = CLTree(storeCache)

        val branch = OTBranch(PBranch(initialTree, idGenerator), idGenerator, storeCache)
        for (i in 1..initialSize) RandomTreeChangeGenerator(idGenerator, rand).growingOperationsOnly().applyRandomChange(branch, null)
        val (_, tree1) = branch.operationsAndTree
        for (i in 1..numModifications) RandomTreeChangeGenerator(idGenerator, rand).withoutMove().applyRandomChange(branch, null)
        val (appliedOps, tree2) = branch.operationsAndTree

        // println("Applied Ops:")
        // appliedOps.forEach { println("    $it") }

        val expectedDiffResult = logicalDiff(tree1 as CLTree, tree2 as CLTree)

        val actualDiffResult = DiffCollector()
        tree2.visitChanges(tree1, actualDiffResult)
        actualDiffResult.assertEquals(expectedDiffResult)

        val actualDiffResultEx = DiffCollectorEx()
        tree2.visitChanges(tree1, actualDiffResultEx)
        actualDiffResultEx.assertEquals(expectedDiffResult)
    }

    private fun logicalDiff(oldTree: CLTree, newTree: CLTree): DiffData {
        val diffData: DiffData = DiffData()
        val newNodes = newTree.getDescendants(ITree.ROOT_ID, true).associateBy { it.id }
        val oldNodes = oldTree.getDescendants(ITree.ROOT_ID, true).associateBy { it.id }

        for (newNode in newNodes.values) {
            val oldNode = oldNodes[newNode.id]
            if (oldNode == null) {
                diffData.addedNodes.add(newNode.id)
            } else {
                if (oldNode.roleInParent != newNode.roleInParent) diffData.changedContainments.add(newNode.id)
                for (role in (newNode.getData().propertyRoles + oldNode.getData().propertyRoles).distinct()) {
                    if (newNode.getData().getPropertyValue(role) != oldNode.getData().getPropertyValue(role)) {
                        diffData.changedRoles.add(RoleInNode(newNode.id, role))
                    }
                }
                for (role in (newNode.getData().referenceRoles + oldNode.getData().referenceRoles).distinct()) {
                    if (newNode.getData().getReferenceTarget(role) != oldNode.getData().getReferenceTarget(role)) {
                        diffData.changedRoles.add(RoleInNode(newNode.id, role))
                    }
                }
                for (role in (oldTree.getAllChildren(oldNode.id).map { oldTree.getRole(it) } + newTree.getAllChildren(newNode.id).map { newTree.getRole(it) }).distinct()) {
                    if (oldTree.getChildren(oldNode.id, role).toList() != newTree.getChildren(newNode.id, role).toList()) {
                        diffData.changedRoles.add(RoleInNode(newNode.id, role))
                    }
                }
            }
        }

        for (oldNode in oldNodes.values) {
            if (!newNodes.containsKey(oldNode.id)) diffData.removedNodes.add(oldNode.id)
        }

        return diffData
    }

    private class DiffData {
        val changedRoles = HashSet<RoleInNode>()
        val changedContainments = HashSet<Long>()
        val addedNodes = HashSet<Long>()
        val removedNodes = HashSet<Long>()
    }

    private open class DiffCollector() : ITreeChangeVisitor {
        val changedRoles = HashSet<RoleInNode>()
        val changedContainments = HashSet<Long>()

        open fun assertEquals(expected: DiffData) {
            assertEquals(expected.changedContainments, changedContainments)
            assertEquals(expected.changedRoles.sortedBy { it.toString() }, changedRoles.sortedBy { it.toString() })
        }

        override fun childrenChanged(nodeId: Long, role: String?) {
            changedRoles.add(RoleInNode(nodeId, role))
        }

        override fun containmentChanged(nodeId: Long) {
            changedContainments.add(nodeId)
        }

        override fun propertyChanged(nodeId: Long, role: String) {
            changedRoles.add(RoleInNode(nodeId, role))
        }

        override fun referenceChanged(nodeId: Long, role: String) {
            changedRoles.add(RoleInNode(nodeId, role))
        }
    }

    private class DiffCollectorEx() : DiffCollector(), ITreeChangeVisitorEx {
        val addedNodes = HashSet<Long>()
        val removedNodes = HashSet<Long>()

        override fun assertEquals(expected: DiffData) {
            super.assertEquals(expected)
            assertEquals(expected.addedNodes.map { SerializationUtil.longToHex(it) }.sortedBy { it },
                addedNodes.map { SerializationUtil.longToHex(it) }.sortedBy { it })
            assertEquals(expected.removedNodes.map { SerializationUtil.longToHex(it) }.sortedBy { it },
                removedNodes.map { SerializationUtil.longToHex(it) }.sortedBy { it })
        }

        override fun nodeAdded(nodeId: Long) {
            addedNodes.add(nodeId)
        }

        override fun nodeRemoved(nodeId: Long) {
            removedNodes.add(nodeId)
        }
    }
}