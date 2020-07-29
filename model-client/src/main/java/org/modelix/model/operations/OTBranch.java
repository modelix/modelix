package org.modelix.model.operations;

import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import de.q60.mps.shadowmodels.runtime.model.persistent.IIdGenerator;
import de.q60.mps.shadowmodels.runtime.model.persistent.IReadTransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import io.vavr.Tuple;
import io.vavr.Tuple2;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class OTBranch implements IBranch {

  private IBranch branch;
  private IIdGenerator idGenerator;
  private List<IAppliedOperation> operations = new ArrayList<>();
  private final Object operationsLock = new Object();

  public OTBranch(IBranch branch, IIdGenerator idGenerator) {
    this.branch = branch;
    this.idGenerator = idGenerator;
  }

  public void operationApplied(IAppliedOperation op) {
    synchronized (operationsLock) {
      operations.add(op);
    }
  }

  public List<IAppliedOperation> getNewOperations() {
    synchronized (operationsLock) {
      List<IAppliedOperation> result = operations;
      operations = new ArrayList<IAppliedOperation>();
      return result;
    }
  }

  public Tuple2<List<IAppliedOperation>, ITree> getOperationsAndTree() {
    synchronized (operationsLock) {
      return Tuple.of(getNewOperations(), computeRead(() -> getTransaction().getTree()));
    }
  }

  @Override
  public void addListener(IBranchListener l) {
    branch.addListener(l);
  }
  @Override
  public void removeListener(IBranchListener l) {
    branch.removeListener(l);
  }
  @Override
  public boolean canRead() {
    return branch.canRead();
  }
  @Override
  public boolean canWrite() {
    return branch.canWrite();
  }
  @Override
  public <T> T computeRead(Supplier<T> computable) {
    checkNotEDT();
    return branch.computeRead(computable);
  }
  @Override
  public <T> T computeWrite(Supplier<T> computable) {
    checkNotEDT();
    return branch.computeWrite(computable);
  }
  @Override
  public IReadTransaction getReadTransaction() {
    return branch.getReadTransaction();
  }
  @Override
  public ITransaction getTransaction() {
    return wrap(branch.getTransaction());
  }
  @Override
  public IWriteTransaction getWriteTransaction() {
    return wrap(branch.getWriteTransaction());
  }
  @Override
  public void runRead(Runnable runnable) {
    checkNotEDT();
    branch.runRead(runnable);
  }
  @Override
  public void runWrite(Runnable runnable) {
    checkNotEDT();
    branch.runWrite(runnable);
  }

  public ITransaction wrap(ITransaction t) {
    return (t instanceof IWriteTransaction ? wrap((IWriteTransaction) t) : t);
  }

  public IWriteTransaction wrap(IWriteTransaction t) {
    return new OTWriteTransaction(t, this, idGenerator);
  }

  protected void checkNotEDT() {
  }

}
