/*
 * Copyright 2003-2020 JetBrains s.r.o.
 *
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
package org.modelix.model.area

import org.modelix.model.api.INode
import org.modelix.model.api.ITree
import org.modelix.model.api.PBranch
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import kotlin.random.Random
import kotlin.test.BeforeTest
import kotlin.test.Test
import kotlin.test.assertEquals

class AreaWithMountsTests {
    protected lateinit var rand: Random
    protected lateinit var store: MapBaseStore
    protected lateinit var storeCache: ObjectStoreCache
    protected lateinit var idGenerator: IdGenerator
    protected lateinit var emptyTree: CLTree

    @BeforeTest
    fun setUp() {
        rand = Random(83569)
        store = MapBaseStore()
        storeCache = ObjectStoreCache(store)
        idGenerator = IdGenerator(255)
        emptyTree = CLTree(storeCache)
    }

    @Test
    fun test() {
        val branch1 = PBranch(emptyTree, idGenerator)
        var root1Id: Long = 0
        branch1.runWrite {
            root1Id = branch1.writeTransaction.addNewChild(ITree.ROOT_ID, null, -1, null)
        }
        val area1 = PArea(branch1)
        val root1 = area1.getRoot()
        lateinit var mountPoint: INode
        area1.executeWrite {
            root1.setPropertyValue("name", "root1")
            val child1a = root1.addNewChild("role1", -1, null)
            val child1b = root1.addNewChild("role1", -1, null)
            mountPoint = child1b
            child1a.setPropertyValue("name", "child1a")
            child1b.setPropertyValue("name", "child1b")
        }

        val branch2 = PBranch(emptyTree, idGenerator)
        var root2Id: Long = 0
        branch2.runWrite {
            root2Id = branch2.writeTransaction.addNewChild(ITree.ROOT_ID, null, -1, null)
        }
        val area2 = PArea(branch2)
        val root2 = area2.getRoot()
        area2.executeWrite {
            root2.setPropertyValue("name", "root2")
            val child2a = root2.addNewChild("role1", -1, null)
            child2a.setPropertyValue("name", "child2a")
        }

        val areaWithMounts = AreaWithMounts(area1, mapOf(mountPoint to area2))

        areaWithMounts.executeRead {
            assertEquals("child1a", areaWithMounts.getRoot().getChildren("role1").toList()[0].getPropertyValue("name"))
            assertEquals("root2", areaWithMounts.getRoot().getChildren("role1").toList()[1].getPropertyValue("name"))
            assertEquals("child2a", areaWithMounts.getRoot().getChildren("role1").toList()[1].getChildren("role1").toList()[0].getPropertyValue("name"))
            val iNode = areaWithMounts.getRoot().getChildren("role1").toList()[1].getChildren("role1").toList()[0]
            assertEquals("root2", iNode.parent!!.getPropertyValue("name"))
            assertEquals("root1", areaWithMounts.getRoot().getChildren("role1").toList()[1].getChildren("role1").toList()[0].parent!!.parent!!.getPropertyValue("name"))
        }

    }

}