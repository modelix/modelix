package org.modelix.model.mpsplugin.plugin;

import org.modelix.model.mpsplugin.CloudRepositories;
import org.modelix.model.mpsplugin.CloudRepository;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import org.modelix.model.mpsplugin.ActiveBranch;
import java.util.List;
import org.modelix.model.lazy.TreeId;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.modelix.model.mpsplugin.SharedExecutors;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.IListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import de.q60.mps.shadowmodels.runtime.model.persistent.PTree;
import de.q60.mps.shadowmodels.runtime.smodel.NodeToSNodeAdapter;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import de.q60.mps.shadowmodels.runtime.smodel.SNodeToNodeAdapter;
import org.modelix.model.mpsplugin.TransientModuleBinding;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public class BindAllModulesToTransient implements CloudRepositories.IListener, CloudRepository.IListener, IBranchListener {

  private CloudRepositories repositories;
  private Set<CloudRepository> subscribedRepositories = SetSequence.fromSet(new HashSet<CloudRepository>());
  private Set<CloudRepository> subscribedInfoBranches = SetSequence.fromSet(new HashSet<CloudRepository>());
  private Set<ActiveBranch> subscribedActiveBranches = SetSequence.fromSet(new HashSet<ActiveBranch>());
  private volatile boolean requiresUpdate = false;
  private List<TreeId> fixedTreeIds;

  public BindAllModulesToTransient(CloudRepositories repositories) {
    this(repositories, null);
  }

  public BindAllModulesToTransient(CloudRepositories repositories, Iterable<TreeId> fixedTreeIds) {
    this.repositories = repositories;
    this.fixedTreeIds = (fixedTreeIds == null ? null : Sequence.fromIterable(fixedTreeIds).toListSequence());
    repositories.addListener(this);
    subscribeToRepositories();
    subscribeToInfoBranches();
    updateBindingsLater();
    SharedExecutors.fixDelay(500, new Runnable() {
      public void run() {
        if (requiresUpdate) {
          requiresUpdate = false;
          updateBindings();
        }
      }
    });
  }

  @Override
  public void repositoriesChanged() {
    subscribeToRepositories();
    subscribeToInfoBranches();
    updateBindingsLater();
  }

  protected void subscribeToRepositories() {
    for (CloudRepository repo : Sequence.fromIterable(repositories.getRepositories()).where(new IWhereFilter<CloudRepository>() {
      public boolean accept(CloudRepository it) {
        return !(SetSequence.fromSet(subscribedRepositories).contains(it));
      }
    })) {
      repo.addListener(this);
      SetSequence.fromSet(subscribedRepositories).addElement(repo);
    }
  }

  @Override
  public void connectionStatusChanged(boolean connected) {
    subscribeToInfoBranches();
    updateBindingsLater();
  }

  protected void subscribeToInfoBranches() {
    for (CloudRepository repo : SetSequence.fromSet(subscribedRepositories).subtract(SetSequence.fromSet(subscribedInfoBranches)).where(new IWhereFilter<CloudRepository>() {
      public boolean accept(CloudRepository it) {
        return it.isConnected();
      }
    })) {
      IBranch infoBranch = repo.getInfoBranch();
      infoBranch.addListener(this);
      SetSequence.fromSet(subscribedInfoBranches).addElement(repo);
    }
  }

  @Override
  public void treeChanged(ITree oldTree, ITree newTree) {
    updateBindingsLater();
  }

  public void updateBindingsLater() {
    requiresUpdate = true;
  }

  protected synchronized void updateBindings() {
    List<ActiveBranch> allActiveBranches = ListSequence.fromList(new ArrayList<ActiveBranch>());

    for (final CloudRepository repo : Sequence.fromIterable(repositories.getRepositories()).where(new IWhereFilter<CloudRepository>() {
      public boolean accept(CloudRepository it) {
        return it.isConnected();
      }
    })) {
      List<TreeId> trees;
      if (fixedTreeIds == null) {
        final SNode info = repo.getInfo();
        trees = repo.getInfoBranch().computeRead(new _FunctionTypes._return_P0_E0<IListSequence<TreeId>>() {
          public IListSequence<TreeId> invoke() {
            return ListSequence.fromList(SLinkOperations.getChildren(info, LINKS.trees$ECBY)).select(new ISelector<SNode, TreeId>() {
              public TreeId select(SNode it) {
                return new TreeId(SPropertyOperations.getString(it, PROPS.id$ECO6));
              }
            }).toListSequence();
          }
        });
      } else {
        trees = fixedTreeIds;
      }
      for (final TreeId treeId : ListSequence.fromList(trees)) {
        final ActiveBranch activeBranch = repo.getActiveBranch(treeId);
        ListSequence.fromList(allActiveBranches).addElement(activeBranch);
        activeBranch.getBranch().runRead(new _FunctionTypes._void_P0_E0() {
          public void invoke() {
            Iterable<SNode> modules = SNodeOperations.ofConcept(Sequence.fromIterable(activeBranch.getBranch().getTransaction().getAllChildren(PTree.ROOT_ID)).select(new ISelector<Long, SNode>() {
              public SNode select(Long it) {
                SNode n = NodeToSNodeAdapter.wrap(PNodeAdapter.wrap(it, activeBranch.getBranch()));
                return n;
              }
            }), CONCEPTS.Module$8V);
            for (SNode module : Sequence.fromIterable(modules)) {
              long moduleNodeId = ((PNodeAdapter) SNodeToNodeAdapter.wrap(module)).getNodeId();
              if (repo.hasBinding(treeId, moduleNodeId)) {
                continue;
              }
              repo.addBinding(new TransientModuleBinding(treeId, moduleNodeId));
            }
          }
        });
      }
    }

    for (ActiveBranch newBranch : ListSequence.fromList(allActiveBranches).subtract(SetSequence.fromSet(subscribedActiveBranches)).toListSequence()) {
      newBranch.addListener(this);
    }

    for (ActiveBranch removedBranch : SetSequence.fromSet(subscribedActiveBranches).subtract(ListSequence.fromList(allActiveBranches)).toListSequence()) {
      removedBranch.removeListener(this);
      SetSequence.fromSet(subscribedActiveBranches).removeElement(removedBranch);
    }
  }

  public void dispose() {
    for (CloudRepository repo : SetSequence.fromSet(subscribedInfoBranches)) {
      repo.getInfoBranch().removeListener(this);
    }
    for (CloudRepository repo : SetSequence.fromSet(subscribedRepositories)) {
      repo.removeListener(this);
    }
    repositories.removeListener(this);
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink trees$ECBY = MetaAdapterFactory.getContainmentLink(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x62b7d9b07cecbcbfL, 0x62b7d9b07cecbcc2L, "trees");
  }

  private static final class PROPS {
    /*package*/ static final SProperty id$ECO6 = MetaAdapterFactory.getProperty(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x62b7d9b07cecbcc0L, 0x62b7d9b07cecbcc6L, "id");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Module$8V = MetaAdapterFactory.getConcept(0xbf7bc3bb11d42e4L, 0xb16093d72af96397L, 0x69652614fd1c50fL, "de.q60.mps.shadowmodels.runtimelang.structure.Module");
  }
}
