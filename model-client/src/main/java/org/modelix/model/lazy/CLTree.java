package org.modelix.model.lazy;

import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;
import org.modelix.model.api.IConcept;
import org.modelix.model.api.INodeReference;
import org.modelix.model.api.ITree;
import org.modelix.model.api.ITreeChangeVisitor;
import org.modelix.model.api.PNodeReference;
import org.modelix.model.util.pmap.COWArrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.modelix.model.util.StreamUtils;
import org.modelix.model.persistent.CPElement;
import org.modelix.model.persistent.CPElementRef;
import org.modelix.model.persistent.CPHamtNode;
import org.modelix.model.persistent.CPNode;
import org.modelix.model.persistent.CPTree;
import org.modelix.model.persistent.HashUtil;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.OptionalLong;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class CLTree implements ITree {

  protected IDeserializingKeyValueStore store;
  protected CPTree data;

  public CLTree(String hash, IDeserializingKeyValueStore store) {
    this(store.get(hash, serialized -> CPTree.deserialize(serialized)), null, store);
  }

  public CLTree(IDeserializingKeyValueStore store) {
    this(((CPTree) null), null, store);
  }

  public CLTree(TreeId id, IDeserializingKeyValueStore store) {
    this(null, id, store);
  }

  private CLTree(@Nullable CPTree data, @Nullable TreeId treeId, @NotNull IDeserializingKeyValueStore store) {
    if (data == null) {
      this.store = store;
      if (treeId == null) {
        treeId = TreeId.random();
      }

      CLNode root = new CLNode(this, 1, null, 0, null, new long[0], new String[0], new String[0], new String[0], new CPElementRef[0]);
      CLHamtNode idToHash = storeElement(root, new CLHamtInternal(store));
      this.data = new CPTree(treeId.getId(), 1, HashUtil.sha256(idToHash.getData().serialize()));

      IDeserializingKeyValueStore_extensions.put(store, this.data, this.data.serialize());
    } else {
      this.store = store;
      this.data = data;
    }
  }

  private CLTree(String treeId, long rootId, @NotNull CLHamtNode idToHash, IDeserializingKeyValueStore store) {
    if (treeId == null) {
      treeId = TreeId.random().getId();
    }
    this.store = store;
    this.data = new CPTree(treeId, rootId, HashUtil.sha256(idToHash.getData().serialize()));
    IDeserializingKeyValueStore_extensions.put(store, data, data.serialize());
  }

  public void prefetchAll() {
    store.prefetch(getHash());
  }

  public String getHash() {
    return HashUtil.sha256(data.serialize());
  }

  public CLHamtNode getNodesMap() {
    return CLHamtNode.create(store.get(data.idToHash, s -> CPHamtNode.deserialize(s)), store);
  }

  public String getId() {
    return data.id;
  }

  protected CLHamtNode storeElement(CLElement element, CLHamtNode id2hash) {
    CPElement data = element.getData();
    String serialized = data.serialize();
    String hash = HashUtil.sha256(serialized);
    store.put(hash, data, serialized);
    CLHamtNode newMap = id2hash.put(element.getId(), hash);
    if (newMap == null) {
      newMap = new CLHamtInternal(store);
    }
    return newMap;
  }

  public CLNode getRoot() {
    return (CLNode) resolveElement(data.rootId);
  }

  @Override
  public ITree setProperty(long nodeId, String role, String value) {
    CLNode node = ((CLNode) resolveElement(nodeId));

    CLHamtNode newIdToHash = getNodesMap();

    CPNode newNodeData = node.getData().withPropertyValue(role, value);
    newIdToHash = newIdToHash.put(newNodeData);
    IDeserializingKeyValueStore_extensions.put(store, newNodeData);

    CLTree newTree = new CLTree(data.id, data.rootId, newIdToHash, store);
    return newTree;
  }

  @Override
  public ITree addNewChild(long parentId, String role, int index, long childId, IConcept concept) {
    if (containsNode(childId)) {
      throw new RuntimeException("Node ID already exists: " + childId);
    }
    return createNewNode(childId, concept).addChild(parentId, role, index, childId);
  }

  @Override
  public ITree addNewChildren(long parentId, String role, int index, long[] newIds, IConcept[] concepts) {
    throw new UnsupportedOperationException("Not implemented yet");
  }

  @Override
  public ITree deleteNodes(long[] nodeIds) {
    throw new UnsupportedOperationException("Not implemented yet");
  }

  /**
   * Incomplete operation. The node is added to the map, but not attached anywhere in the tree.
   */
  protected CLTree createNewNode(long nodeId, IConcept concept) {
    CLHamtNode newIdToHash = getNodesMap();

    CPNode newChildData = CPNode.create(nodeId, serializeConcept(concept), 0, null, new long[0], new String[0], new String[0], new String[0], new CPElementRef[0]);

    newIdToHash = newIdToHash.put(newChildData);
    IDeserializingKeyValueStore_extensions.put(store, newChildData);

    CLTree newTree = new CLTree(data.id, data.rootId, newIdToHash, store);
    return newTree;
  }

  /**
   * Incomplete operation. The child has to exist in the map, but not be part of the tree.
   */
  protected ITree addChild(long parentId, String role, int index, long childId) {
    CLNode parent = ((CLNode) resolveElement(parentId));

    CLHamtNode newIdToHash = getNodesMap();

    CLNode child = (CLNode) resolveElement(childId);
    CPNode childData = child.getData();

    CPNode newChildData = CPNode.create(
            childData.getId(),
            childData.getConcept(),
            parentId,
            role,
            childData.getChildrenIdArray(),
            childData.getPropertyRoles(),
            childData.getPropertyValues(),
            childData.getReferenceRoles(),
            childData.getReferenceTargets());
    newIdToHash = newIdToHash.put(newChildData);
    IDeserializingKeyValueStore_extensions.put(store, newChildData);

    long[] newChildrenArray = parent.getData().getChildrenIdArray();
    if (index == -1) {
      newChildrenArray = COWArrays.add(newChildrenArray, childData.getId());
    } else {
      OptionalLong anchor = getChildren(parentId, role).skip(index).findFirst();
      if (anchor.isEmpty()) {
        newChildrenArray = COWArrays.add(newChildrenArray, childData.getId());
      } else {
        newChildrenArray = COWArrays.insert(
                newChildrenArray,
                COWArrays.indexOf(newChildrenArray, anchor.getAsLong()),
                childData.getId());
      }
    }
    CPNode newParentData = CPNode.create(
            parent.getId(),
            parent.getConcept(),
            parent.getData().getParentId(),
            parent.getRoleInParent(),
            newChildrenArray,
            parent.getData().getPropertyRoles(),
            parent.getData().getPropertyValues(),
            parent.getData().getReferenceRoles(),
            parent.getData().getReferenceTargets());

    newIdToHash = newIdToHash.put(newParentData);
    IDeserializingKeyValueStore_extensions.put(store, newParentData);

    CLTree newTree = new CLTree(data.id, data.rootId, newIdToHash, store);
    return newTree;
  }

  @Override
  public ITree setReferenceTarget(long sourceId, String role, INodeReference targetRef) {
    CLNode source = resolveElement(sourceId);

    CLNode target = null;
    CPElementRef refData = null;
    if (targetRef == null) {
    } else if (targetRef instanceof PNodeReference) {
      long targetId = ((PNodeReference) targetRef).getId();
      refData = CPElementRef.local(targetId);
      target = resolveElement(targetId);
//    } else if (targetRef instanceof SNodeReferenceAdapter) {
//      refData = CPElementRef.mps(SNodePointer.serialize(((SNodeReferenceAdapter) targetRef).getReference()));
    } else {
      throw new RuntimeException("Unsupported reference type: " + targetRef.getClass().getSimpleName());
    }


    CLHamtNode newIdToHash = getNodesMap();

    CPNode newNodeData = source.getData().withReferenceTarget(role, refData);
    newIdToHash = newIdToHash.put(newNodeData);
    IDeserializingKeyValueStore_extensions.put(store, newNodeData);

    CLTree newTree = new CLTree(data.id, data.rootId, newIdToHash, store);
    return newTree;
  }

  @Override
  public ITree deleteNode(long nodeId) {
    return deleteNode(nodeId, true);
  }

  /**
   * Incomplete operation.
   * If recursive==false, the result is an inconsistent tree.
   * Make sure to delete the descendants or add them to the tree at a new location.
   */
  protected CLTree deleteNode(long nodeId, boolean recursive) {
    CLNode node = (CLNode) resolveElement(nodeId);
    CLNode parent = (CLNode) resolveElement(node.getData().getParentId());
    CLHamtNode newIdToHash = getNodesMap();

    CPNode newParentData = CPNode.create(parent.getId(), parent.getConcept(), parent.getData().getParentId(), parent.getData().getRoleInParent(), COWArrays.remove(parent.getData().getChildrenIdArray(), node.getId()), parent.getData().getPropertyRoles(), parent.getData().getPropertyValues(), parent.getData().getReferenceRoles(), parent.getData().getReferenceTargets());

    newIdToHash = newIdToHash.put(newParentData);
    IDeserializingKeyValueStore_extensions.put(store, newParentData);
    if (recursive) {
      newIdToHash = deleteElements(node.getData(), newIdToHash);
    }

    CLTree newTree = new CLTree(data.id, data.rootId, newIdToHash, store);
    return newTree;
  }


  @Override
  public boolean containsNode(long nodeId) {
    return getNodesMap().get(nodeId) != null;
  }
  @Override
  public LongStream getAllChildren(long parentId) {
    CLNode parent = (CLNode) resolveElement(parentId);
    Iterable<CLNode> children = parent.getChildren(new BulkQuery(store)).execute();
    return StreamSupport.stream(children.spliterator(), false).mapToLong(CLElement::getId);
  }
  public Iterable<CLNode> getDescendants(long root, boolean includeSelf) {
    CLNode parent = resolveElement(root);
    return parent.getDescendants(new BulkQuery(store), includeSelf).execute();
  }
  @Override
  public LongStream getChildren(long parentId, final String role) {
    CLNode parent = resolveElement(parentId);
    Iterable<CLNode> children = parent.getChildren(new BulkQuery(store)).execute();
    return StreamSupport.stream(children.spliterator(), false)
            .filter(it -> Objects.equals(it.getRoleInParent(), role))
            .mapToLong(CLNode::getId);
  }
  @Override
  public Iterable<String> getChildRoles(long sourceId) {
    CLNode parent = resolveElement(sourceId);
    Iterable<CLNode> children = parent.getChildren(new BulkQuery(store)).execute();
    return StreamSupport.stream(children.spliterator(), false)
            .map(CLNode::getRoleInParent).distinct()::iterator;
  }
  @Override
  public IConcept getConcept(long nodeId) {
    CLNode node = resolveElement(nodeId);
    return deserializeConcept(node.getConcept());
  }
  @Override
  public long getParent(long nodeId) {
    CLNode node = resolveElement(nodeId);
    return node.getData().getParentId();
  }
  @Override
  public String getProperty(long nodeId, String role) {
    CLNode node = resolveElement(nodeId);
    return node.getData().getPropertyValue(role);
  }
  @Override
  public Iterable<String> getPropertyRoles(long sourceId) {
    CLNode node = resolveElement(sourceId);
    return Arrays.asList(node.getData().getPropertyRoles());
  }
  @Override
  public Iterable<String> getReferenceRoles(long sourceId) {
    CLNode node = resolveElement(sourceId);
    return Arrays.asList(node.getData().getReferenceRoles());
  }
  @Override
  public INodeReference getReferenceTarget(long sourceId, String role) {
    CLNode node = resolveElement(sourceId);
    CPElementRef targetRef = node.getData().getReferenceTarget(role);
    if (targetRef == null) {
      return null;
    } else if (targetRef.isLocal()) {
      return new PNodeReference(targetRef.getElementId());
//    } else if (targetRef instanceof CPElementRef.MpsRef) {
//      return new SNodeReferenceAdapter(SNodePointer.deserialize(((CPElementRef.MpsRef) targetRef).getSerializedRef()));
    } else {
      throw new UnsupportedOperationException("Unsupported reference: " + targetRef);
    }
  }
  @Override
  public String getRole(long nodeId) {
    CLNode node = resolveElement(nodeId);
    return node.getRoleInParent();
  }
  @Override
  public ITree moveChild(long targetParentId, String targetRole, int targetIndex, long childId) {
    if (targetIndex != -1) {
      long oldParent = getParent(childId);
      if (oldParent == targetParentId) {
        String oldRole = getRole(childId);
        if (Objects.equals(oldRole, targetRole)) {
          int oldIndex = StreamUtils.INSTANCE.indexOf(getChildren(oldParent, oldRole), childId);
          if (oldIndex == targetIndex) {
            return this;
          }
          if (oldIndex < targetIndex) {
            targetIndex--;
          }
        }
      }
    }

    return deleteNode(childId, false).addChild(targetParentId, targetRole, targetIndex, childId);
  }
  @Override
  public void visitChanges(final ITree oldVersion, final ITreeChangeVisitor visitor) {
    getNodesMap().visitChanges(((CLTree) oldVersion).getNodesMap(), new CLHamtNode.IChangeVisitor() {
      public void entryAdded(long key, String value) {
        CLNode element = createElement(value);
        visitor.nodeAdded(element.getId());
      }
      public void entryRemoved(long key, String value) {
        CLNode element = ((CLTree) oldVersion).createElement(value);
        visitor.nodeRemoved(element.getId());
      }
      public void entryChanged(long key, String oldHash, String newHash) {
        CLNode oldElement = ((CLTree) oldVersion).createElement(oldHash);
        CLNode newElement = createElement(newHash);
        if (oldElement.getClass() != newElement.getClass()) {
          throw new RuntimeException("Unsupported type change of element " + key + "from " + oldElement.getClass().getSimpleName() + " to " + newElement.getClass().getSimpleName());
        }

        CLNode oldNode = (CLNode) oldElement;
        CLNode newNode = (CLNode) newElement;

        Stream.concat(
                Arrays.stream(oldNode.getData().getPropertyRoles()),
                Arrays.stream(newNode.getData().getPropertyRoles()))
                .distinct()
                .forEach(role -> {
          if (!(Objects.equals(oldNode.getData().getPropertyValue(role), newNode.getData().getPropertyValue(role)))) {
            visitor.propertyChanged(newNode.getId(), role);
          }
        });

        final ListMultimap<String, CLNode> oldChildren = MultimapBuilder.hashKeys().arrayListValues().build();
        final ListMultimap<String, CLNode> newChildren = MultimapBuilder.hashKeys().arrayListValues().build();
        oldNode.getChildren(new BulkQuery(store)).execute().forEach(it -> oldChildren.put(it.getRoleInParent(), it));
        newNode.getChildren(new BulkQuery(store)).execute().forEach(it -> newChildren.put(it.getRoleInParent(), it));

        Set<String> roles = new HashSet<>();
        roles.addAll(oldChildren.keySet());
        roles.addAll(newChildren.keySet());
        for (String role : roles) {
          List<CLNode> oldChildrenInRole = oldChildren.get(role);
          List<CLNode> newChildrenInRole = newChildren.get(role);
          List<Long> oldValues = oldChildrenInRole.stream().map(CLNode::getId).collect(Collectors.toList());
          List<Long> newValues = newChildrenInRole.stream().map(CLNode::getId).collect(Collectors.toList());
          if (!(Objects.equals(oldValues, newValues))) {
            visitor.childrenChanged(newNode.getId(), role);
          }
        }

      }
    });
  }

  protected CLHamtNode deleteElements(CPElement element, CLHamtNode idToHash) {
    CLHamtNode newIdToHash = idToHash;
    if (element instanceof CPNode) {
      for (long childId : ((CPNode) element).getChildrenIds()) {
        String childHash = idToHash.get(childId);
        CPElement child = store.get(childHash, CPElement::deserialize);
        newIdToHash = deleteElements(child, newIdToHash);
      }
    }

    newIdToHash = newIdToHash.remove(element.getId());

    return newIdToHash;
  }

  public CLNode resolveElement(CLElementRef ref) {
    if (ref == null) {
      return null;
    }
    long id = ref.getId();
    return resolveElement(id);
  }

  public CLNode resolveElement(CPElementRef ref) {
    if (ref == null) {
      return null;
    }
    if (ref.isGLobal() && !(ref.getTreeId().equals(this.data.id))) {
      throw new RuntimeException("Cannot resolve " + ref + " in tree " + this.data.id);
    }
    if (ref.isLocal()) {
      return resolveElement(ref.getElementId());
    }
    throw new RuntimeException("Unsupported reference type: " + ref);
  }

  public CLNode resolveElement(long id) {
    if (id == 0) {
      return null;
    }
    String hash = getNodesMap().get(id);
    if (hash == null) {
      throw new RuntimeException("Element doesn't exist: " + id);
    }
    return createElement(hash, new NonBulkQuery(store)).execute();
  }

  public IBulkQuery.Value<List<CLNode>> resolveElements(Iterable<Long> ids, final IBulkQuery bulkQuery) {
    IBulkQuery.Value<List<String>> a = getNodesMap().getAll(ids, bulkQuery);
    return a.mapBulk(hashes -> createElements(hashes, bulkQuery));
  }

  public IBulkQuery.Value<CLNode> createElement(final String hash, IBulkQuery query) {
    if (hash == null) {
      return query.<CLNode>constant(null);
    }
    return query.get(hash, s -> {
      if (s == null) {
        throw new RuntimeException("Element doesn't exist: " + hash);
      }
      return CPNode.deserialize(s);
    }).map(n -> CLNode.create(CLTree.this, n));
  }

  public CLNode createElement(String hash) {
    return createElement(hash, new NonBulkQuery(store)).execute();
  }

  public IBulkQuery.Value<List<CLNode>> createElements(List<String> hashes, final IBulkQuery bulkQuery) {
    return bulkQuery.map(hashes, hash -> bulkQuery.get(hash, s -> {
      if (s == null) {
        throw new RuntimeException("Element doesn't exist: " + hash);
      }
      return CPNode.deserialize(s);
    }).map(n -> CLNode.create(CLTree.this, n)));
  }

  protected String serializeConcept(IConcept concept) {
//    if (concept == null) {
      return null;
//    }
//    return ((SAbstractConceptAdapter) ((SConceptAdapter) concept).getAdapted()).serialize();
  }

  protected IConcept deserializeConcept(String serialized) {
//    if (serialized == null) {
      return null;
//    }
//    return SConceptAdapter.wrap(SAbstractConceptAdapter.deserialize(serialized));
  }
}
