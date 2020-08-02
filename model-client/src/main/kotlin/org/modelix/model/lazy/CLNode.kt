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