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

import org.modelix.model.api.*
import org.modelix.model.lazy.CLHamtNode.Companion.create
import org.modelix.model.lazy.IDeserializingKeyValueStore_extensions.put
import org.modelix.model.lazy.TreeId.Companion.random
import org.modelix.model.persistent.*
import org.modelix.model.persistent.CPElementRef.Companion.local
import org.modelix.model.persistent.CPNode.Companion.create
import org.modelix.model.persistent.HashUtil.sha256
import org.modelix.model.util.pmap.COWArrays.add
import org.modelix.model.util.pmap.COWArrays.insert
import org.modelix.model.util.pmap.COWArrays.remove

class CLTree : ITree {
    protected var store: IDeserializingKeyValueStore
    protected var data: CPTree

    constructor(hash: String?, store: IDeserializingKeyValueStore) : this(if (hash == null) null else store.get<CPTree>(hash, { serialized: String -> CPTree.deserialize(serialized) }), null, store) {}
    constructor(store: IDeserializingKeyValueStore) : this(null as CPTree?, null, store) {}
    constructor(id: TreeId?, store: IDeserializingKeyValueStore) : this(null, id, store) {}
    private constructor(data: CPTree?, treeId: TreeId?, store: IDeserializingKeyValueStore) {
        var treeId = treeId
        if (data == null) {
            this.store = store
            if (treeId == null) {
                treeId = random()
            }
            val root = CLNode(this, 1, null, 0, null, LongArray(0), arrayOfNulls(0), arrayOfNulls(0), arrayOfNulls(0), arrayOfNulls(0))
            val idToHash = storeElement(root, CLHamtInternal(store))
            this.data = CPTree(treeId.id, 1, sha256(idToHash.getData()!!.serialize()!!))
            put(store, this.data, this.data.serialize())
        } else {
            this.store = store
            this.data = data
        }
    }

    private constructor(treeId: String, rootId: Long, idToHash: CLHamtNode<*>, store: IDeserializingKeyValueStore) {
        var treeId: String? = treeId
        if (treeId == null) {
            treeId = random().id
        }
        this.store = store
        data = CPTree(treeId, rootId, sha256(idToHash.getData()!!.serialize()!!))
        put(store, data, data.serialize())
    }

    fun prefetchAll() {
        store.prefetch(hash)
    }

    val hash: String
        get() = sha256(data.serialize())

    val nodesMap: CLHamtNode<*>?
        get() = create(store.get(data.idToHash, { s: String -> CPHamtNode.deserialize(s) }), store)

    val id: String
        get() = data.id

    protected fun storeElement(element: CLElement, id2hash: CLHamtNode<*>): CLHamtNode<*> {
        val data = element.getData()
        val serialized = data!!.serialize()
        val hash = sha256(serialized!!)
        store!!.put(hash, data, serialized)
        var newMap = id2hash.put(element.id, hash)
        if (newMap == null) {
            newMap = CLHamtInternal(store!!)
        }
        return newMap
    }

    val root: CLNode?
        get() = resolveElement(data!!.rootId)

    override fun setProperty(nodeId: Long, role: String, value: String?): ITree {
        var newIdToHash = nodesMap
        val newNodeData = resolveElement(nodeId)!!.getData()!!.withPropertyValue(role!!, value)
        newIdToHash = newIdToHash!!.put(newNodeData)
        put(store!!, newNodeData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?): ITree {
        if (containsNode(childId)) {
            throw RuntimeException("Node ID already exists: $childId")
        }
        return createNewNode(childId, concept).addChild(parentId, role, index, childId)
    }

    override fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray, concepts: Array<IConcept?>): ITree {
        throw UnsupportedOperationException("Not implemented yet")
    }

    override fun deleteNodes(nodeIds: LongArray): ITree {
        throw UnsupportedOperationException("Not implemented yet")
    }

    /**
     * Incomplete operation. The node is added to the map, but not attached anywhere in the tree.
     */
    protected fun createNewNode(nodeId: Long, concept: IConcept?): CLTree {
        var newIdToHash = nodesMap
        val newChildData = create(nodeId, serializeConcept(concept), 0, null, LongArray(0), arrayOfNulls(0), arrayOfNulls(0), arrayOfNulls(0), arrayOfNulls(0))
        newIdToHash = newIdToHash!!.put(newChildData)
        put(store!!, newChildData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    /**
     * Incomplete operation. The child has to exist in the map, but not be part of the tree.
     */
    protected fun addChild(parentId: Long, role: String?, index: Int, childId: Long): ITree {
        val parent = resolveElement(parentId)
        var newIdToHash = nodesMap
        val childData = resolveElement(childId)!!.getData()
        val newChildData = create(
            childData!!.id,
            childData.concept,
            parentId,
            role,
            childData.childrenIdArray,
            childData.propertyRoles as Array<String?>,
            childData.propertyValues as Array<String?>,
            childData.referenceRoles as Array<String?>,
            childData.referenceTargets as Array<CPElementRef?>
        )
        newIdToHash = newIdToHash!!.put(newChildData)
        put(store!!, newChildData)
        var newChildrenArray = parent!!.getData()!!.childrenIdArray
        newChildrenArray = if (index == -1) {
            add(newChildrenArray, childData.id)
        } else {
            val anchor = getChildren(parentId, role).drop(index).firstOrNull()
            if (anchor == null) {
                add(newChildrenArray, childData.id)
            } else {
                insert(
                    newChildrenArray,
                    newChildrenArray.indexOf(anchor),
                    childData.id
                )
            }
        }
        val newParentData = create(
            parent.id,
            parent.concept,
            parent.getData()!!.parentId,
            parent.roleInParent,
            newChildrenArray,
            parent.getData()!!.propertyRoles as Array<String?>,
            parent.getData()!!.propertyValues as Array<String?>,
            parent.getData()!!.referenceRoles as Array<String?>,
            parent.getData()!!.referenceTargets as Array<CPElementRef?>
        )
        newIdToHash = newIdToHash!!.put(newParentData)
        put(store!!, newParentData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun setReferenceTarget(sourceId: Long, role: String, targetRef: INodeReference?): ITree {
        val source = resolveElement(sourceId)!!
        val refData: CPElementRef? = when (targetRef) {
            null -> null
            is PNodeReference -> {
                local(targetRef.id)
            }
            //is SNodeReferenceAdapter -> CPElementRef.mps(SNodePointer.serialize(((SNodeReferenceAdapter) targetRef).getReference()))
            else -> throw RuntimeException("Unsupported reference type: " + targetRef::class.simpleName)
        }
        var newIdToHash = nodesMap
        val newNodeData = source.getData().withReferenceTarget(role, refData)
        newIdToHash = newIdToHash!!.put(newNodeData)
        put(store, newNodeData)
        return CLTree(data.id, data.rootId, newIdToHash!!, store)
    }

    override fun deleteNode(nodeId: Long): ITree {
        return deleteNode(nodeId, true)
    }

    /**
     * Incomplete operation.
     * If recursive==false, the result is an inconsistent tree.
     * Make sure to delete the descendants or add them to the tree at a new location.
     */
    protected fun deleteNode(nodeId: Long, recursive: Boolean): CLTree {
        val node = resolveElement(nodeId)
        val parent = resolveElement(node!!.getData().parentId)
        var newIdToHash: CLHamtNode<*> = nodesMap
            ?: throw RuntimeException("nodesMap not found for hash: " + this.data.idToHash)
        val newParentData = create(
            parent!!.id, parent.concept, parent.getData()!!.parentId, parent.getData()!!.roleInParent, remove(parent.getData()!!.childrenIdArray, node.id),
            parent.getData().propertyRoles as Array<String?>,
            parent.getData().propertyValues as Array<String?>,
            parent.getData().referenceRoles as Array<String?>,
            parent.getData().referenceTargets as Array<CPElementRef?>
        )
        newIdToHash = newIdToHash.put(newParentData)
            ?: throw RuntimeException("Unexpected empty nodes map. There should be at least the root node.")
        put(store, newParentData)
        if (recursive) {
            newIdToHash = deleteElements(node.getData(), newIdToHash)
                ?: throw RuntimeException("Unexpected empty nodes map. There should be at least the root node.")
        }
        return CLTree(data.id, data.rootId, newIdToHash, store)
    }

    override fun containsNode(nodeId: Long): Boolean {
        return nodesMap!![nodeId] != null
    }

    override fun getAllChildren(parentId: Long): Iterable<Long> {
        val children = resolveElement(parentId)!!.getChildren(BulkQuery(store!!))!!.execute()
        return children.map { it.id }
    }

    fun getDescendants(root: Long, includeSelf: Boolean): Iterable<CLNode> {
        val parent = resolveElement(root)
        return parent!!.getDescendants(BulkQuery(store!!), includeSelf)!!.execute()
    }

    override fun getChildren(parentId: Long, role: String?): Iterable<Long> {
        val parent = resolveElement(parentId)
        val children = parent!!.getChildren(BulkQuery(store!!))!!.execute()
        return children
            .filter { it: CLNode -> it.roleInParent == role }
            .map { it.id }
    }

    override fun getChildRoles(sourceId: Long): Iterable<String?> {
        val parent = resolveElement(sourceId)
        val children: Iterable<CLNode> = parent!!.getChildren(BulkQuery(store)).execute()
        return children.map { it.roleInParent }.distinct()
    }

    override fun getConcept(nodeId: Long): IConcept? {
        val node = resolveElement(nodeId)
        return deserializeConcept(node!!.concept)
    }

    override fun getParent(nodeId: Long): Long {
        val node = resolveElement(nodeId)
        return node!!.getData()!!.parentId
    }

    override fun getProperty(nodeId: Long, role: String): String? {
        val node = resolveElement(nodeId)
        return node!!.getData()!!.getPropertyValue(role)
    }

    override fun getPropertyRoles(sourceId: Long): Iterable<String> {
        val node = resolveElement(sourceId)
        return node!!.getData()!!.propertyRoles.toList()
    }

    override fun getReferenceRoles(sourceId: Long): Iterable<String> {
        val node = resolveElement(sourceId)
        return node!!.getData()!!.referenceRoles.toList()
    }

    override fun getReferenceTarget(sourceId: Long, role: String): INodeReference? {
        val node = resolveElement(sourceId)
        val targetRef = node!!.getData()!!.getReferenceTarget(role)
        return if (targetRef == null) {
            null
        } else if (targetRef.isLocal) {
            PNodeReference(targetRef.elementId)
            //    } else if (targetRef instanceof CPElementRef.MpsRef) {
//      return new SNodeReferenceAdapter(SNodePointer.deserialize(((CPElementRef.MpsRef) targetRef).getSerializedRef()));
        } else {
            throw UnsupportedOperationException("Unsupported reference: $targetRef")
        }
    }

    override fun getRole(nodeId: Long): String? {
        val node = resolveElement(nodeId)
        return node!!.roleInParent
    }

    override fun moveChild(targetParentId: Long, targetRole: String?, targetIndex: Int, childId: Long): ITree {
        if (childId == ITree.ROOT_ID) throw RuntimeException("Moving the root node is not allowed")
        var ancestor = targetParentId
        while (ancestor != ITree.ROOT_ID) {
            if (ancestor == childId) {
                throw RuntimeException("${targetParentId.toString(16)} is a descendant of ${childId.toString(16)}")
            }
            ancestor = getParent(ancestor)
        }

        var targetIndex = targetIndex
        if (targetIndex != -1) {
            val oldParent = getParent(childId)
            if (oldParent == targetParentId) {
                val oldRole = getRole(childId)
                if (oldRole == targetRole) {
                    val oldIndex = getChildren(oldParent, oldRole).indexOf(childId)
                    if (oldIndex == targetIndex) {
                        return this
                    }
                    if (oldIndex < targetIndex) {
                        targetIndex--
                    }
                }
            }
        }
        return deleteNode(childId, false).addChild(targetParentId, targetRole, targetIndex, childId)
    }

    override fun visitChanges(oldVersion: ITree, visitor: ITreeChangeVisitor) {
        nodesMap!!.visitChanges(
            (oldVersion as CLTree?)!!.nodesMap,
            object : CLHamtNode.IChangeVisitor {
                override fun entryAdded(key: Long, value: String?) {
                    val element = createElement(value)
                    visitor!!.nodeAdded(element!!.id)
                }

                override fun entryRemoved(key: Long, value: String?) {
                    val element = (oldVersion as CLTree).createElement(value)
                    visitor!!.nodeRemoved(element!!.id)
                }

                override fun entryChanged(key: Long, oldHash: String?, newHash: String?) {
                    val oldElement = (oldVersion as CLTree).createElement(oldHash)
                    val newElement = createElement(newHash)
                    if (oldElement!!::class != newElement!!::class) {
                        throw RuntimeException("Unsupported type change of element " + key + "from " + oldElement::class.simpleName + " to " + newElement::class.simpleName)
                    }
                    val oldNode = oldElement
                    val newNode = newElement
                    (oldNode.getData().propertyRoles.asSequence().plus(newNode.getData().propertyRoles.asSequence()))
                        .distinct()
                        .forEach { role: String ->
                            if (oldNode.getData().getPropertyValue(role) != newNode.getData().getPropertyValue(role)) {
                                visitor.propertyChanged(newNode.id, role)
                            }
                        }
                    val oldChildren: MutableMap<String?, MutableList<CLNode>> = HashMap()
                    val newChildren: MutableMap<String?, MutableList<CLNode>> = HashMap()
                    oldNode.getChildren(BulkQuery(store)).execute().forEach { oldChildren.getOrPut(it.roleInParent, { ArrayList() }).add(it) }
                    newNode.getChildren(BulkQuery(store)).execute().forEach { newChildren.getOrPut(it.roleInParent, { ArrayList() }).add(it) }
                    val roles: MutableSet<String?> = HashSet()
                    roles.addAll(oldChildren.keys)
                    roles.addAll(newChildren.keys)
                    for (role in roles) {
                        val oldChildrenInRole = oldChildren[role]
                        val newChildrenInRole = newChildren[role]
                        val oldValues = oldChildrenInRole?.map { it.id }
                        val newValues = newChildrenInRole?.map { it.id }
                        if (oldValues != newValues) {
                            visitor.childrenChanged(newNode.id, role)
                        }
                    }
                }
            }
        )
    }

    protected fun deleteElements(element: CPElement, idToHash: CLHamtNode<*>): CLHamtNode<*>? {
        var newIdToHash: CLHamtNode<*>? = idToHash
        if (element is CPNode) {
            for (childId in element.getChildrenIds()) {
                if (newIdToHash == null) throw RuntimeException("node $childId not found")
                val childHash: String = newIdToHash[childId] ?: throw RuntimeException("node $childId not found")
                val child = store.get(childHash) { CPElement.deserialize(it) }
                    ?: throw RuntimeException("element with hash $childHash not found")
                newIdToHash = deleteElements(child, newIdToHash)
            }
        }
        if (newIdToHash == null) throw RuntimeException("node ${element.id} not found")
        newIdToHash = newIdToHash.remove(element.id)
        return newIdToHash
    }

    fun resolveElement(ref: CLElementRef?): CLNode? {
        if (ref == null) {
            return null
        }
        val id = ref.id
        return resolveElement(id)
    }

    fun resolveElement(ref: CPElementRef?): CLNode? {
        if (ref == null) {
            return null
        }
        if (ref.isGlobal && ref.treeId != data.id) {
            throw RuntimeException("Cannot resolve " + ref + " in tree " + data.id)
        }
        if (ref.isLocal) {
            return resolveElement(ref.elementId)
        }
        throw RuntimeException("Unsupported reference type: $ref")
    }

    fun resolveElement(id: Long): CLNode? {
        if (id == 0L) {
            return null
        }
        val hash = nodesMap!![id] ?: throw RuntimeException("Element doesn't exist: ${SerializationUtil.longToHex(id)}")
        return createElement(hash, NonBulkQuery(store)).execute()
    }

    fun resolveElements(ids_: Iterable<Long>, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode>> {
        val ids = ids_.toList()
        val a: IBulkQuery.Value<List<String?>> = nodesMap!!.getAll(ids, bulkQuery)
        val b: IBulkQuery.Value<List<String>> = a.map { hashes: List<String?> ->
            hashes.mapIndexed { index, s -> s ?: throw RuntimeException("node ${ids[index]} not found") }
        }
        return b.mapBulk { hashes -> createElements(hashes, bulkQuery) }
    }

    fun createElement(hash: String?, query: IBulkQuery): IBulkQuery.Value<CLNode?> {
        return if (hash == null) {
            query.constant(null)
        } else query.get(hash) { s: String ->
            if (s == null) {
                throw RuntimeException("Element doesn't exist: $hash")
            }
            CPNode.deserialize(s)
        }.map { n: CPNode? -> CLElement.create(this@CLTree, n) }
    }

    fun createElement(hash: String?): CLNode? {
        return createElement(hash, NonBulkQuery(store)).execute()
    }

    fun createElements(hashes: List<String>, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode>> {
        return bulkQuery.map(hashes) { hash: String ->
            bulkQuery.get(hash) { s: String ->
                if (s == null) {
                    throw RuntimeException("Element doesn't exist: $hash")
                }
                CPNode.deserialize(s)
            }.map { n: CPNode? -> CLElement.create(this@CLTree, n)!! }
        }
    }

    protected fun serializeConcept(concept: IConcept?): String? {
        return IConceptSerializer.serialize(concept)
    }

    protected fun deserializeConcept(serialized: String?): IConcept? {
        return IConceptSerializer.deserialize(serialized)
    }
}
