package org.modelix.model.api;

import org.jetbrains.annotations.Nullable;

import java.util.Objects;
import java.util.stream.Stream;

public class PNodeAdapter implements INode {
  public static INode wrap(long id, IBranch branch) {
    return (id == 0 ? null : new PNodeAdapter(id, branch));
  }

  private IBranch branch;
  private long nodeId;

  public PNodeAdapter(long nodeId, IBranch branch) {
    this.nodeId = nodeId;
    this.branch = branch;
    notifyAccess();
  }

  public IBranch getBranch() {
    return branch;
  }

  public long getNodeId() {
    return nodeId;
  }

  public INode wrap(long id) {
    return wrap(id, branch);
  }

  protected long unwrap(INode node) {
    if (node == null) {
      return 0;
    }
    if (!((node instanceof PNodeAdapter))) {
      throw new RuntimeException("Not a " + PNodeAdapter.class.getSimpleName() + ": " + node);
    }
    PNodeAdapter adapter = ((PNodeAdapter) node);
    if (!(Objects.equals(adapter.branch, branch))) {
      throw new RuntimeException("Node belongs to a different branch. Expected " + branch + " but was " + adapter.branch);
    }
    return adapter.nodeId;
  }

  protected void notifyAccess() {
//    DependencyBroadcaster.INSTANCE.dependencyAccessed(new PNodeDependency(branch, nodeId));
  }

  @Override
  public void addChild(String role, int index, INode node) {
    throw new UnsupportedOperationException("Not implemented");
  }
  @Override
  public INode addNewChild(String role, int index, @Nullable IConcept concept) {
    return wrap(branch.getWriteTransaction().addNewChild(nodeId, role, index, concept));
  }
  @Override
  public Stream<INode> getAllChildren() {
    notifyAccess();
    return branch.getTransaction().getAllChildren(nodeId).mapToObj(this::wrap);
  }
  @Override
  public Stream<INode> getChildren(String role) {
    notifyAccess();
    return branch.getTransaction().getChildren(nodeId, role).mapToObj(this::wrap);
  }
  @Override
  public IConcept getConcept() {
    notifyAccess();
    return branch.computeRead(() -> branch.getTransaction().getConcept(nodeId));
  }
  @Override
  public INode getParent() {
    notifyAccess();
    long parent = branch.getTransaction().getParent(nodeId);
    if (parent == 0 || parent == ITree.ROOT_ID) {
      return null;
    }
    return wrap(parent);
  }
  @Override
  public String getPropertyValue(String role) {
    notifyAccess();
    return branch.getTransaction().getProperty(nodeId, role);
  }
  @Override
  public INodeReference getReference() {
    return new PNodeReference(nodeId);
  }
  @Override
  public INode getReferenceTarget(String role) {
    notifyAccess();
    INodeReference targetRef = branch.getTransaction().getReferenceTarget(nodeId, role);
    if (targetRef instanceof PNodeReference) {
      return targetRef.resolveNode(new PNodeResolveContext(branch));
    }
    INodeResolveContext context = INodeResolveContext.CONTEXT_VALUE.getValue();
    if (context == null) {
      throw new RuntimeException(INodeResolveContext.class.getSimpleName() + " not available");
    }
    return (targetRef == null ? null : targetRef.resolveNode(context));

  }
  @Override
  public String getRoleInParent() {
    notifyAccess();
    return branch.getTransaction().getRole(nodeId);
  }
  @Override
  public boolean isValid() {
    notifyAccess();
    return branch.getTransaction().containsNode(nodeId);
  }
  @Override
  public void removeChild(INode child) {
    branch.getWriteTransaction().deleteNode(unwrap(child));
  }
  @Override
  public void setPropertyValue(String role, String value) {
    branch.getWriteTransaction().setProperty(nodeId, role, value);
  }
  @Override
  public void setReferenceTarget(String role, INode target) {
    branch.getWriteTransaction().setReferenceTarget(nodeId, role, (target == null ? null : target.getReference()));
  }
  public void setReferenceTarget(String role, INodeReference target) {
    branch.getWriteTransaction().setReferenceTarget(nodeId, role, target);
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    PNodeAdapter that = (PNodeAdapter) o;
    if ((branch != null ? !(branch.equals(that.branch)) : that.branch != null)) {
      return false;
    }
    if (nodeId != that.nodeId) {
      return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + ((branch != null ? ((Object) branch).hashCode() : 0));
    result = 31 * result + (int) (nodeId ^ (nodeId >> 32));
    return result;
  }

  @Override
  public String toString() {
    IConcept concept = null;
    try {
      concept = branch.computeRead(() -> branch.getTransaction().getConcept(nodeId));
    } catch (Exception ex) {
    }
    String str = "PNode" + nodeId;
    if (concept != null) {
      str += "[" + concept + "]";
    }
    return str;
  }
}
