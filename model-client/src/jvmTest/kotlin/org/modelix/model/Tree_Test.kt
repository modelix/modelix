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

import io.vavr.Tuple
import io.vavr.Tuple2
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.modelix.model.api.ITree
import org.modelix.model.api.PNodeReference
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import java.util.*

class Tree_Test {
    private val DEBUG = false
    private var expectedChildren: MutableMap<Tuple2<Long, String?>, MutableList<Long?>>? = null

    @Test
    @Throws(Exception::class)
    fun test_random() {
        val roles = Arrays.asList("role1", "role2", "role3")
        val rand = Random(1906823)
        var idSequence = 1000000L
        val store = MapBaseStore()
        val storeCache = ObjectStoreCache(store)
        var tree: ITree? = CLTree(storeCache)
        val expectedParents: MutableMap<Long, Long> = HashMap()
        val expectedRoles: MutableMap<Long, String> = HashMap()
        val expectedDeletes: MutableSet<Long> = HashSet()
        for (i in 0..9999) {
            when (rand.nextInt(5)) {
                0 -> // Delete node 
                    {
                        val nodeToDelete = TreeTestUtil(tree!!, rand).randomLeafNode
                        if (nodeToDelete != 0L && nodeToDelete != ITree.ROOT_ID) {
                            if (DEBUG) {
                                println("Delete $nodeToDelete")
                            }
                            tree = tree.deleteNode(nodeToDelete)
                            removeChild(expectedParents[nodeToDelete]!!, expectedRoles[nodeToDelete], nodeToDelete)
                            expectedParents[nodeToDelete] = 0L
                            expectedRoles.remove(nodeToDelete)
                            expectedDeletes.add(nodeToDelete)
                        }
                    }
                1 -> // New node 
                    {
                        val parent = TreeTestUtil(tree!!, rand).randomNodeWithRoot
                        if (parent != 0L) {
                            val childId = ++idSequence
                            val role = roles[rand.nextInt(roles.size)]
                            val index = if (rand.nextBoolean()) rand.nextInt(tree.getChildren(parent, role)!!.count().toInt() + 1) else -1
                            if (DEBUG) {
                                println("AddNew $childId to $parent.$role[$index]")
                            }
                            tree = tree.addNewChild(parent, role, index, childId, null)
                            expectedParents[childId] = parent
                            expectedRoles[childId] = role
                            insertChild(parent, role, index, childId)
                        }
                    }
                2 -> // Set property 
                    {
                        val nodeId = TreeTestUtil(tree!!, rand).randomNodeWithoutRoot
                        if (nodeId != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            val value = java.lang.Long.toString(rand.nextLong())
                            if (DEBUG) {
                                println("SetProperty $nodeId.$role = $value")
                            }
                            tree = tree.setProperty(nodeId, role, value)
                        }
                    }
                3 -> // Set reference 
                    {
                        val sourceId = TreeTestUtil(tree!!, rand).randomNodeWithoutRoot
                        val targetId = TreeTestUtil(tree, rand).randomNodeWithoutRoot
                        if (sourceId != 0L && targetId != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            if (DEBUG) {
                                println("SetReference $sourceId.$role = $targetId")
                            }
                            tree = tree.setReferenceTarget(sourceId, role, PNodeReference(targetId))
                        }
                    }
                4 -> // Move node  
                    {
                        val util = TreeTestUtil(tree!!, rand)
                        val childId = util.randomNodeWithoutRoot
                        val parent = util.getRandomNode(
                            util
                                .allNodes
                                .filter { it: Long -> util.getAncestors(it, true).noneMatch { it2: Long -> it2 == childId } }
                                .toArray()
                        )
                        if (childId != 0L && parent != 0L) {
                            val role = roles[rand.nextInt(roles.size)]
                            var index = if (rand.nextBoolean()) rand.nextInt(tree.getChildren(parent, role)!!.count().toInt() + 1) else -1
                            if (DEBUG) {
                                println("MoveNode $childId to $parent.$role[$index]")
                            }
                            tree = tree.moveChild(parent, role, index, childId)
                            val oldParent = expectedParents[childId]!!
                            val oldRole = expectedRoles[childId]
                            if (oldParent == parent && oldRole == role) {
                                val oldIndex = expectedChildren!![Tuple.of(oldParent, oldRole)]!!.indexOf(childId)
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
            for ((key, expectedParent) in expectedParents) {
                if (expectedParent == 0L) {
                    Assert.assertFalse(tree!!.containsNode(key))
                } else {
                    val actualParent = tree!!.getParent(key)
                    Assert.assertEquals(expectedParent, actualParent)
                }
            }
            for ((key, value) in expectedChildren!!) {
                if (expectedDeletes.contains(key._1() as Long)) {
                    continue
                }
                val expected = value.stream().mapToLong { it: Long? -> it!! }.toArray()
                val actual = tree!!.getChildren(key._1() as Long, key._2())!!.toArray()
                Assert.assertArrayEquals(expected, actual)
            }
            for ((key, value) in expectedRoles) {
                Assert.assertEquals(value, tree!!.getRole(key))
            }
            for (node in expectedDeletes) {
                Assert.assertFalse(tree!!.containsNode(node))
            }
        }
    }

    @Before
    fun setUp() {
        expectedChildren = HashMap()
    }

    fun insertChild(parent: Long, role: String?, index: Int, child: Long) {
        val list = expectedChildren!!.computeIfAbsent(Tuple.of(parent, role)) { k: Tuple2<Long, String?>? -> ArrayList() }
        if (index == -1) {
            list.add(child)
        } else {
            list.add(index, child)
        }
    }

    fun removeChild(parent: Long, role: String?, child: Long) {
        val list = expectedChildren!!.computeIfAbsent(Tuple.of(parent, role)) { k: Tuple2<Long, String?>? -> ArrayList() }
        list.remove(child)
    }
}
