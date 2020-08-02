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

import org.modelix.model.persistent.CPElementRef
import org.modelix.model.persistent.CPNode
import java.util.function.Function
import java.util.stream.Stream
import java.util.stream.StreamSupport

class CLNode(tree: CLTree?, data: CPNode?) : CLElement(tree!!, data!!) {
    constructor(tree: CLTree?, id: Long, concept: String?, parentId: Long, roleInParent: String?, childrenIds: LongArray?, propertyRoles: Array<String?>?, propertyValues: Array<String?>?, referenceRoles: Array<String?>?, referenceTargets: Array<CPElementRef?>?) :
        this(
            tree,
            CPNode.create(
                id, concept, parentId, roleInParent, childrenIds!!,
                propertyRoles as Array<String?>, propertyValues as Array<String?>,
                referenceRoles as Array<String?>, referenceTargets as Array<CPElementRef?>
            )
        ) {}

    override fun getData(): CPNode? {
        return super.getData() as CPNode?
    }

    fun getChildren(bulkQuery: IBulkQuery?): IBulkQuery.Value<Iterable<CLNode>?>? {
        return (getTree() as CLTree).resolveElements(getData()!!.getChildrenIds().toList(), bulkQuery!!)!!
            .map(Function<List<CLNode?>?, Iterable<CLNode>?> { elements: List<CLNode?>? -> elements as Iterable<CLNode> })
    }

    fun getDescendants(bulkQuery: IBulkQuery, includeSelf: Boolean): IBulkQuery.Value<Iterable<CLNode>>? {
        return if (includeSelf) {
            getDescendants(bulkQuery, false)!!
                .map(
                    Function { descendants: Iterable<CLNode> ->
                        Iterable<CLNode> {
                            Stream.concat(
                                Stream.of(this),
                                StreamSupport.stream(descendants.spliterator(), false)
                            ).iterator()
                        }
                    }
                )
        } else {
            getChildren(bulkQuery)!!.mapBulk(
                Function { children: Iterable<CLNode>? ->
                    val d = bulkQuery
                        .map(children, Function { child: CLNode -> child.getDescendants(bulkQuery, true) })!!
                        .map(Function { it: List<Iterable<CLNode>>? -> Iterable<CLNode> { it!!.stream().flatMap { n: Iterable<CLNode> -> StreamSupport.stream(n.spliterator(), false) }.iterator() } })
                    d
                }
            )
        }
    }

    val concept: String?
        get() = getData()!!.concept
}
