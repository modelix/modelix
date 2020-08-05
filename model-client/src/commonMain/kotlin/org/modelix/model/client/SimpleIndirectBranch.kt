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

package org.modelix.model.client

import org.modelix.model.api.IBranch
import org.modelix.model.api.IBranchListener

class SimpleIndirectBranch(override val branch: IBranch) : IIndirectBranch {
    override fun addListener(l: IBranchListener) {
        branch.addListener(l)
    }

    override fun removeListener(l: IBranchListener) {
        branch.removeListener(l)
    }
}
