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
import org.modelix.model.api.COWArrays.add
import org.modelix.model.api.COWArrays.insert
import org.modelix.model.api.COWArrays.remove
import org.modelix.model.lazy.RepositoryId.Companion.random
import org.modelix.model.persistent.*
import org.modelix.model.persistent.CPNode.Companion.create
import org.modelix.model.persistent.CPNodeRef.Companion.foreign
import org.modelix.model.persistent.CPNodeRef.Companion.global
import org.modelix.model.persistent.CPNodeRef.Companion.local

class CLTree : ITree, IBulkTree {
    val store: IDeserializingKeyValueStore
    val data: CPTree

    constructor(hash: String?, store: IDeserializingKeyValueStore) : this(if (hash == null) null else store.get<CPTree>(hash) { CPTree.deserialize(it) }, null, store)
    constructor(store: IDeserializingKeyValueStore) : this(null as CPTree?, null, store)
    constructor(id: RepositoryId?, store: IDeserializingKeyValueStore) : this(null, id, store)
    constructor(data: CPTree?, store: IDeserializingKeyValueStore) : this(data, null, store)
    private constructor(data: CPTree?, repositoryId_: RepositoryId?, store_: IDeserializingKeyValueStore) {
        var store = store_
        var repositoryId = repositoryId_
        if (data == null) {
            if (repositoryId == null) {
                repositoryId = random()
            }
            val root = CLNode(
                this,
                1,
                null,
                0,
                null,
                LongArray(0),
                arrayOf(),
                arrayOf(),
                arrayOf(),
                arrayOf()
            )
            val idToHash = storeElement(root, CLHamtInternal.createEmpty(store))
            this.data = CPTree(repositoryId.id, KVEntryReference(idToHash.getData()))
        } else {
            this.data = data
        }

        this.store = store

        // TODO remove
        this.nodesMap!![ITree.ROOT_ID]
    }

    private constructor(treeId_: String, idToHash: CLHamtNode, store: IDeserializingKeyValueStore) {
        var treeId: String? = treeId_
        if (treeId == null) {
            treeId = random().id
        }
        data = CPTree(treeId, KVEntryReference(idToHash.getData()))
        this.store = store

        // TODO remove
        this.nodesMap!![ITree.ROOT_ID]
    }

    override fun getId(): String {
        return data.id
    }

    fun getSize(): Long {
        return (nodesMap ?: return 0L).calculateSize(BulkQuery(store)).execute()
    }

    fun prefetchAll() {
        store.prefetch(hash)
    }

    val hash: String
        get() = data.hash

    val nodesMap: CLHamtNode?
        get() = CLHamtNode.create(data.idToHash.getValue(store), store)

    protected fun storeElement(node: CLNode, id2hash: CLHamtNode): CLHamtNode {
        val data = node.getData()
        var newMap = id2hash.put(node.id, KVEntryReference(data))
        if (newMap == null) {
            newMap = CLHamtInternal.createEmpty(store)
        }
        return newMap
    }

    val root: CLNode?
        get() = resolveElement(ITree.ROOT_ID)

    override fun setProperty(nodeId: Long, role: String, value: String?): ITree {
        var newIdToHash = nodesMap
        val newNodeData = resolveElement(nodeId)!!.getData().withPropertyValue(role, value)
        newIdToHash = newIdToHash!!.put(newNodeData)
        return CLTree(data.id, newIdToHash!!, store)
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?): ITree {
        if (containsNode(childId)) {
            throw DuplicateNodeId("Node ID already exists: ${childId.toString(16)}")
        }
        val newTree = createNewNode(childId, concept).addChild(parentId, role, index, childId)

        // TODO remove
        newTree.getConcept(childId)

        return newTree
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConceptReference?): ITree {
        TODO("Not yet implemented")
    }

    override fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray, concepts: Array<IConcept?>): ITree {
        throw UnsupportedOperationException("Not implemented yet")
    }

    override fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray, concepts: Array<IConceptReference?>): ITree {
        TODO("Not yet implemented")
    }

    override fun deleteNodes(nodeIds: LongArray): ITree {
        throw UnsupportedOperationException("Not implemented yet")
    }

    /**
     * Incomplete operation. The node is added to the map, but not attached anywhere in the tree.
     */
    protected fun createNewNode(nodeId: Long, concept: IConcept?): CLTree {
        var newIdToHash = nodesMap
        val newChildData = create(
            nodeId,
            serializeConcept(concept),
            0,
            null,
            LongArray(0),
            arrayOf(),
            arrayOf(),
            arrayOf(),
            arrayOf()
        )
        newIdToHash = newIdToHash!!.put(newChildData)!!
        return CLTree(data.id, newIdToHash, store)
    }

    /**
     * Incomplete operation. The child has to exist in the map, but not be part of the tree.
     */
    protected fun addChild(parentId: Long, role: String?, index: Int, childId: Long): ITree {
        val parent = resolveElement(parentId)
        var newIdToHash = nodesMap
        val childData = resolveElement(childId)!!.getData()
        val newChildData = create(
            childData.id,
            childData.concept,
            parentId,
            role,
            childData.childrenIdArray,
            childData.propertyRoles,
            childData.propertyValues,
            childData.referenceRoles,
            childData.referenceTargets
        )
        newIdToHash = newIdToHash!!.put(newChildData)
        var newChildrenArray = parent!!.getData().childrenIdArray
        newChildrenArray = if (index == -1) {
            add(newChildrenArray, childData.id)
        } else {
            val childrenInRole = getChildren(parentId, role).toList()
            if (index > childrenInRole.size) throw RuntimeException("Invalid index $index. There are only ${childrenInRole.size} nodes in ${parentId.toString(16)}.$role")
            if (index == childrenInRole.size) {
                add(newChildrenArray, childData.id)
            } else {
                val indexInAll = newChildrenArray.indexOf(childrenInRole[index])
                insert(
                    newChildrenArray,
                    indexInAll,
                    childData.id
                )
            }
        }
        val newParentData = create(
            parent.id,
            parent.concept,
            parent.getData().parentId,
            parent.roleInParent,
            newChildrenArray,
            parent.getData().propertyRoles,
            parent.getData().propertyValues,
            parent.getData().referenceRoles,
            parent.getData().referenceTargets
        )
        newIdToHash = newIdToHash!!.put(newParentData)
        return CLTree(data.id, newIdToHash!!, store)
    }

    override fun setReferenceTarget(sourceId: Long, role: String, target: INodeReference?): ITree {
        val source = resolveElement(sourceId)!!
        val refData: CPNodeRef? = when (target) {
            null -> null
            is LocalPNodeReference -> {
                local(target.id)
            }
            is PNodeReference -> {
                if (target.branchId.isEmpty() || target.branchId == getId()) local(target.id)
                else global(target.branchId, target.id)
            }
            else -> foreign(INodeReferenceSerializer.serialize(target))
        }
        var newIdToHash = nodesMap
        val newNodeData = source.getData().withReferenceTarget(role, refData)
        newIdToHash = newIdToHash!!.put(newNodeData)
        return CLTree(data.id, newIdToHash!!, store)
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
        var newIdToHash: CLHamtNode = nodesMap
            ?: throw RuntimeException("nodesMap not found for hash: " + this.data.idToHash)
        val newParentData = create(
            parent!!.id,
            parent.concept,
            parent.getData().parentId,
            parent.getData().roleInParent,
            remove(parent.getData().childrenIdArray, node.id),
            parent.getData().propertyRoles,
            parent.getData().propertyValues,
            parent.getData().referenceRoles,
            parent.getData().referenceTargets
        )
        newIdToHash = newIdToHash.put(newParentData)
            ?: throw RuntimeException("Unexpected empty nodes map. There should be at least the root node.")
        if (recursive) {
            newIdToHash = deleteElements(node.getData(), newIdToHash)
                ?: throw RuntimeException("Unexpected empty nodes map. There should be at least the root node.")
        }
        return CLTree(data.id, newIdToHash, store)
    }

    override fun containsNode(nodeId: Long): Boolean {
        return nodesMap!![nodeId] != null
    }

    override fun getAllChildren(parentId: Long): Iterable<Long> {
        val children = resolveElement(parentId)!!.getChildren(BulkQuery(store)).execute()
        return children.map { it.id }
    }

    override fun getDescendants(root: Long, includeSelf: Boolean): Iterable<CLNode> {
        val parent = resolveElement(root)
        return parent!!.getDescendants(BulkQuery(store), includeSelf).execute()
    }

    override fun getDescendants(rootIds: Iterable<Long>, includeSelf: Boolean): Iterable<CLNode> {
        val bulkQuery = BulkQuery(store)
        val roots: IBulkQuery.Value<List<CLNode>> = resolveElements(rootIds.toList(), bulkQuery)
        val descendants = roots.mapBulk { bulkQuery.map(it) { it.getDescendants(bulkQuery, includeSelf) } }
        return descendants.execute().flatten()
    }

    override fun getChildren(parentId: Long, role: String?): Iterable<Long> {
        val parent = resolveElement(parentId)
        val children = parent!!.getChildren(BulkQuery(store)).execute()
        return children
            .filter { it.roleInParent == role }
            .map { it.id }
    }

    override fun getChildRoles(sourceId: Long): Iterable<String?> {
        val parent = resolveElement(sourceId)
        val children: Iterable<CLNode> = parent!!.getChildren(BulkQuery(store)).execute()
        return children.map { it.roleInParent }.distinct()
    }

    override fun getConcept(nodeId: Long): IConcept? {
        try {
            val node = resolveElement(nodeId)
            return deserializeConcept(node!!.concept)
        } catch (e: RuntimeException) {
            throw RuntimeException("Unable to find concept for node $nodeId", e)
        }
    }

    override fun getConceptReference(nodeId: Long): IConceptReference? {
        // TODO this method was introduced to avoid the resolution of concepts, but implementing it correctly
        // requires some effort to ensure we don't break deserialization of existing models
        return getConcept(nodeId)?.getReference()
    }

    override fun getParent(nodeId: Long): Long {
        val node = resolveElement(nodeId)
        return node!!.getData().parentId
    }

    override fun getProperty(nodeId: Long, role: String): String? {
        val node = resolveElement(nodeId)
        return node!!.getData().getPropertyValue(role)
    }

    override fun getPropertyRoles(sourceId: Long): Iterable<String> {
        val node = resolveElement(sourceId)
        return node!!.getData().propertyRoles.toList()
    }

    override fun getReferenceRoles(sourceId: Long): Iterable<String> {
        val node = resolveElement(sourceId)
        return node!!.getData().referenceRoles.toList()
    }

    override fun getReferenceTarget(sourceId: Long, role: String): INodeReference? {
        val node = resolveElement(sourceId)!!
        val targetRef = node.getData().getReferenceTarget(role)
        return when {
            targetRef == null -> null
            targetRef.isLocal -> PNodeReference(targetRef.elementId, this.getId())
            targetRef is CPNodeRef.ForeignRef -> INodeReferenceSerializer.deserialize(targetRef.serializedRef)
            else -> throw UnsupportedOperationException("Unsupported reference: $targetRef")
        }
    }

    override fun getRole(nodeId: Long): String? {
        val node = resolveElement(nodeId)
        return node!!.roleInParent
    }

    override fun moveChild(targetParentId: Long, targetRole: String?, targetIndex_: Int, childId: Long): ITree {
        if (childId == ITree.ROOT_ID) throw RuntimeException("Moving the root node is not allowed")
        var ancestor = targetParentId
        while (ancestor != ITree.ROOT_ID) {
            if (ancestor == childId) {
                throw RuntimeException("${targetParentId.toString(16)} is a descendant of ${childId.toString(16)}")
            }
            ancestor = getParent(ancestor)
        }

        var targetIndex = targetIndex_
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
        if (oldVersion !is CLTree) throw IllegalArgumentException("Diff is only supported between two instances of CLTree")
        if (data.idToHash == oldVersion.data.idToHash) return
        val changesOnly = visitor !is ITreeChangeVisitorEx
        nodesMap!!.visitChanges(
            oldVersion.nodesMap,
            object : CLHamtNode.IChangeVisitor {
                override fun visitChangesOnly(): Boolean {
                    return changesOnly
                }

                override fun entryAdded(key: Long, value: KVEntryReference<CPNode>?) {
                    if (visitor is ITreeChangeVisitorEx) {
                        val element = createElement(value)
                        visitor.nodeAdded(element!!.id)
                    }
                }

                override fun entryRemoved(key: Long, value: KVEntryReference<CPNode>?) {
                    if (visitor is ITreeChangeVisitorEx) {
                        val element = oldVersion.createElement(value)
                        visitor.nodeRemoved(element!!.id)
                    }
                }

                override fun entryChanged(key: Long, oldValue: KVEntryReference<CPNode>?, newValue: KVEntryReference<CPNode>?) {
                    val oldElement = oldVersion.createElement(oldValue)
                    val newElement = createElement(newValue)
                    if (oldElement!!::class != newElement!!::class) {
                        throw RuntimeException("Unsupported type change of node " + key + "from " + oldElement::class.simpleName + " to " + newElement::class.simpleName)
                    }
                    oldElement.getData().propertyRoles.asSequence()
                        .plus(newElement.getData().propertyRoles.asSequence())
                        .distinct()
                        .forEach { role: String ->
                            if (oldElement.getData().getPropertyValue(role) != newElement.getData().getPropertyValue(role)) {
                                visitor.propertyChanged(newElement.id, role)
                            }
                        }
                    oldElement.getData().referenceRoles.asSequence()
                        .plus(newElement.getData().referenceRoles.asSequence())
                        .distinct()
                        .forEach { role: String ->
                            if (oldElement.getData().getReferenceTarget(role) != newElement.getData().getReferenceTarget(role)) {
                                visitor.referenceChanged(newElement.id, role)
                            }
                        }
                    val oldChildren: MutableMap<String?, MutableList<CLNode>> = HashMap()
                    val newChildren: MutableMap<String?, MutableList<CLNode>> = HashMap()
                    oldElement.getChildren(BulkQuery(store)).execute().forEach { oldChildren.getOrPut(it.roleInParent, { ArrayList() }).add(it) }
                    newElement.getChildren(BulkQuery(store)).execute().forEach { newChildren.getOrPut(it.roleInParent, { ArrayList() }).add(it) }
                    val roles: MutableSet<String?> = HashSet()
                    roles.addAll(oldChildren.keys)
                    roles.addAll(newChildren.keys)
                    for (role in roles) {
                        val oldChildrenInRole = oldChildren[role]
                        val newChildrenInRole = newChildren[role]
                        val oldValues = oldChildrenInRole?.map { it.id }
                        val newValues = newChildrenInRole?.map { it.id }
                        if (oldValues != newValues) {
                            visitor.childrenChanged(newElement.id, role)
                        }
                    }
                }
            }
        )
    }

    protected fun deleteElements(node: CPNode, idToHash: CLHamtNode): CLHamtNode? {
        var newIdToHash: CLHamtNode? = idToHash
        for (childId in node.getChildrenIds()) {
            if (newIdToHash == null) throw RuntimeException("node $childId not found")
            val childHash: KVEntryReference<CPNode> = newIdToHash[childId] ?: throw RuntimeException("node $childId not found")
            val child = childHash.getValue(store)
            newIdToHash = deleteElements(child, newIdToHash)
        }
        if (newIdToHash == null) throw RuntimeException("node ${node.id} not found")
        newIdToHash = newIdToHash.remove(node.id)
        return newIdToHash
    }

    fun resolveElement(ref: CLNodeRef?): CLNode? {
        if (ref == null) {
            return null
        }
        val id = ref.id
        return resolveElement(id)
    }

    fun resolveElement(ref: CPNodeRef?): CLNode? {
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
        val hash = nodesMap!![id]
            ?: throw RuntimeException("Element doesn't exist: ${SerializationUtil.longToHex(id)} ($id)")
        return createElement(hash, NonBulkQuery(store)).execute()
    }

    fun resolveElements(ids_: Iterable<Long>, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode>> {
        val ids = ids_.toList()
        val a: IBulkQuery.Value<List<KVEntryReference<CPNode>?>> = nodesMap!!.getAll(ids, bulkQuery)
        val b: IBulkQuery.Value<List<KVEntryReference<CPNode>>> = a.map { hashes: List<KVEntryReference<CPNode>?> ->
            hashes.mapIndexed { index, s -> s ?: throw RuntimeException("node with ID 0x${SerializationUtil.longToHex(ids[index])}/${ids[index]} not found") }
        }
        return b.mapBulk { hashes -> createElements(hashes, bulkQuery) }
    }

    fun createElement(hash: KVEntryReference<CPNode>?, query: IBulkQuery): IBulkQuery.Value<CLNode?> {
        return if (hash == null) query.constant(null)
        else (query[hash].map { n: CPNode? -> CLNode.create(this@CLTree, n) })
    }

    fun createElement(hash: KVEntryReference<CPNode>?): CLNode? {
        return createElement(hash, NonBulkQuery(store)).execute()
    }

    fun createElements(hashes: List<KVEntryReference<CPNode>>, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode>> {
        return bulkQuery.map(hashes) { hash: KVEntryReference<CPNode> ->
            bulkQuery[hash].map { n -> CLNode.create(this@CLTree, n)!! }
        }
    }

    protected fun serializeConcept(concept: IConcept?): String? {
        if (concept == null) return null
        return IConceptReferenceSerializer.serialize(concept)
    }

    protected fun deserializeConcept(serialized: String?): IConcept? {
        if (serialized == null) return null
        return IConceptReferenceSerializer.deserialize(serialized, this)
    }

    override fun toString(): String {
        return "CLTree[$hash]"
    }
}
