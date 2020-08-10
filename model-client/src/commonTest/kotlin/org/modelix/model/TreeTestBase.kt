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

package org.modelix.model

import org.modelix.model.api.IBranch
import org.modelix.model.api.ITree
import org.modelix.model.api.PBranch
import org.modelix.model.api.PNodeReference
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import kotlin.random.Random
import kotlin.test.BeforeTest
import kotlin.test.assertEquals
import kotlin.test.assertFalse

open class TreeTestBase {
    protected val DEBUG = false
    protected val roles: List<String> = listOf("role1", "role2", "role3")
    protected var rand: Random = Random(83569)
    protected var store: MapBaseStore = MapBaseStore()
    protected var storeCache: ObjectStoreCache = ObjectStoreCache(store)
    protected var idGenerator: IdGenerator = IdGenerator(3)
    protected var initialTree: CLTree = CLTree(storeCache)

    @BeforeTest
    fun setUp() {
        rand = Random(83569)
        store = MapBaseStore()
        storeCache = ObjectStoreCache(store)
        idGenerator = IdGenerator(255)
        initialTree = CLTree(storeCache)
    }

    fun applyRandomChange(tree: ITree, expectedTree: ExpectedTreeData): ITree {
        val branch = PBranch(tree, idGenerator)
        applyRandomChange(branch, expectedTree)
        return branch.computeRead { branch.transaction.tree }
    }

    fun applyRandomChange(branch: IBranch, expectedTree: ExpectedTreeData) {
        branch.runWrite {
            val t = branch.writeTransaction
            when (rand.nextInt(5)) {
                0 -> // Delete node
                    {
                        val nodeToDelete = TreeTestUtil(t.tree, rand).randomLeafNode
                        if (nodeToDelete != 0L && nodeToDelete != ITree.ROOT_ID) {
                            if (DEBUG) {
                                println("Delete $nodeToDelete")
                            }
                            t.deleteNode(nodeToDelete)
                            expectedTree.removeChild(expectedTree.expectedParents[nodeToDelete]!!, expectedTree.expectedRoles[nodeToDelete], nodeToDelete)
                            expectedTree.expectedParents[nodeToDelete] = 0L
                            expectedTree.expectedRoles.remove(nodeToDelete)
                            expectedTree.expectedDeletes.add(nodeToDelete)
                        }
                    }
                1 -> // New node
                    {
                        val parent = TreeTestUtil(t.tree, rand).randomNodeWithRoot
                        if (parent != 0L) {
                            val childId = idGenerator.generate()
                            val role = roles[rand.nextInt(roles.size)]
                            val index = if (rand.nextBoolean()) rand.nextInt(t.getChildren(parent, role).count().toInt() + 1) else -1
                            if (DEBUG) {
                                println("AddNew $childId to $parent.$role[$index]")
                            }
                            t.addNewChild(parent, role, index, childId, null)
                            expectedTree.expectedParents[childId] = parent
                            expectedTree.expectedRoles[childId] = role
                            expectedTree.insertChild(parent, role, index, childId)
                        }
                    }
                2 -> // Set property
                    {
                        val nodeId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
                        if (nodeId != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            val value = rand.nextLong().toString()
                            if (DEBUG) {
                                println("SetProperty $nodeId.$role = $value")
                            }
                            t.setProperty(nodeId, role, value)
                        }
                    }
                3 -> // Set reference
                    {
                        val sourceId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
                        val targetId = TreeTestUtil(t.tree, rand).randomNodeWithoutRoot
                        if (sourceId != 0L && targetId != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            if (DEBUG) {
                                println("SetReference $sourceId.$role = $targetId")
                            }
                            t.setReferenceTarget(sourceId, role, PNodeReference(targetId))
                        }
                    }
                4 -> // Move node
                    {
                        val util = TreeTestUtil(t.tree, rand)
                        val childId = util.randomNodeWithoutRoot
                        val parent = util.getRandomNode(
                            util
                                .allNodes
                                .filter { it: Long -> util.getAncestors(it, true).none { it2: Long -> it2 == childId } }
                        )
                        if (childId != 0L && parent != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            var index = if (rand.nextBoolean()) rand.nextInt(t.getChildren(parent, role).count() + 1) else -1
                            if (DEBUG) {
                                println("MoveNode $childId to $parent.$role[$index]")
                            }
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
            }
        }
    }

    fun assertBranch(branch: IBranch, expectedTree: ExpectedTreeData) {
        assertTree(branch.computeRead { branch.transaction.tree }, expectedTree)
    }

    fun assertTree(tree: ITree, expectedTree: ExpectedTreeData) {
        for ((key, expectedParent) in expectedTree.expectedParents) {
            if (expectedParent == 0L) {
                assertFalse(tree.containsNode(key))
            } else {
                val actualParent = tree.getParent(key)
                assertEquals(expectedParent, actualParent)
            }
        }
        for ((key, value) in expectedTree.expectedChildren) {
            if (expectedTree.expectedDeletes.contains(key.first)) {
                continue
            }
            val expected = value.toList()
            val actual = tree.getChildren(key.first, key.second).toList()
            assertEquals(expected, actual)
        }
        for ((key, value) in expectedTree.expectedRoles) {
            assertEquals(value, tree.getRole(key))
        }
        for (node in expectedTree.expectedDeletes) {
            assertFalse(tree.containsNode(node))
        }
    }
}
