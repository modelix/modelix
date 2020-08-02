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

package org.modelix.model.lazy

import org.modelix.model.api.ITree
import org.modelix.model.persistent.CPElement
import org.modelix.model.persistent.CPNode

abstract class CLElement(protected val tree_: CLTree, protected val data_: CPElement) {
    open fun getData(): CPElement? {
        return data_
    }

    val id: Long
        get() = data_.id

    fun getTree(): ITree {
        return tree_
    }

    val parent: CLNode
        get() = tree_.resolveElement(data_.parentId) as CLNode

    val roleInParent: String?
        get() = data_.roleInParent

    val ref: CLElementRef
        get() = CLElementRef(id)

    companion object {
        @JvmStatic
        fun create(tree: CLTree?, data: CPElement?): CLNode? {
            return if (data == null) {
                null
            } else CLNode(tree, data as CPNode?)
        }
    }
}
