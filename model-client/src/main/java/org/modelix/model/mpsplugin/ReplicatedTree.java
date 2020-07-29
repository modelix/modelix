package org.modelix.model.mpsplugin;

import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.PBranch;
import io.vavr.Tuple2;
import org.apache.commons.lang3.mutable.MutableObject;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.modelix.model.VersionMerger;
import org.modelix.model.lazy.CLTree;
import org.modelix.model.lazy.CLVersion;
import org.modelix.model.lazy.TreeId;
import org.modelix.model.operations.IAppliedOperation;
import org.modelix.model.operations.IOperation;
import org.modelix.model.operations.OTBranch;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

public class ReplicatedTree {
  private static final Logger LOG = LogManager.getLogger(ReplicatedTree.class);

  private IModelClient client;
  private TreeId treeId;
  private String branchName;
  private Supplier<String> user;
  private IBranch localBranch;
  private OTBranch localOTBranch;

  private final Object mergeLock = new Object();
  private VersionMerger merger;
  private volatile CLVersion localVersion;
  private volatile CLVersion remoteVersion;

  private VersionChangeDetector versionChangeDetector;
  private final AtomicBoolean isEditing = new AtomicBoolean(false);
  private boolean disposed = false;
  private int divergenceTime = 0;
  private ScheduledFuture<?> convergenceWatchdog;

  public ReplicatedTree(final IModelClient client, final TreeId treeId, @NotNull final String branchName, Supplier<String> user) {
    this.client = client;
    this.treeId = treeId;
    this.branchName = branchName;
    this.user = user;

    String versionHash = client.get(treeId.getBranchKey(branchName));
    CLVersion initialVersion = CLVersion.loadFromHash(versionHash, client.getStoreCache());
    final MutableObject<CLTree> initialTree = new MutableObject<>();
    if (initialVersion == null) {
      initialTree.setValue(new CLTree(treeId, client.getStoreCache()));
      initialVersion = createVersion(initialTree.getValue(), new IOperation[0], null);
      client.put(treeId.getBranchKey(this.branchName), initialVersion.getHash());
    } else {
      initialTree.setValue(new CLTree(initialVersion.getTreeHash(), client.getStoreCache()));
    }

    // prefetch to avoid HTTP request in command listener 
    SharedExecutors.FIXED.execute(() -> initialTree.getValue().getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE));

    localVersion = initialVersion;
    remoteVersion = initialVersion;

    localBranch = new PBranch(initialTree.getValue());
    localOTBranch = new OTBranch(localBranch, client.getIdGenerator());
    merger = new VersionMerger(client.getStoreCache(), client.getIdGenerator());
    versionChangeDetector = new VersionChangeDetector(client, treeId.getBranchKey(this.branchName)) {
      @Override
      protected void processVersionChange(String oldVersionHash, String newVersionHash) {
        if (disposed) {
          return;
        }
        if ((newVersionHash == null || newVersionHash.length() == 0)) {
          return;
        }
        if (Objects.equals(newVersionHash, getHash(remoteVersion))) {
          return;
        }
        final CLVersion newRemoteVersion = CLVersion.loadFromHash(newVersionHash, client.getStoreCache());
        if (newRemoteVersion == null) {
          return;
        }

        final MutableObject<CLVersion> localBase = new MutableObject<>();
        synchronized (mergeLock) {
          localBase.setValue(localVersion);
          remoteVersion = newRemoteVersion;
        }

        Supplier<Boolean> doMerge = () -> {
          CLVersion mergedVersion;
          try {
            mergedVersion = merger.mergeChange(localBase.getValue(), newRemoteVersion);
            if (LOG.isDebugEnabled()) {
              LOG.debug(String.format("Merged remote %s with local %s -> %s",
                      newRemoteVersion.getHash(),
                      localBase.getValue().getHash(),
                      mergedVersion.getHash()));
            }
          } catch (Exception ex) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("", ex);
            }
            mergedVersion = newRemoteVersion;
          }
          CLTree mergedTree = mergedVersion.getTree();
          synchronized (mergeLock) {
            remoteVersion = mergedVersion;
            if (localVersion == localBase.getValue()) {
              writeLocalVersion(mergedVersion);
              writeRemoteVersion(mergedVersion);
              return true;
            } else {
              localBase.setValue(localVersion);
              return false;
            }
          }
        };

        // Avoid locking during the merge as it may require communication with the model server 
        for (int mergeAttempt = 0; mergeAttempt < 3; mergeAttempt++) {
          if (doMerge.get()) {
            return;
          }
        }
        synchronized (mergeLock) {
          localBase.setValue(localVersion);
          doMerge.get();
        }
      }
    };

    localOTBranch.addListener(new IBranchListener() {
      @Override
      public void treeChanged(ITree oldTree, ITree newTree) {
        if (disposed) {
          return;
        }
        if (isEditing.get()) {
          return;
        }
        SharedExecutors.FIXED.execute(() -> {
          if (isEditing.get()) {
            return;
          }
          createAndMergeLocalVersion();
        });
      }
    });

    convergenceWatchdog = SharedExecutors.fixDelay(1000, new Runnable() {
      public void run() {
        String localHash = localVersion == null ? null : localVersion.getHash();
        String remoteHash = remoteVersion == null ? null : remoteVersion.getHash();
        if (Objects.equals(localHash, remoteHash)) {
          divergenceTime = 0;
        } else {
          divergenceTime++;
        }
        if (divergenceTime > 5) {
          synchronized (mergeLock) {
            divergenceTime = 0;
          }
        }
      }
    });
  }

  public IBranch getBranch() {
    checkDisposed();
    return localOTBranch;
  }

  public CLVersion getVersion() {
    return localVersion;
  }

  /**
   * Call this at the beginning of an edit operation in the editor
   */
  public void startEdit() {
    isEditing.set(true);
  }

  /**
   * Call this at the end of an edit operation in the editor
   */
  public void endEdit() {
    if (disposed) return;
    try {
      synchronized (mergeLock) {
        deleteDetachedNodes();
        createAndMergeLocalVersion();
      }
    } finally {
      isEditing.set(false);
    }
  }

  protected void deleteDetachedNodes() {
    boolean hasDetachedNodes = localOTBranch.computeRead(() -> localOTBranch.getTransaction()
            .getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE).iterator().hasNext());
    // avoid unnecessary write
    if (hasDetachedNodes) {
      localOTBranch.runWrite(() -> {
        // clear detached nodes
        IWriteTransaction t = localOTBranch.getWriteTransaction();
        t.getChildren(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE).forEach(t::deleteNode);
      });
    }
  }

  protected void createAndMergeLocalVersion() {
    checkDisposed();

    Tuple2<List<IAppliedOperation>, ITree> opsAndTree;
    CLVersion localBase;
    final MutableObject<CLVersion> remoteBase = new MutableObject<>();
    final MutableObject<CLVersion> newLocalVersion = new MutableObject<>();
    synchronized (mergeLock) {
      opsAndTree = localOTBranch.getOperationsAndTree();
      localBase = localVersion;
      remoteBase.setValue(remoteVersion);
      IOperation[] ops = opsAndTree._1().stream().map(IAppliedOperation::getOriginalOp).toArray(IOperation[]::new);
      if (ops.length == 0) {
        return;
      }
      newLocalVersion.setValue(createVersion((CLTree) opsAndTree._2(), ops, localBase.getHash()));
      localVersion = newLocalVersion.getValue();
      divergenceTime = 0;
    }

    SharedExecutors.FIXED.execute(new Runnable() {
      public void run() {
        Supplier<Boolean> doMerge = () -> {
          CLVersion mergedVersion;
          try {
            mergedVersion = merger.mergeChange(remoteBase.getValue(), newLocalVersion.getValue());
            if (LOG.isDebugEnabled()) {
              LOG.debug(String.format("Merged local %s with remote %s -> %s",
                      newLocalVersion.getValue().getHash(),
                      remoteBase.getValue().getHash(),
                      mergedVersion.getHash()));
            }
          } catch (Exception ex) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("", ex);
            }
            mergedVersion = newLocalVersion.getValue();
          }

          synchronized (mergeLock) {
            writeLocalVersion(localVersion);
            if (remoteVersion == remoteBase.getValue()) {
              writeRemoteVersion(mergedVersion);
              return true;
            } else {
              remoteBase.setValue(remoteVersion);
              return false;
            }
          }
        };

        // Avoid locking during the merge as it may require communication with the model server 
        for (int mergeAttempt = 0; mergeAttempt < 3; mergeAttempt++) {
          if (doMerge.get()) {
            return;
          }
        }
        synchronized (mergeLock) {
          remoteBase.setValue(remoteVersion);
          doMerge.get();
        }
      }
    });
  }

  protected void writeRemoteVersion(CLVersion version) {
    synchronized (mergeLock) {
      if (!(Objects.equals(remoteVersion.getHash(), version.getHash()))) {
        remoteVersion = version;
        client.getAsyncStore().put(treeId.getBranchKey(branchName), version.getHash());
      }
    }
  }

  protected void writeLocalVersion(final CLVersion version) {
    synchronized (mergeLock) {
      if (!(Objects.equals(localVersion.getHash(), version.getHash()))) {
        localVersion = version;
        divergenceTime = 0;
        localBranch.runWrite(() -> {
          CLTree newTree = version.getTree();
          CLTree currentTree = (CLTree) localBranch.getTransaction().getTree();
          if (!(Objects.equals(getHash(newTree), getHash(currentTree)))) {
            localBranch.getWriteTransaction().setTree(newTree);
          }
        });
      }
    }
  }

  public CLVersion createVersion(CLTree tree, IOperation[] operations, String previousVersion) {
    checkDisposed();
    String time = LocalDateTime.now().toString();
    return new CLVersion(client.getIdGenerator().generate(), time, user.get(), tree.getHash(), previousVersion, operations, client.getStoreCache());
  }

  public void dispose() {
    checkDisposed();
    disposed = true;
    versionChangeDetector.dispose();
    convergenceWatchdog.cancel(false);
  }

  public void checkDisposed() {
    if (disposed) {
      throw new RuntimeException("Already disposed");
    }
  }

  private static String getHash(CLVersion v) {
    return v == null ? null : v.getHash();
  }

  private static String getHash(CLTree v) {
    return v == null ? null : v.getHash();
  }
}
