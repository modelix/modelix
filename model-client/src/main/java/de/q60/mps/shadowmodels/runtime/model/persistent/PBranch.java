package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.incremental.util.ContextValue;
import de.q60.mps.shadowmodels.runtime.util.pmap.COWArrays;
import org.apache.commons.lang3.mutable.MutableObject;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.Nullable;

import java.util.function.Supplier;

public class PBranch implements IBranch {
  private static final Logger LOG = LogManager.getLogger(PBranch.class);
  private volatile ITree tree;

  private final Object writeLock = new Object();
  private final ContextValue<Transaction> contextTransactions = new ContextValue<Transaction>();
  private IBranchListener[] listeners = new IBranchListener[0];
  @Nullable
  private IIdGenerator idGenerator;

  public PBranch(ITree initialTree) {
    this(initialTree, DefaultIdGenerator.getInstance());
  }

  public PBranch(ITree initialTree, @Nullable IIdGenerator idGenerator) {
    this.tree = initialTree;
    this.idGenerator = idGenerator;
  }

  public void runWithTransaction(ITransaction transaction, Runnable runnable) {
    contextTransactions.runWith((Transaction) transaction, runnable);
  }

  @Override
  public void runRead(Runnable runnable) {
    Transaction prevTransaction = contextTransactions.getValue();
    if (prevTransaction instanceof IReadTransaction) {
      runnable.run();
    } else {
      ITree currentTree = (prevTransaction == null ? this.tree : prevTransaction.getTree());
      ReadTransaction t = new ReadTransaction(currentTree, this);
      contextTransactions.runWith(t, runnable);
    }
  }

  @Override
  public void runWrite(Runnable runnable) {
    synchronized (writeLock) {
      Transaction prevTransaction = contextTransactions.getValue();
      if (prevTransaction instanceof ReadTransaction) {
        throw new IllegalStateException("Cannot run write from read");
      }

      WriteTransaction prevWrite = (WriteTransaction) prevTransaction;

      final ITree oldTree = (prevWrite == null ? tree : prevWrite.getTree());
      WriteTransaction newWrite = new WriteTransaction(oldTree, this, idGenerator);
      try {
        contextTransactions.runWith(newWrite, runnable);
        newWrite.close();
        ITree newTree = newWrite.getTree();
        if (prevWrite == null) {
          tree = newTree;
          notifyTreeChange(oldTree, newTree);
        } else {
          prevWrite.setTree(newTree);
        }
      } finally {
        newWrite.close();
      }
    }
  }

  @Override
  public <T> T computeRead(final Supplier<T> computable) {
    final MutableObject<T> result = new MutableObject<>();
    runRead(() -> result.setValue(computable.get()));
    return result.getValue();
  }

  @Override
  public <T> T computeWrite(final Supplier<T> computable) {
    final MutableObject<T> result = new MutableObject<>();
    runWrite(() -> result.setValue(computable.get()));
    return result.getValue();
  }

  @Override
  public boolean canRead() {
    return contextTransactions.getValue() != null;
  }

  @Override
  public boolean canWrite() {
    return contextTransactions.getValue() instanceof IWriteTransaction;
  }

  public Transaction getTransaction() {
    Transaction t = contextTransactions.getValue();
    if (t == null) {
      throw new IllegalStateException("Not in a transaction");
    }
    return t;
  }

  public ReadTransaction getReadTransaction() {
    Transaction transaction = getTransaction();
    if (!(transaction instanceof ReadTransaction)) {
      throw new IllegalStateException("Not in a read transaction");
    }
    return (ReadTransaction) transaction;
  }

  public WriteTransaction getWriteTransaction() {
    Transaction transaction = getTransaction();
    if (!(transaction instanceof WriteTransaction)) {
      throw new IllegalStateException("Not in a write transaction");
    }
    return (WriteTransaction) transaction;
  }

  @Override
  public void addListener(IBranchListener l) {
    listeners = COWArrays.addIfAbsent(listeners, l);
  }

  @Override
  public void removeListener(IBranchListener l) {
    listeners = COWArrays.remove(listeners, l);
  }

  protected void notifyTreeChange(ITree oldTree, ITree newTree) {
    if (oldTree == newTree) {
      return;
    }
    for (IBranchListener l : listeners) {
      try {
        l.treeChanged(oldTree, newTree);
      } catch (Exception ex) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("Exception in branch listener", ex);
        }
      }
    }
  }
}
