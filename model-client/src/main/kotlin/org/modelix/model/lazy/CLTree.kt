package org.modelix.model.lazy

import com.google.common.collect.MultimapBuilder
import org.modelix.model.api.*
import org.modelix.model.lazy.CLElement
import org.modelix.model.lazy.CLHamtNode.Companion.create
import org.modelix.model.lazy.CLNode
import org.modelix.model.lazy.IDeserializingKeyValueStore_extensions.put
import org.modelix.model.lazy.TreeId.Companion.random
import org.modelix.model.persistent.*
import org.modelix.model.persistent.CPElementRef.Companion.local
import org.modelix.model.persistent.CPNode.Companion.create
import org.modelix.model.persistent.HashUtil.sha256
import org.modelix.model.util.StreamUtils.indexOf
import org.modelix.model.util.pmap.COWArrays.add
import org.modelix.model.util.pmap.COWArrays.indexOf
import org.modelix.model.util.pmap.COWArrays.insert
import org.modelix.model.util.pmap.COWArrays.remove
import java.util.*
import java.util.function.Consumer
import java.util.function.Function
import java.util.stream.Collectors
import java.util.stream.LongStream
import java.util.stream.Stream
import java.util.stream.StreamSupport

class CLTree : ITree {
    protected var store: IDeserializingKeyValueStore? = null
    protected var data: CPTree? = null

    constructor(hash: String?, store: IDeserializingKeyValueStore) : this(store.get<CPTree>(hash, Function<String?, CPTree> { serialized: String? -> CPTree.deserialize(serialized!!) }), null, store) {}
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
            put(store, this.data, this.data!!.serialize())
        } else {
            this.store = store
            this.data = data
        }
    }

    private constructor(treeId: String, rootId: Long, idToHash: CLHamtNode<*>, store: IDeserializingKeyValueStore?) {
        var treeId: String? = treeId
        if (treeId == null) {
            treeId = random().id
        }
        this.store = store
        data = CPTree(treeId, rootId, sha256(idToHash.getData()!!.serialize()!!))
        put(store!!, data, data!!.serialize())
    }

    fun prefetchAll() {
        store!!.prefetch(hash)
    }

    val hash: String
        get() = sha256(data!!.serialize())

    val nodesMap: CLHamtNode<*>?
        get() = create(store!!.get(data!!.idToHash, Function { s: String? -> CPHamtNode.deserialize(s!!) }), store)

    val id: String
        get() = data!!.id

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

    override fun setProperty(nodeId: Long, role: String?, value: String?): ITree? {
        var newIdToHash = nodesMap
        val newNodeData = resolveElement(nodeId)!!.getData()!!.withPropertyValue(role!!, value)
        newIdToHash = newIdToHash!!.put(newNodeData)
        put(store!!, newNodeData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun addNewChild(parentId: Long, role: String?, index: Int, childId: Long, concept: IConcept?): ITree? {
        if (containsNode(childId)) {
            throw RuntimeException("Node ID already exists: $childId")
        }
        return createNewNode(childId, concept).addChild(parentId, role, index, childId)
    }

    override fun addNewChildren(parentId: Long, role: String?, index: Int, newIds: LongArray?, concepts: Array<IConcept?>?): ITree? {
        throw UnsupportedOperationException("Not implemented yet")
    }

    override fun deleteNodes(nodeIds: LongArray?): ITree? {
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
                childData.referenceTargets as Array<CPElementRef?>)
        newIdToHash = newIdToHash!!.put(newChildData)
        put(store!!, newChildData)
        var newChildrenArray = parent!!.getData()!!.childrenIdArray
        newChildrenArray = if (index == -1) {
            add(newChildrenArray, childData.id)
        } else {
            val anchor = getChildren(parentId, role)!!.skip(index.toLong()).findFirst()
            if (anchor.isEmpty) {
                add(newChildrenArray, childData.id)
            } else {
                insert(
                        newChildrenArray,
                        indexOf(newChildrenArray, anchor.asLong),
                        childData.id)
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
                parent.getData()!!.referenceTargets as Array<CPElementRef?>)
        newIdToHash = newIdToHash!!.put(newParentData)
        put(store!!, newParentData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun setReferenceTarget(sourceId: Long, role: String?, targetRef: INodeReference?): ITree? {
        val source = resolveElement(sourceId)
        var target: CLNode? = null
        var refData: CPElementRef? = null
        if (targetRef == null) {
        } else if (targetRef is PNodeReference) {
            val targetId = targetRef.id
            refData = local(targetId)
            target = resolveElement(targetId)
            //    } else if (targetRef instanceof SNodeReferenceAdapter) {
//      refData = CPElementRef.mps(SNodePointer.serialize(((SNodeReferenceAdapter) targetRef).getReference()));
        } else {
            throw RuntimeException("Unsupported reference type: " + targetRef.javaClass.simpleName)
        }
        var newIdToHash = nodesMap
        val newNodeData = source!!.getData()!!.withReferenceTarget(role!!, refData)
        newIdToHash = newIdToHash!!.put(newNodeData)
        put(store!!, newNodeData)
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun deleteNode(nodeId: Long): ITree? {
        return deleteNode(nodeId, true)
    }

    /**
     * Incomplete operation.
     * If recursive==false, the result is an inconsistent tree.
     * Make sure to delete the descendants or add them to the tree at a new location.
     */
    protected fun deleteNode(nodeId: Long, recursive: Boolean): CLTree {
        val node = resolveElement(nodeId)
        val parent = resolveElement(node!!.getData()!!.parentId)
        var newIdToHash = nodesMap
        val newParentData = create(parent!!.id, parent.concept, parent.getData()!!.parentId, parent.getData()!!.roleInParent, remove(parent.getData()!!.childrenIdArray, node.id),
                parent.getData()!!.propertyRoles as Array<String?>,
                parent.getData()!!.propertyValues as Array<String?>,
                parent.getData()!!.referenceRoles as Array<String?>,
                parent.getData()!!.referenceTargets as Array<CPElementRef?>)
        newIdToHash = newIdToHash!!.put(newParentData)
        put(store!!, newParentData)
        if (recursive) {
            newIdToHash = deleteElements(node.getData(), newIdToHash)
        }
        return CLTree(data!!.id, data!!.rootId, newIdToHash!!, store)
    }

    override fun containsNode(nodeId: Long): Boolean {
        return nodesMap!![nodeId] != null
    }

    override fun getAllChildren(parentId: Long): LongStream? {
        val children = resolveElement(parentId)!!.getChildren(BulkQuery(store!!))!!.execute()
        return StreamSupport.stream(children!!.spliterator(), false).mapToLong(CLElement::id)
    }

    fun getDescendants(root: Long, includeSelf: Boolean): Iterable<CLNode> {
        val parent = resolveElement(root)
        return parent!!.getDescendants(BulkQuery(store!!), includeSelf)!!.execute()
    }

    override fun getChildren(parentId: Long, role: String?): LongStream? {
        val parent = resolveElement(parentId)
        val children = parent!!.getChildren(BulkQuery(store!!))!!.execute()
        return StreamSupport.stream(children!!.spliterator(), false)
                .filter { it: CLNode -> it.roleInParent == role }
                .mapToLong(CLNode::id)
    }

    override fun getChildRoles(sourceId: Long): Iterable<String?>? {
        val parent = resolveElement(sourceId)
        val children = parent!!.getChildren(BulkQuery(store!!))!!.execute()
        return Iterable {
            StreamSupport.stream(children!!.spliterator(), false)
                    .map<String>(CLNode::roleInParent).distinct().iterator()
        }
    }

    override fun getConcept(nodeId: Long): IConcept? {
        val node = resolveElement(nodeId)
        return deserializeConcept(node!!.concept)
    }

    override fun getParent(nodeId: Long): Long {
        val node = resolveElement(nodeId)
        return node!!.getData()!!.parentId
    }

    override fun getProperty(nodeId: Long, role: String?): String? {
        val node = resolveElement(nodeId)
        return node!!.getData()!!.getPropertyValue(role)
    }

    override fun getPropertyRoles(sourceId: Long): Iterable<String?>? {
        val node = resolveElement(sourceId)
        return Arrays.asList(*node!!.getData()!!.propertyRoles)
    }

    override fun getReferenceRoles(sourceId: Long): Iterable<String?>? {
        val node = resolveElement(sourceId)
        return Arrays.asList(*node!!.getData()!!.referenceRoles)
    }

    override fun getReferenceTarget(sourceId: Long, role: String?): INodeReference? {
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

    override fun moveChild(targetParentId: Long, targetRole: String?, targetIndex: Int, childId: Long): ITree? {
        var targetIndex = targetIndex
        if (targetIndex != -1) {
            val oldParent = getParent(childId)
            if (oldParent == targetParentId) {
                val oldRole = getRole(childId)
                if (oldRole == targetRole) {
                    val oldIndex = indexOf(getChildren(oldParent, oldRole)!!, childId)
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

    override fun visitChanges(oldVersion: ITree?, visitor: ITreeChangeVisitor?) {
        nodesMap!!.visitChanges((oldVersion as CLTree?)!!.nodesMap, object : CLHamtNode.IChangeVisitor {
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
                if (oldElement!!.javaClass != newElement!!.javaClass) {
                    throw RuntimeException("Unsupported type change of element " + key + "from " + oldElement.javaClass.getSimpleName() + " to " + newElement.javaClass.getSimpleName())
                }
                val oldNode = oldElement
                val newNode = newElement
                Stream.concat(
                        Arrays.stream(oldNode!!.getData()!!.propertyRoles),
                        Arrays.stream(newNode!!.getData()!!.propertyRoles))
                        .distinct()
                        .forEach { role: String? ->
                            if (oldNode!!.getData()!!.getPropertyValue(role) != newNode.getData()!!.getPropertyValue(role)) {
                                visitor!!.propertyChanged(newNode.id, role)
                            }
                        }
                val oldChildren = MultimapBuilder.hashKeys().arrayListValues().build<String, CLNode>()
                val newChildren = MultimapBuilder.hashKeys().arrayListValues().build<String, CLNode>()
                oldNode!!.getChildren(BulkQuery(store!!))!!.execute()!!.forEach(Consumer { it: CLNode -> oldChildren.put(it.roleInParent, it) })
                newNode.getChildren(BulkQuery(store!!))!!.execute()!!.forEach(Consumer { it: CLNode -> newChildren.put(it.roleInParent, it) })
                val roles: MutableSet<String> = HashSet()
                roles.addAll(oldChildren.keySet())
                roles.addAll(newChildren.keySet())
                for (role in roles) {
                    val oldChildrenInRole = oldChildren[role]
                    val newChildrenInRole = newChildren[role]
                    val oldValues = oldChildrenInRole.stream().map(CLNode::id).collect(Collectors.toList())
                    val newValues = newChildrenInRole.stream().map(CLNode::id).collect(Collectors.toList())
                    if (oldValues != newValues) {
                        visitor!!.childrenChanged(newNode.id, role)
                    }
                }
            }
        })
    }

    protected fun deleteElements(element: CPElement?, idToHash: CLHamtNode<*>?): CLHamtNode<*>? {
        var newIdToHash = idToHash
        if (element is CPNode) {
            for (childId in element.getChildrenIds()) {
                val childHash = idToHash!![childId]
                val child = store!!.get(childHash, Function { obj: String? -> CPElement.deserialize(obj) })
                newIdToHash = deleteElements(child, newIdToHash)
            }
        }
        newIdToHash = newIdToHash!!.remove(element!!.id)
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
        if (ref.isGlobal && ref.treeId != data!!.id) {
            throw RuntimeException("Cannot resolve " + ref + " in tree " + data!!.id)
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
        val hash = nodesMap!![id] ?: throw RuntimeException("Element doesn't exist: $id")
        return createElement(hash, NonBulkQuery(store!!))!!.execute()
    }

    fun resolveElements(ids: Iterable<Long?>?, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode?>?>? {
        val a = nodesMap!!.getAll(ids as Iterable<Long>, bulkQuery)
        return a!!.mapBulk(Function { hashes: List<String?>? -> createElements(hashes, bulkQuery) })
    }

    fun createElement(hash: String?, query: IBulkQuery): IBulkQuery.Value<CLNode?>? {
        return if (hash == null) {
            query.constant(null)
        } else query.get(hash, Function { s: String? ->
            if (s == null) {
                throw RuntimeException("Element doesn't exist: $hash")
            }
            CPNode.deserialize(s)
        })!!.map(Function { n: CPNode -> CLElement.create(this@CLTree, n) })
    }

    fun createElement(hash: String?): CLNode? {
        return createElement(hash, NonBulkQuery(store!!))!!.execute()
    }

    fun createElements(hashes: List<String?>?, bulkQuery: IBulkQuery): IBulkQuery.Value<List<CLNode?>?>? {
        return bulkQuery.map(hashes, Function { hash: String? ->
            bulkQuery.get(hash, Function { s: String? ->
                if (s == null) {
                    throw RuntimeException("Element doesn't exist: $hash")
                }
                CPNode.deserialize(s)
            })!!.map(Function<CPNode, CLNode?> { n: CPNode? -> CLElement.create(this@CLTree, n) })
        })
    }

    protected fun serializeConcept(concept: IConcept?): String? {
//    if (concept == null) {
        return null
        //    }
//    return ((SAbstractConceptAdapter) ((SConceptAdapter) concept).getAdapted()).serialize();
    }

    protected fun deserializeConcept(serialized: String?): IConcept? {
//    if (serialized == null) {
        return null
        //    }
//    return SConceptAdapter.wrap(SAbstractConceptAdapter.deserialize(serialized));
    }
}