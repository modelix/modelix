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

import org.modelix.model.api.PBranch
import org.modelix.model.operations.IAppliedOperation
import org.modelix.model.operations.OTBranch
import kotlin.test.Test

class OTBranchTest : TreeTestBase() {
    @Test
    fun test_random() {
        val branch1 = OTBranch(PBranch(initialTree, idGenerator), idGenerator, storeCache)
        val branch2 = OTBranch(PBranch(initialTree, idGenerator), idGenerator, storeCache)
        val expectedTree = ExpectedTreeData()

        for (i in 0..999) {
            if (i % 100 == 0) storeCache.clearCache()

            applyRandomChange(branch1, expectedTree)

            val (ops, _) = branch1.operationsAndTree
            applyOps(branch2, ops)

            assertBranch(branch1, expectedTree)
            assertBranch(branch2, expectedTree)
        }
    }

    private fun applyOps(branch: OTBranch, ops: List<IAppliedOperation>) {
        branch.runWrite { ops.forEach { it.getOriginalOp().apply(branch.writeTransaction, storeCache) } }
    }
}
