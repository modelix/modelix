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
import org.modelix.model.operations.OTBranch
import kotlin.test.Test

class OperationsTest : TreeTestBase() {
    @Test
    fun test_random() {
        val branch1 = OTBranch(PBranch(initialTree, idGenerator), idGenerator)
        val branch2 = OTBranch(PBranch(initialTree, idGenerator), idGenerator)

        for (i in 0..999) {
            if (i % 100 == 0) storeCache.clearCache()

            applyRandomChange(branch1)

            val (ops, _) = branch1.operationsAndTree
            branch2.runWrite { ops.forEach { it.originalOp.apply(branch2.writeTransaction) } }

            assertBranch(branch1)
            assertBranch(branch2)
        }
    }
}
