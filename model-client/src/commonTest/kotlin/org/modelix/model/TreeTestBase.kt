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
    protected var expectedChildren: MutableMap<Pair<Long, String?>, MutableList<Long?>>? = null
    protected val roles: List<String> = listOf("role1", "role2", "role3")
    protected var rand: Random = Random(83569)
    protected var store: MapBaseStore = MapBaseStore()
    protected var storeCache: ObjectStoreCache = ObjectStoreCache(store)
    protected var idGenerator: IdGenerator = IdGenerator(3)
    protected var initialTree: CLTree = CLTree(storeCache)
    protected var expectedParents: MutableMap<Long, Long> = HashMap()
    protected var expectedRoles: MutableMap<Long, String> = HashMap()
    protected var expectedDeletes: MutableSet<Long> = HashSet()

    @BeforeTest
    fun setUp() {
        expectedChildren = HashMap()
        rand = Random(83569)
        store = MapBaseStore()
        storeCache = ObjectStoreCache(store)
        idGenerator = IdGenerator(3)
        initialTree = CLTree(storeCache)
        expectedParents = HashMap()
        expectedRoles = HashMap()
        expectedDeletes = HashSet()
    }

    fun applyRandomChange(tree: ITree): ITree {
        val branch = PBranch(tree, idGenerator)
        applyRandomChange(branch)
        return branch.computeRead { branch.transaction.tree }
    }

    fun applyRandomChange(branch: IBranch) {
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
                        removeChild(expectedParents[nodeToDelete]!!, expectedRoles[nodeToDelete], nodeToDelete)
                        expectedParents[nodeToDelete] = 0L
                        expectedRoles.remove(nodeToDelete)
                        expectedDeletes.add(nodeToDelete)
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
                        expectedParents[childId] = parent
                        expectedRoles[childId] = role
                        insertChild(parent, role, index, childId)
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
                        var index = if (rand.nextBoolean()) rand.nextInt(t.getChildren(parent, role)!!.count().toInt() + 1) else -1
                        if (DEBUG) {
                            println("MoveNode $childId to $parent.$role[$index]")
                        }
                        t.moveChild(parent, role, index, childId)
                        val oldParent = expectedParents[childId]!!
                        val oldRole = expectedRoles[childId]
                        if (oldParent == parent && oldRole == role) {
                            val oldIndex = expectedChildren!![Pair(oldParent, oldRole)]!!.indexOf(childId)
                            if (oldIndex < index) {
                                index--
                            }
                        }
                        removeChild(oldParent, oldRole, childId)
                        expectedParents[childId] = parent
                        expectedRoles[childId] = role
                        insertChild(parent, role, index, childId)
                    }
                }
            }
        }
    }

    fun assertBranch(branch: IBranch) {
        assertTree(branch.computeRead { branch.transaction.tree })
    }

    fun assertTree(tree: ITree) {
        for ((key, expectedParent) in expectedParents) {
            if (expectedParent == 0L) {
                assertFalse(tree.containsNode(key))
            } else {
                val actualParent = tree.getParent(key)
                assertEquals(expectedParent, actualParent)
            }
        }
        for ((key, value) in expectedChildren!!) {
            if (expectedDeletes.contains(key.first)) {
                continue
            }
            val expected = value.toList()
            val actual = tree.getChildren(key.first, key.second).toList()
            assertEquals(expected, actual)
        }
        for ((key, value) in expectedRoles) {
            assertEquals(value, tree.getRole(key))
        }
        for (node in expectedDeletes) {
            assertFalse(tree.containsNode(node))
        }
    }

    fun insertChild(parent: Long, role: String?, index: Int, child: Long) {
        val list = expectedChildren!!.getOrPut(Pair(parent, role), { ArrayList() })
        if (index == -1) {
            list.add(child)
        } else {
            list.add(index, child)
        }
    }

    fun removeChild(parent: Long, role: String?, child: Long) {
        val list = expectedChildren!!.getOrPut(Pair(parent, role), { ArrayList() })
        list.remove(child)
    }
}
