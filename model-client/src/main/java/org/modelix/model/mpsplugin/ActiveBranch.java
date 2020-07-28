package org.modelix.model.mpsplugin;



import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.modelix.model.lazy.TreeId;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import org.modelix.model.lazy.CLVersion;
import java.util.Objects;
import org.apache.log4j.Level;

public class ActiveBranch implements IIndirectBranch {
  private static final Logger LOG = LogManager.getLogger(ActiveBranch.class);
  public static final String DEFAULT_BRANCH_NAME = "master";

  private IModelClient client;
  private TreeId tree;
  private String branchName;
  private _FunctionTypes._return_P0_E0<? extends String> user;
  private ReplicatedTree replicatedTree;
  private ITree lastKnownTree = null;
  private IBranchListener forwardingListener = new IBranchListener() {
    @Override
    public void treeChanged(ITree oldTree, ITree newTree) {
      notifyListeners(newTree);
    }
  };
  private List<IBranchListener> listeners = ListSequence.fromList(new ArrayList<IBranchListener>());

  public ActiveBranch(IModelClient client, TreeId tree, String branchName, _FunctionTypes._return_P0_E0<? extends String> user) {
    if ((branchName == null || branchName.length() == 0)) {
      branchName = DEFAULT_BRANCH_NAME;
    }
    this.client = client;
    this.tree = tree;
    this.branchName = branchName;
    this.user = user;
    replicatedTree = new ReplicatedTree(client, tree, branchName, user);
    lastKnownTree = replicatedTree.getBranch().computeRead(new _FunctionTypes._return_P0_E0<ITree>() {
      public ITree invoke() {
        return replicatedTree.getBranch().getTransaction().getTree();
      }
    });
    replicatedTree.getBranch().addListener(forwardingListener);
  }

  public synchronized IBranch getBranch() {
    return replicatedTree.getBranch();
  }

  public CLVersion getVersion() {
    return replicatedTree.getVersion();
  }

  public String getBranchName() {
    return this.branchName;
  }

  public void dispose() {
    replicatedTree.getBranch().removeListener(forwardingListener);
    replicatedTree.dispose();
    replicatedTree = null;
  }

  public void addListener(IBranchListener l) {
    List<IBranchListener> newListeners = ListSequence.fromListWithValues(new ArrayList<IBranchListener>(), listeners);
    ListSequence.fromList(newListeners).addElement(l);
    listeners = newListeners;
  }

  public void removeListener(IBranchListener l) {
    List<IBranchListener> newListeners = ListSequence.fromListWithValues(new ArrayList<IBranchListener>(), listeners);
    ListSequence.fromList(newListeners).removeElement(l);
    listeners = newListeners;
  }

  public synchronized void switchBranch(String name) {
    if (Objects.equals(branchName, name)) {
      return;
    }
    branchName = name;
    replicatedTree.getBranch().removeListener(forwardingListener);
    replicatedTree.dispose();
    replicatedTree = new ReplicatedTree(client, tree, branchName, user);
    replicatedTree.getBranch().addListener(forwardingListener);
    final IBranch b = replicatedTree.getBranch();
    ITree newTree = b.computeRead(new _FunctionTypes._return_P0_E0<ITree>() {
      public ITree invoke() {
        return b.getTransaction().getTree();
      }
    });
    notifyListeners(newTree);
  }

  protected void notifyListeners(ITree newTree) {
    ITree oldTree = lastKnownTree;
    lastKnownTree = newTree;
    for (IBranchListener l : ListSequence.fromList(listeners)) {
      try {
        l.treeChanged(oldTree, newTree);
      } catch (Exception ex) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("", ex);
        }
      }
    }
  }
}
