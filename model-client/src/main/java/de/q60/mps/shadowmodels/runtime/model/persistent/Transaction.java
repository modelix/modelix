package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;

import java.util.stream.LongStream;

public abstract class Transaction implements ITransaction {
  protected final IBranch branch;

  public Transaction(IBranch branch) {
    this.branch = branch;
  }

  @Override
  public IBranch getBranch() {
    return branch;
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
  public INodeReference getReferenceTarget(long sourceId, String role) {
    return getTree().getReferenceTarget(sourceId, role);
  }

  @Override
  public LongStream getChildren(long parentId, String role) {
    return getTree().getChildren(parentId, role);
  }

  @Override
  public LongStream getAllChildren(long parentId) {
    return getTree().getAllChildren(parentId);
  }
}
