package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.INode;

public abstract class Transaction implements ITransaction {
  protected final PBranch branch;

  public Transaction(PBranch branch) {
    this.branch = branch;
  }

  public abstract PTree getPTree();

  @Override
  public IBranch getBranch() {
    return branch;
  }

  @Override
  public void ensureLoaded(long nodeId) {
    if (!(getPTree().isLoaded(nodeId))) {
      throw new RuntimeException("Lazy loading not supported");
    }
  }

  @Override
  public boolean isLoaded(long nodeId) {
    if (!(getTree() instanceof PTree)) {
      return true;
    }
    return getPTree().isLoaded(nodeId);
  }

  @Override
  public ITree getTree() {
    return getPTree();
  }

  @Override
  public boolean containsNode(long nodeId) {
    return getTree().containsNode(nodeId);
  }

  @Override
  public IConcept getConcept(long nodeId) {
    return getTree().getConcept(nodeId);
  }

  @Override
  public long getParent(long nodeId) {
    return getTree().getParent(nodeId);
  }

  @Override
  public String getRole(long nodeId) {
    return getTree().getRole(nodeId);
  }

  @Override
  public String getProperty(long nodeId, String role) {
    return getTree().getProperty(nodeId, role);
  }

  @Override
  public Object getUserObject(long nodeId, Object key) {
    return getPTree().getUserObject(nodeId, key);
  }

  @Override
  public INodeReference getReferenceTarget(long sourceId, String role) {
    return getTree().getReferenceTarget(sourceId, role);
  }

  @Override
  public Iterable<Long> getChildren(long parentId, String role) {
    return getTree().getChildren(parentId, role);
  }

  @Override
  public Iterable<Long> getAllChildren(long parentId) {
    return getTree().getAllChildren(parentId);
  }

  @Override
  public void visitNodes(final _FunctionTypes._return_P1_E0<? extends Boolean, ? super INode> visitor) {
    getPTree().visitNodes(new _FunctionTypes._return_P2_E0<Boolean, Long, PTree.PNode>() {
      public Boolean invoke(Long id, PTree.PNode node) {
        return visitor.invoke(new PNodeAdapter(id, branch));
      }
    });
  }
}
