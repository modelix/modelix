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

package org.modelix.model.operations

import org.modelix.model.api.ITree

abstract class AbstractOperation : IOperation {

    abstract inner class Applied {
        override fun toString(): String {
            return "applied:" + this@AbstractOperation.toString()
        }
    }

    override fun toCode(): String {
        return ""
    }

    protected fun getNodePosition(tree: ITree, nodeId: Long): PositionInRole {
        val parent = tree.getParent(nodeId)
        val role = tree.getRole(nodeId)
        val index = tree.getChildren(parent, role).indexOf(nodeId)
        return PositionInRole(RoleInNode(parent, role), index)
    }

    protected fun getAncestors(tree: ITree, nodeId: Long): LongArray {
        val ancestors: MutableList<Long> = ArrayList()
        var ancestor: Long = tree.getParent(nodeId)
        while (ancestor != 0L) {
            ancestors.add(ancestor)
            ancestor = tree.getParent(ancestor)
        }
        return ancestors.toLongArray()
    }

    protected fun getDetachedNodesEndPosition(tree: ITree): PositionInRole {
        val index = tree.getChildren(DETACHED_ROLE.nodeId, DETACHED_ROLE.role).count()
        return PositionInRole(DETACHED_ROLE, index)
    }

    companion object {
        protected val DETACHED_ROLE = RoleInNode(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE)
    }
}
