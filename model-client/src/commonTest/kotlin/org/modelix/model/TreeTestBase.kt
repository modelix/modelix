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
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.ObjectStoreCache
import org.modelix.model.persistent.MapBaseStore
import kotlin.random.Random
import kotlin.test.BeforeTest

open class TreeTestBase {
    protected val DEBUG = false
    protected val roles: List<String> = listOf("role1", "role2", "role3")
    protected var rand: Random = Random(83569)
    protected var store: MapBaseStore = MapBaseStore()
    protected var storeCache: ObjectStoreCache = ObjectStoreCache(store)
    protected var idGenerator: IdGenerator = IdGenerator.newInstance(3)
    protected var initialTree: CLTree = CLTree(storeCache)

    @BeforeTest
    fun setUp() {
        rand = Random(83569)
        store = MapBaseStore()
        storeCache = ObjectStoreCache(store)
        idGenerator = IdGenerator.newInstance(255)
        initialTree = CLTree(storeCache)
    }

    fun applyRandomChange(tree: ITree, expectedTree: ExpectedTreeData): ITree {
        val branch = PBranch(tree, idGenerator)
        applyRandomChange(branch, expectedTree)
        return branch.computeRead { branch.transaction.tree }
    }

    fun applyRandomChange(branch: IBranch, expectedTree: ExpectedTreeData?) {
        RandomTreeChangeGenerator(idGenerator, rand).applyRandomChange(branch, expectedTree)
    }

    fun assertBranch(branch: IBranch, expectedTree: ExpectedTreeData) {
        assertTree(branch.computeRead { branch.transaction.tree }, expectedTree)
    }

    fun assertTree(tree: ITree, expectedTree: ExpectedTreeData) {
        expectedTree.assertTree(tree)
    }
}
