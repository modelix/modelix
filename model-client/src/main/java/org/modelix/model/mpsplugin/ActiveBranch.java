package org.modelix.model.mpsplugin;

import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.modelix.model.lazy.CLVersion;
import org.modelix.model.lazy.TreeId;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Supplier;

public class ActiveBranch implements IIndirectBranch {
  private static final Logger LOG = LogManager.getLogger(ActiveBranch.class);
  public static final String DEFAULT_BRANCH_NAME = "master";

  private IModelClient client;
  private TreeId tree;
  private String branchName;
  private Supplier<String> user;
  private ReplicatedTree replicatedTree;
  private ITree lastKnownTree = null;
  private IBranchListener forwardingListener = (oldTree, newTree) -> notifyListeners(newTree);
  private List<IBranchListener> listeners = new ArrayList<>();

  public ActiveBranch(IModelClient client, TreeId tree, String branchName, Supplier<String> user) {
    if ((branchName == null || branchName.length() == 0)) {
      branchName = DEFAULT_BRANCH_NAME;
    }
    this.client = client;
    this.tree = tree;
    this.branchName = branchName;
    this.user = user;
    replicatedTree = new ReplicatedTree(client, tree, branchName, user);
    lastKnownTree = replicatedTree.getBranch().computeRead(() -> replicatedTree.getBranch().getTransaction().getTree());
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
    List<IBranchListener> newListeners = new ArrayList<>(listeners);
    newListeners.add(l);
    listeners = newListeners;
  }

  public void removeListener(IBranchListener l) {
    List<IBranchListener> newListeners = new ArrayList<>(listeners);
    newListeners.remove(l);
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
    ITree newTree = b.computeRead(() -> b.getTransaction().getTree());
    notifyListeners(newTree);
  }

  protected void notifyListeners(ITree newTree) {
    ITree oldTree = lastKnownTree;
    lastKnownTree = newTree;
    for (IBranchListener l : listeners) {
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
