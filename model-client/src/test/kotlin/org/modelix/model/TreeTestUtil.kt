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

import org.modelix.model.api.ITree
import java.util.*
import java.util.stream.LongStream

class TreeTestUtil(private val tree: ITree, private val rand: Random) {
    fun getAncestors(descendant: Long, includeSelf: Boolean): LongStream {
        if (descendant == 0L) {
            return LongStream.empty()
        }
        return if (includeSelf) {
            LongStream.concat(LongStream.of(descendant), getAncestors(descendant, false))
        } else {
            val parent = tree.getParent(descendant)
            getAncestors(parent, true)
        }
    }

    val allNodes: LongStream
        get() = getDescendants(ITree.ROOT_ID, true)

    val allNodesWithoutRoot: LongStream
        get() = getDescendants(ITree.ROOT_ID, false)

    fun getDescendants(parent: Long, includeSelf: Boolean): LongStream {
        return if (includeSelf) {
            LongStream.concat(LongStream.of(parent), getDescendants(parent, false))
        } else {
            tree.getAllChildren(parent)!!.flatMap { it: Long -> getDescendants(it, true) }
        }
    }

    val randomNodeWithoutRoot: Long
        get() = getRandomNode(allNodesWithoutRoot.toArray())

    val randomNodeWithRoot: Long
        get() = getRandomNode(allNodes.toArray())

    fun getRandomNode(nodes: LongArray): Long {
        return if (nodes.size == 0) {
            0L
        } else LongStream.of(*nodes).skip(rand.nextInt(nodes.size).toLong()).findFirst().orElse(0L)
    }

    val randomLeafNode: Long
        get() = getRandomNode(allNodes.filter { it: Long -> !tree.getAllChildren(it)!!.iterator().hasNext() }.toArray())
}
