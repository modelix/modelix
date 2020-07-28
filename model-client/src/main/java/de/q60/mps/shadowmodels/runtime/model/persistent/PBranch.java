package de.q60.mps.shadowmodels.runtime.model.persistent;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import de.q60.mps.incremental.util.ContextValue;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import de.q60.mps.shadowmodels.runtime.util.pmap.COWArrays;
import org.apache.log4j.Level;

public class PBranch implements IBranch {
  private static final Logger LOG = LogManager.getLogger(PBranch.class);
  private volatile ITree tree;

  private final Object writeLock = new Object();
  private final ContextValue<Transaction> contextTransactions = new ContextValue<Transaction>();
  private IBranchListener[] listeners = new IBranchListener[0];
  @Nullable
  private final INodeLoader nodeLoader;
  private IIdGenerator idGenerator;

  public PBranch() {
    this(PTree.EMPTY, null, DefaultIdGenerator.getInstance());
  }

  public PBranch(ITree initialTree) {
    this(initialTree, null, DefaultIdGenerator.getInstance());
  }

  public PBranch(ITree initialTree, IIdGenerator idGenerator) {
    this(initialTree, null, idGenerator);
  }

  public PBranch(INodeLoader nodeLoader) {
    this(PTree.EMPTY, nodeLoader, DefaultIdGenerator.getInstance());
  }

  public PBranch(ITree initialTree, INodeLoader nodeLoader) {
    this(initialTree, nodeLoader, DefaultIdGenerator.getInstance());
  }

  public PBranch(ITree initialTree, INodeLoader nodeLoader, IIdGenerator idGenerator) {
    this.tree = initialTree;
    this.nodeLoader = nodeLoader;
    this.idGenerator = idGenerator;
  }


  public INodeLoader getNodeLoader() {
    return nodeLoader;
  }

  public void runWithTransaction(ITransaction transaction, _FunctionTypes._void_P0_E0 runnable) {
    contextTransactions.runWith((Transaction) transaction, runnable);
  }

  @Override
  public void runRead(_FunctionTypes._void_P0_E0 runnable) {
    Transaction prevTransaction = contextTransactions.getValue();
    if (prevTransaction instanceof IReadTransaction) {
      runnable.invoke();
    } else {
      int timeout = 100;
      while (true) {
        if (timeout-- == 0) {
          throw new RuntimeException("Too many lazy nodes");
        }
        ITree currentTree = (prevTransaction == null ? this.tree : prevTransaction.getTree());
        ReadTransaction t = new ReadTransaction(currentTree, this);
        try {
          contextTransactions.runWith(t, runnable);
        } catch (RuntimeException ex) {
          if (Sequence.fromIterable(t.getMissingNodes()).isEmpty()) {
            throw ex;
          } else {
            // Exception may be caused by missing nodes and may go away after loading them. Ignore it. 
            if (LOG.isDebugEnabled()) {
              LOG.debug("Exception possibly caused by an incomplete model", ex);
            }
          }
        }
        if (Sequence.fromIterable(t.getMissingNodes()).isEmpty()) {
          break;
        } else {
          if (nodeLoader == null) {
            throw new RuntimeException("Tree contains lazy nodes but no node loader is specified");
          } else {
            for (final IMissingNode missingNode : Sequence.fromIterable(t.getMissingNodes())) {
              nodeLoader.runRead(new _FunctionTypes._void_P0_E0() {
                public void invoke() {
                  runWrite(new _FunctionTypes._void_P0_E0() {
                    public void invoke() {
                      nodeLoader.loadNode(missingNode, getWriteTransaction());
                    }
                  });
                }
              });
            }
          }
        }
      }
    }
  }

  @Override
  public void runWrite(_FunctionTypes._void_P0_E0 runnable) {
    synchronized (writeLock) {
      Transaction prevTransaction = contextTransactions.getValue();
      if (prevTransaction instanceof ReadTransaction) {
        throw new IllegalStateException("Cannot run write from read");
      }

      WriteTransaction prevWrite = (WriteTransaction) prevTransaction;

      final ITree oldTree = (prevWrite == null ? tree : prevWrite.getTree());
      WriteTransaction newWrite = (nodeLoader == null ? new WriteTransaction(oldTree, this, idGenerator) : new LazyLoadingWriteTransaction(oldTree, this, idGenerator));
      try {
        try {
          contextTransactions.runWith(newWrite, runnable);
        } catch (NodeNotLoadedException ex) {
          throw new RuntimeException("Should not happend. NodeLoader: " + nodeLoader, ex);
        }
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
  public <T> T computeRead(final _FunctionTypes._return_P0_E0<? extends T> computable) {
    final Wrappers._T<T> result = new Wrappers._T<T>(null);
    runRead(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        result.value = computable.invoke();
      }
    });
    return result.value;
  }

  @Override
  public <T> T computeWrite(final _FunctionTypes._return_P0_E0<? extends T> computable) {
    final Wrappers._T<T> result = new Wrappers._T<T>(null);
    runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        result.value = computable.invoke();
      }
    });
    return result.value;
  }

  @Override
  public boolean canRead() {
    return contextTransactions.getValue() instanceof ITransaction;
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
