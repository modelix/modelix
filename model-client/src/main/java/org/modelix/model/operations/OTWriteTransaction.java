package org.modelix.model.operations;

import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.INode;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.modelix.StreamUtil;

import java.util.stream.LongStream;

public class OTWriteTransaction implements IWriteTransaction {
  private static final Logger LOG = LogManager.getLogger(OTWriteTransaction.class);

  private IWriteTransaction transaction;
  private OTBranch otBranch;
  protected IIdGenerator idGenerator;

  public OTWriteTransaction(IWriteTransaction transaction, OTBranch otBranch, IIdGenerator idGenerator) {
    this.otBranch = otBranch;
    this.transaction = transaction;
    this.idGenerator = idGenerator;
  }

  protected void apply(IOperation op) {
    if (LOG.isDebugEnabled()) {
      LOG.debug("apply: " + op);
    }
    IAppliedOperation appliedOp = op.apply(transaction);
    otBranch.operationApplied(appliedOp);
  }

  @Override
  public void moveChild(long newParentId, String newRole, int newIndex, long childId) {
    long oldparent = getParent(childId);
    String oldRole = getRole(childId);
    int oldIndex = StreamUtil.indexOf(getChildren(oldparent, oldRole), childId);
    if (newIndex == -1) {
      newIndex = (int) getChildren(newParentId, newRole).count();
    }
    apply(new MoveNodeOp(childId, oldparent, oldRole, oldIndex, newParentId, newRole, newIndex));
  }

  @Override
  public void setProperty(long nodeId, String role, String value) {
    apply(new SetPropertyOp(nodeId, role, value));
  }

  @Override
  public void setReferenceTarget(long sourceId, String role, INodeReference target) {
    apply(new SetReferenceOp(sourceId, role, target));
  }

  @Override
  public void addNewChild(long parentId, String role, int index, long childId, IConcept concept) {
    if (index == -1) {
      index = (int) getChildren(parentId, role).count();
    }
    apply(new AddNewChildOp(parentId, role, index, childId, concept));
  }

  @Override
  public void deleteNode(long nodeId) {
    long parent = getParent(nodeId);
    String role = getRole(nodeId);
    int index = StreamUtil.indexOf(getChildren(parent, role), nodeId);
    apply(new DeleteNodeOp(parent, role, index, nodeId));
  }

  @Override
  public long addNewChild(long parentId, String role, int index, IConcept concept) {
    long childId = idGenerator.generate();
    addNewChild(parentId, role, index, childId, concept);
    return childId;
  }
  @Override
  public boolean containsNode(long nodeId) {
    return transaction.containsNode(nodeId);
  }
  @Override
  public LongStream getAllChildren(long parentId) {
    return transaction.getAllChildren(parentId);
  }
  @Override
  public IBranch getBranch() {
    return otBranch;
  }
  @Override
  public LongStream getChildren(long parentId, String role) {
    return transaction.getChildren(parentId, role);
  }
  @Override
  public IConcept getConcept(long nodeId) {
    return transaction.getConcept(nodeId);
  }
  @Override
  public long getParent(long nodeId) {
    return transaction.getParent(nodeId);
  }
  @Override
  public String getProperty(long nodeId, String role) {
    return transaction.getProperty(nodeId, role);
  }
  @Override
  public INodeReference getReferenceTarget(long sourceId, String role) {
    return transaction.getReferenceTarget(sourceId, role);
  }
  @Override
  public String getRole(long nodeId) {
    return transaction.getRole(nodeId);
  }
  @Override
  public ITree getTree() {
    return transaction.getTree();
  }
  @Override
  public void setTree(ITree tree) {
    throw new UnsupportedOperationException();
  }

  protected INode wrap(INode node) {
    return (node instanceof PNodeAdapter ? new PNodeAdapter(((PNodeAdapter) node).getNodeId(), otBranch) : node);
  }
}
