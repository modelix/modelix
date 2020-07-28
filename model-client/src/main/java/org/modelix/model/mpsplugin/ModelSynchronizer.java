package org.modelix.model.mpsplugin;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.List;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranchListener;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;
import com.intellij.openapi.application.ApplicationManager;
import de.q60.mps.shadowmodels.runtime.smodel.CommandHelper;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITreeChangeVisitor;
import java.util.Objects;
import org.jetbrains.mps.openapi.model.SNode;
import de.q60.mps.shadowmodels.runtime.model.INode;
import de.q60.mps.shadowmodels.runtime.smodel.SNodeToNodeAdapter;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import de.q60.mps.shadowmodels.runtime.smodel.SConceptAdapter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import de.q60.mps.shadowmodels.runtime.model.persistent.PTree;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelLanguageEvent;
import jetbrains.mps.smodel.event.SModelDevKitEvent;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelRenamedEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.smodel.event.SModelImportEvent;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.SModelInternal;
import org.modelix.model.lazy.CLTree;
import org.modelix.model.lazy.CLNode;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.smodel.ModelImports;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.project.ModuleId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import de.q60.mps.shadowmodels.runtime.model.IProperty;
import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import de.q60.mps.shadowmodels.runtime.smodel.NodeToSNodeAdapter;
import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.model.IChildLink;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.internal.collections.runtime.NotNullWhereFilter;
import java.util.LinkedHashSet;
import gnu.trove.map.TLongObjectMap;
import gnu.trove.map.hash.TLongObjectHashMap;
import gnu.trove.map.TObjectLongMap;
import gnu.trove.map.hash.TObjectLongHashMap;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SReference;
import de.q60.mps.shadowmodels.runtime.model.CompositeNodeResolveContext;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeResolveContext;
import de.q60.mps.shadowmodels.runtime.smodel.SRepositoryResolveContext;

public class ModelSynchronizer {
  private static final Logger LOG = LogManager.getLogger(ModelSynchronizer.class);
  public static final String DETACHED_NODES_ROLE = "detached";

  private final AtomicBoolean syncMuted = new AtomicBoolean(false);
  private NodeMap nodeMap = new NodeMap();
  private IIndirectBranch activeBranch;
  private SModel model;
  private List<_FunctionTypes._void_P0_E0> pendingReferences = ListSequence.fromList(new ArrayList<_FunctionTypes._void_P0_E0>());
  private boolean async = true;
  private long modelNodeId;

  private IBranchListener branchListener = new IBranchListener() {
    @Override
    public void treeChanged(final ITree oldTree, final ITree newTree) {
      if (syncMuted.get()) {
        return;
      }
      if (async) {
        ApplicationManager.getApplication().invokeLater(new Runnable() {
          public void run() {
            sync(oldTree, newTree);
          }
        });
      } else {
        sync(oldTree, newTree);
      }
    }
    public void sync(final ITree oldTree, final ITree newTree) {
      withSyncMuted(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          CommandHelper.runInCommand(new _FunctionTypes._void_P0_E0() {
            public void invoke() {
              newTree.visitChanges(oldTree, new ITreeChangeVisitor() {
                public boolean isInsideModel(long nodeId) {
                  long parent = newTree.getParent(nodeId);
                  if (parent == 0) {
                    return false;
                  }
                  if (parent == modelNodeId) {
                    return Objects.equals(newTree.getRole(nodeId), LINKS.rootNodes$eTTT.getName());
                  }
                  return isInsideModel(parent);
                }
                public boolean isInsideModelOrModel(long nodeId) {
                  if (nodeId == modelNodeId) {
                    return true;
                  }
                  return isInsideModel(nodeId);
                }
                public boolean isModelProperties(long nodeId) {
                  long parent = newTree.getParent(nodeId);
                  if (parent == 0) {
                    return false;
                  }
                  if (parent == modelNodeId) {
                    return !(Objects.equals(newTree.getRole(nodeId), LINKS.rootNodes$eTTT.getName()));
                  }
                  return isModelProperties(parent);
                }

                @Override
                public void containmentChanged(long nodeId) {
                }

                @Override
                public void childrenChanged(final long nodeId, final String role) {
                  if (modelNodeId == nodeId) {
                    if (Objects.equals(role, LINKS.rootNodes$eTTT.getName())) {
                      syncChildren(nodeId, role, newTree, false);
                    } else {
                      syncModelPropertiesToModel(newTree);
                    }
                  } else if (isModelProperties(nodeId)) {
                    syncModelPropertiesToModel(newTree);
                  } else if (isInsideModel(nodeId)) {
                    syncChildren(nodeId, role, newTree, false);
                  }
                }

                @Override
                public void referenceChanged(long nodeId, String role) {
                  if (isModelProperties(nodeId)) {
                    syncModelPropertiesToModel(newTree);
                    return;
                  }
                  if (!(isInsideModel(nodeId))) {
                    return;
                  }
                  syncReference(nodeId, newTree, role);
                }

                @Override
                public void propertyChanged(final long nodeId, String role) {
                  if (isModelProperties(nodeId)) {
                    syncModelPropertiesToModel(newTree);
                    return;
                  }
                  if (!(isInsideModel(nodeId))) {
                    return;
                  }
                  SNode snode = getOrCreateNode(nodeId, newTree);
                  INode node = SNodeToNodeAdapter.wrap(snode);
                  node.setPropertyValue(role, newTree.getProperty(nodeId, role));
                }

                @Override
                public void userObjectChanged(long nodeId, Object key) {
                }

                @Override
                public void nodeRemoved(long nodeId) {
                }

                @Override
                public void nodeAdded(long nodeId) {
                  if (!(isInsideModel(nodeId))) {
                    return;
                  }
                  syncNode(nodeId, newTree, true);
                }

                @Override
                public void nodeLoaded(long nodeId) {
                }

                @Override
                public void nodeUnloaded(long nodeId) {
                }
              });
              processPendingReferences();
            }
          });
        }
      });
    }
  };
  private SNodeChangeListener nodeChangeListener = new SNodeChangeListener() {
    @Override
    public void propertyChanged(@NotNull final SPropertyChangeEvent e) {
      if (syncMuted.get()) {
        return;
      }
      withSyncMuted(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          final IBranch branch = activeBranch.getBranch();
          branch.runWrite(new _FunctionTypes._void_P0_E0() {
            public void invoke() {
              long id = nodeMap.getId(e.getNode());
              if (id != 0L) {
                branch.getWriteTransaction().setProperty(id, e.getProperty().getName(), e.getNewValue());
              }
            }
          });
        }
      });
    }

    @Override
    public void referenceChanged(@NotNull final SReferenceChangeEvent e) {
      if (syncMuted.get()) {
        return;
      }
      withSyncMuted(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          final IBranch branch = activeBranch.getBranch();
          branch.runWrite(new _FunctionTypes._void_P0_E0() {
            public void invoke() {
              IWriteTransaction t = activeBranch.getBranch().getWriteTransaction();
              SNode targetSNode = check_l95w85_a0b0a0a1a0a1a2a0a11(e.getNewValue());
              long sourceId = getOrCreateNode(e.getNode());
              if (targetSNode == null) {
                t.setReferenceTarget(sourceId, e.getAssociationLink().getName(), null);
              } else {
                long targetId = nodeMap.getId(targetSNode);
                INode targetNode;
                if (targetId == 0L) {
                  targetNode = SNodeToNodeAdapter.wrap(targetSNode);
                } else {
                  targetNode = new PNodeAdapter(targetId, branch);
                }
                t.setReferenceTarget(sourceId, e.getAssociationLink().getName(), targetNode.getReference());
              }
            }
          });
        }
      });
    }

    @Override
    public void nodeAdded(@NotNull final SNodeAddEvent e) {
      if (syncMuted.get()) {
        return;
      }
      withSyncMuted(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          activeBranch.getBranch().runWrite(new _FunctionTypes._void_P0_E0() {
            public void invoke() {
              IWriteTransaction t = activeBranch.getBranch().getWriteTransaction();
              long parentId;
              String role;
              if (e.isRoot()) {
                parentId = modelNodeId;
                role = LINKS.rootNodes$eTTT.getName();
              } else {
                parentId = nodeMap.getId(e.getParent());
                role = e.getAggregationLink().getName();
              }
              if (parentId == 0L) {
                return;
              }
              SNode child = e.getChild();
              if (e.isRoot()) {
                long childId = nodeMap.getId(child);
                if (childId == 0L) {
                  childId = t.addNewChild(parentId, role, -1, SConceptAdapter.wrap(SNodeOperations.getConcept(child)));
                  nodeMap.put(childId, child);
                } else {
                  t.moveChild(parentId, role, -1, childId);
                }
              } else {
                syncChildren(e.getAggregationLink(), t, parentId, e.getParent(), false);
              }
              syncNode(child, true);
              processPendingReferences();
            }
          });
        }
      });
    }

    @Override
    public void nodeRemoved(@NotNull final SNodeRemoveEvent e) {
      if (syncMuted.get()) {
        return;
      }
      withSyncMuted(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          final IBranch branch = activeBranch.getBranch();
          branch.runWrite(new _FunctionTypes._void_P0_E0() {
            public void invoke() {
              IWriteTransaction t = branch.getWriteTransaction();
              long childId = nodeMap.getId(e.getChild());
              if (childId != 0L) {
                t.moveChild(PTree.ROOT_ID, DETACHED_NODES_ROLE, -1, childId);
              }
            }
          });
        }
      });
    }
  };
  private SModelListener modelListener = new SModelListener() {
    @Override
    public void languageAdded(SModelLanguageEvent event) {
      if (syncMuted.get()) {
        return;
      }
      syncUsedLanguagesFromModel();
    }
    @Override
    public void languageRemoved(SModelLanguageEvent event) {
      if (syncMuted.get()) {
        return;
      }
      syncUsedLanguagesFromModel();
    }
    @Override
    public void devkitAdded(SModelDevKitEvent event) {
      if (syncMuted.get()) {
        return;
      }
      syncUsedDevkitsFromModel();
    }
    @Override
    public void devkitRemoved(SModelDevKitEvent event) {
      if (syncMuted.get()) {
        return;
      }
      syncUsedDevkitsFromModel();
    }

    @Override
    public void beforeChildRemoved(SModelChildEvent event) {
    }
    @Override
    public void beforeModelDisposed(SModel model) {
    }
    @Override
    public void beforeModelRenamed(SModelRenamedEvent event) {
    }
    @Override
    public void beforeRootRemoved(SModelRootEvent event) {
    }
    @Override
    public void childAdded(SModelChildEvent event) {
    }
    @Override
    public void childRemoved(SModelChildEvent event) {
    }
    @NotNull
    @Override
    public SModelListener.SModelListenerPriority getPriority() {
      return SModelListener.SModelListenerPriority.CLIENT;
    }
    @Override
    public void importAdded(SModelImportEvent event) {
    }
    @Override
    public void importRemoved(SModelImportEvent event) {
    }
    @Override
    public void modelLoadingStateChanged(SModel model, ModelLoadingState state) {
    }
    @Override
    public void modelRenamed(SModelRenamedEvent event) {
    }
    @Override
    public void modelSaved(SModel model) {
    }
    @Override
    public void propertyChanged(SModelPropertyEvent event) {
    }
    @Override
    public void referenceAdded(SModelReferenceEvent event) {
    }
    @Override
    public void referenceRemoved(SModelReferenceEvent event) {
    }
    @Deprecated
    @Override
    public void rootAdded(SModelRootEvent event) {
    }
    @Deprecated
    @Override
    public void rootRemoved(SModelRootEvent event) {
    }
  };

  public ModelSynchronizer(IIndirectBranch branch, long modelNodeId, SModel model) {
    this.activeBranch = branch;
    this.model = model;
    this.modelNodeId = modelNodeId;
    branch.addListener(branchListener);
    model.addChangeListener(nodeChangeListener);
    ((SModelInternal) model).addModelListener(modelListener);
  }

  private void prefetchTree(ITree tree) {
    if (tree instanceof CLTree) {
      ((CLTree) tree).prefetchAll();
    }
  }

  public void setAsync(boolean value) {
    async = value;
  }

  public void runFullSync() {
    SharedExecutors.FIXED.execute(new Runnable() {
      public void run() {
        final IBranch branch = activeBranch.getBranch();
        CLTree tree = (CLTree) branch.computeRead(new _FunctionTypes._return_P0_E0<ITree>() {
          public ITree invoke() {
            return branch.getTransaction().getTree();
          }
        });

        // prefetch model content 
        Iterable<CLNode> prefetched = tree.getDescendants(modelNodeId, true);
        if (LOG.isDebugEnabled()) {
          LOG.debug("Prefetched " + Sequence.fromIterable(prefetched).count() + " nodes");
        }

        ApplicationManager.getApplication().invokeLater(new Runnable() {
          public void run() {
            CommandHelper.runInCommand(new _FunctionTypes._void_P0_E0() {
              public void invoke() {
                withSyncMuted(new _FunctionTypes._void_P0_E0() {
                  public void invoke() {
                    final IBranch branch = activeBranch.getBranch();
                    branch.runRead(new _FunctionTypes._void_P0_E0() {
                      public void invoke() {
                        for (SNode root : ListSequence.fromList(ListSequence.fromListWithValues(new ArrayList<SNode>(), model.getRootNodes())).ofType(SNode.class)) {
                          ListSequence.fromList(SNodeOperations.getChildren(root)).visitAll(new IVisitor<SNode>() {
                            public void visit(SNode it) {
                              SNodeOperations.deleteNode(it);
                            }
                          });
                        }
                        syncChildren(modelNodeId, LINKS.rootNodes$eTTT.getName(), branch.getTransaction().getTree(), true);
                        processPendingReferences();
                        syncModelPropertiesToModel(branch.getTransaction().getTree());
                      }
                    });
                  }
                });
              }
            });
          }
        });
      }
    });
  }

  public void dispose() {
    activeBranch.removeListener(branchListener);
    model.removeChangeListener(nodeChangeListener);
    ((SModelInternal) model).removeModelListener(modelListener);
  }

  protected void withSyncMuted(_FunctionTypes._void_P0_E0 r) {
    if (syncMuted.compareAndSet(false, true)) {
      try {
        r.invoke();
      } finally {
        syncMuted.set(false);
      }
    } else {
      r.invoke();
    }
  }

  public void syncModelPropertiesToModel(ITree tree) {
    syncUsedLanguagesToModel(tree);
    syncUsedDevkitsToModel(tree);
  }

  public void syncUsedLanguagesToModel(ITree tree) {
    Iterable<SLanguage> usedLanguages = new ModelImports(model).getUsedLanguages();
    syncModuleReferencesToModel(tree, "usedLanguages", Sequence.fromIterable(usedLanguages).select(new ISelector<SLanguage, SModuleReference>() {
      public SModuleReference select(SLanguage it) {
        return it.getSourceModuleReference();
      }
    }), new _FunctionTypes._void_P1_E0<SModuleReference>() {
      public void invoke(SModuleReference toRemove) {
        new ModelImports(model).removeUsedLanguage(MetaAdapterFactory.getLanguage(toRemove));
      }
    }, new _FunctionTypes._void_P1_E0<SModuleReference>() {
      public void invoke(SModuleReference toAdd) {
        new ModelImports(model).addUsedLanguage(MetaAdapterFactory.getLanguage(toAdd));
      }
    });
  }

  public void syncUsedDevkitsToModel(ITree tree) {
    syncModuleReferencesToModel(tree, "usedDevkits", new ModelImports(model).getUsedDevKits(), new _FunctionTypes._void_P1_E0<SModuleReference>() {
      public void invoke(SModuleReference toRemove) {
        ((SModelInternal) model).deleteDevKit(toRemove);
      }
    }, new _FunctionTypes._void_P1_E0<SModuleReference>() {
      public void invoke(SModuleReference toAdd) {
        new ModelImports(model).addUsedDevKit(toAdd);
      }
    });
  }

  public void syncModuleReferencesToModel(final ITree tree, String role, final Iterable<SModuleReference> existingImports, _FunctionTypes._void_P1_E0<? super SModuleReference> removeImport, _FunctionTypes._void_P1_E0<? super SModuleReference> addImport) {
    final Iterable<Long> expectedImports = tree.getChildren(modelNodeId, role);

    Iterable<Long> missingImports = Sequence.fromIterable(expectedImports).where(new IWhereFilter<Long>() {
      public boolean accept(Long it) {
        return !(Sequence.fromIterable(existingImports).select(new ISelector<SModuleReference, String>() {
          public String select(SModuleReference it) {
            return it.getModuleId().toString();
          }
        }).contains(tree.getProperty(it, PROPS.id$BO0G.getName())));
      }
    }).toListSequence();
    Iterable<SModuleReference> unexpectedImports = Sequence.fromIterable(existingImports).where(new IWhereFilter<SModuleReference>() {
      public boolean accept(SModuleReference it) {
        return !(Sequence.fromIterable(expectedImports).select(new ISelector<Long, String>() {
          public String select(Long it) {
            return tree.getProperty(it, PROPS.id$BO0G.getName());
          }
        }).contains(it.getModuleId().toString()));
      }
    }).toListSequence();

    for (SModuleReference unexpectedimport : Sequence.fromIterable(unexpectedImports)) {
      removeImport.invoke(unexpectedimport);
    }

    for (long missingImport : missingImports) {
      addImport.invoke(new ModuleReference(tree.getProperty(missingImport, PROPS.name$BT7a.getName()), ModuleId.fromString(tree.getProperty(missingImport, PROPS.id$BO0G.getName()))));
    }
  }

  public void syncModelPropertiesFromModel() {
    activeBranch.getBranch().runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        syncUsedLanguagesFromModel();
        syncUsedDevkitsFromModel();
      }
    });
  }

  public void syncUsedLanguagesFromModel() {
    activeBranch.getBranch().runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        Iterable<SLanguage> usedLanguages = new ModelImports(model).getUsedLanguages();
        syncModuleReferencesFromModel("usedLanguages", Sequence.fromIterable(usedLanguages).select(new ISelector<SLanguage, SModuleReference>() {
          public SModuleReference select(SLanguage it) {
            return it.getSourceModuleReference();
          }
        }));
      }
    });
  }

  public void syncUsedDevkitsFromModel() {
    activeBranch.getBranch().runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        syncModuleReferencesFromModel("usedDevkits", new ModelImports(model).getUsedDevKits());
      }
    });
  }

  public void syncModuleReferencesFromModel(String role, final Iterable<SModuleReference> expectedImports) {
    INode modelNode = new PNodeAdapter(modelNodeId, activeBranch.getBranch());
    final Iterable<INode> existingImports = modelNode.getChildren(role);
    Iterable<SModuleReference> missingImports = Sequence.fromIterable(expectedImports).where(new IWhereFilter<SModuleReference>() {
      public boolean accept(SModuleReference it) {
        return !(Sequence.fromIterable(existingImports).select(new ISelector<INode, String>() {
          public String select(INode it) {
            return it.getPropertyValue(PROPS.id$BO0G.getName());
          }
        }).contains(it.getModuleId().toString()));
      }
    }).toListSequence();
    Iterable<INode> unexpectedImports = Sequence.fromIterable(existingImports).where(new IWhereFilter<INode>() {
      public boolean accept(INode it) {
        return !(Sequence.fromIterable(expectedImports).select(new ISelector<SModuleReference, String>() {
          public String select(SModuleReference it) {
            return it.getModuleId().toString();
          }
        }).contains(it.getPropertyValue(PROPS.id$BO0G.getName())));
      }
    }).toListSequence();

    for (INode unexpectedImport : Sequence.fromIterable(unexpectedImports)) {
      activeBranch.getBranch().getWriteTransaction().deleteNode(((PNodeAdapter) unexpectedImport).getNodeId());
    }

    for (SModuleReference missingImport : Sequence.fromIterable(missingImports)) {
      INode importNode = modelNode.addNewChild(role, -1, SConceptAdapter.wrap(CONCEPTS.UsedModule$UW));
      importNode.setPropertyValue(PROPS.id$BO0G.getName(), missingImport.getModuleId().toString());
      importNode.setPropertyValue(PROPS.name$BT7a.getName(), missingImport.getModuleName());
    }
  }


  protected SNode getOrCreateNode(final long nodeId, final ITree tree) {
    if (nodeId == 0L || nodeId == PTree.ROOT_ID) {
      throw new RuntimeException("Invalid ID " + nodeId);
    }
    return nodeMap.getOrCreateNode(nodeId, new _FunctionTypes._return_P0_E0<SAbstractConcept>() {
      public SAbstractConcept invoke() {
        return SConceptAdapter.unwrap(tree.getConcept(nodeId));
      }
    });
  }

  public void syncNode(long nodeId, ITree tree, boolean includeDescendants) {
    final SAbstractConcept concept = SConceptAdapter.unwrap(tree.getConcept(nodeId));
    if (concept == null) {
      throw new RuntimeException("Node has no concept: " + nodeId);
    }
    SNode node = nodeMap.getOrCreateNode(nodeId, new _FunctionTypes._return_P0_E0<SAbstractConcept>() {
      public SAbstractConcept invoke() {
        return concept;
      }
    });
    for (SProperty property : CollectionSequence.fromCollection(concept.getProperties())) {
      node.setProperty(property, tree.getProperty(nodeId, property.getName()));
    }
    for (SReferenceLink link : CollectionSequence.fromCollection(concept.getReferenceLinks())) {
      syncReference(nodeId, tree, link.getName());
    }
    syncChildren(nodeId, tree, includeDescendants);
  }

  public void syncProperties(INode source, INode target) {
    for (IProperty property : Sequence.fromIterable(target.getConcept().getProperties())) {
      target.setPropertyValue(property.getName(), source.getPropertyValue(property.getName()));
    }
  }

  public void syncReference(final long nodeId, final ITree tree, final String role) {
    ListSequence.fromList(pendingReferences).addElement(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        SNode node = getOrCreateNode(nodeId, tree);
        INodeReference target = tree.getReferenceTarget(nodeId, role);
        INode targetNode = check_l95w85_a0c0a0a0a94(target, activeBranch, model);
        SNode targetSNode;
        if (targetNode instanceof PNodeAdapter) {
          PNodeAdapter targetPNode = (PNodeAdapter) targetNode;
          long targetId = (targetPNode == null ? 0L : targetPNode.getNodeId());
          targetSNode = (targetId == 0L ? null : getOrCreateNode(targetId, tree));
        } else {
          targetSNode = NodeToSNodeAdapter.wrap(targetNode);
        }
        node.setReferenceTarget(findReferenceLink(node.getConcept(), role), targetSNode);
      }
    });
  }

  public void syncChildren(long nodeId, ITree tree, boolean includeDescendants) {
    IConcept concept = tree.getConcept(nodeId);
    for (IChildLink link : Sequence.fromIterable(concept.getChildLinks())) {
      syncChildren(nodeId, link.getName(), tree, includeDescendants);
    }
  }

  public void syncChildren(final long nodeId, final String role, ITree tree, boolean includeDescendants) {
    boolean isRootNodes = nodeId == modelNodeId && Objects.equals(role, LINKS.rootNodes$eTTT.getName());
    Set<SNode> existingNodes;
    if (isRootNodes) {
      existingNodes = SetSequence.fromSetWithValues(new HashSet<SNode>(), model.getRootNodes());
    } else {
      SNode parentNode = nodeMap.getNode(nodeId);
      if (parentNode == null) {
        System.out.println("parent is null");
      }
      existingNodes = SetSequence.fromSetWithValues(new HashSet<SNode>(), (Iterable<SNode>) parentNode.getChildren(findContainmentLink(parentNode.getConcept(), role)));
    }
    Set<Long> existingIds = SetSequence.fromSetWithValues(new HashSet<Long>(), SetSequence.fromSet(existingNodes).select(new ISelector<SNode, Long>() {
      public Long select(SNode it) {
        return nodeMap.getId(it);
      }
    }).where(new IWhereFilter<Long>() {
      public boolean accept(Long it) {
        return it != 0L;
      }
    }));
    final Set<Long> expectedIds = SetSequence.fromSetWithValues(new HashSet<Long>(), tree.getChildren(nodeId, role));
    Iterable<Long> missingIds = SetSequence.fromSet(expectedIds).subtract(SetSequence.fromSet(existingIds));
    Iterable<SNode> unexpectedNodes = SetSequence.fromSet(existingNodes).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode n) {
        long id = nodeMap.getId(n);
        return id == 0L || !(SetSequence.fromSet(expectedIds).contains(id));
      }
    });

    for (long missingId : missingIds) {
      SNode node = getOrCreateNode(missingId, tree);
      if ((SNodeOperations.getParent(node) != null)) {
        SNodeOperations.deleteNode(node);
      }
      if (isRootNodes) {
        model.addRootNode(node);
      } else {
        SNode parentNode = getOrCreateNode(nodeId, tree);
        parentNode.addChild(findContainmentLink(parentNode.getConcept(), role), node);
      }
    }

    for (SNode unexpected : Sequence.fromIterable(unexpectedNodes).ofType(SNode.class)) {
      SNodeOperations.deleteNode(unexpected);
    }

    // order 
    if (!(isRootNodes)) {
      SNode parentNode = nodeMap.getNode(nodeId);
      SContainmentLink link = findContainmentLink(SNodeOperations.getConcept(parentNode), role);
      int index = 0;
      for (long expectedId : tree.getChildren(nodeId, role)) {
        SNode expectedNode = nodeMap.getNode(expectedId);
        SNode actualNode = ListSequence.fromList(SNodeOperations.getChildren(parentNode, link)).getElement(index);
        if (!(Objects.equals(actualNode, expectedNode))) {
          SNodeOperations.deleteNode(expectedNode);
          ListSequence.fromList(SNodeOperations.getChildren(parentNode, link)).insertElement(index, expectedNode);
        }
        index++;
      }
    }

    if (includeDescendants) {
      for (long childId : expectedIds) {
        syncNode(childId, tree, includeDescendants);
      }
    }
  }

  public SContainmentLink findContainmentLink(SAbstractConcept concept, final String linkName) {
    Iterable<SContainmentLink> links = concept.getContainmentLinks();
    SContainmentLink link = Sequence.fromIterable(links).findFirst(new IWhereFilter<SContainmentLink>() {
      public boolean accept(SContainmentLink it) {
        return Objects.equals(it.getName(), linkName);
      }
    });
    if (link == null) {
      throw new RuntimeException(concept + "." + linkName + " not found");
    }
    return link;
  }
  public SReferenceLink findReferenceLink(SConcept concept, final String linkName) {
    Iterable<SReferenceLink> links = concept.getReferenceLinks();
    SReferenceLink link = Sequence.fromIterable(links).findFirst(new IWhereFilter<SReferenceLink>() {
      public boolean accept(SReferenceLink it) {
        return Objects.equals(it.getName(), linkName);
      }
    });
    if (link == null) {
      throw new RuntimeException(concept + "." + linkName + " not found");
    }
    return link;
  }

  public void syncNode(final SNode parentNode, boolean includeDescendants) {
    if (parentNode.getModel() != model) {
      throw new RuntimeException("Not part of this model: " + parentNode);
    }
    final IBranch branch = activeBranch.getBranch();
    final IWriteTransaction t = branch.getWriteTransaction();
    final SConcept concept = parentNode.getConcept();

    final long parentNodeId = getOrCreateNode(parentNode);

    for (SProperty property : CollectionSequence.fromCollection(concept.getProperties())) {
      String oldValue = t.getProperty(parentNodeId, property.getName());
      String newValue = parentNode.getProperty(property);
      if (!(Objects.equals(newValue, oldValue))) {
        t.setProperty(parentNodeId, property.getName(), newValue);
      }
    }

    for (final SReferenceLink link : CollectionSequence.fromCollection(concept.getReferenceLinks())) {
      ListSequence.fromList(pendingReferences).addElement(new _FunctionTypes._void_P0_E0() {
        public void invoke() {
          SNode targetSNode = parentNode.getReferenceTarget(link);
          INodeReference currentTarget = t.getReferenceTarget(parentNodeId, link.getName());
          if (targetSNode == null) {
            if (currentTarget != null) {
              t.setReferenceTarget(parentNodeId, link.getName(), null);
            }
          } else {
            long targetId = nodeMap.getId(targetSNode);
            INode targetNode;
            if (targetId == 0L) {
              targetNode = SNodeToNodeAdapter.wrap(targetSNode);
            } else {
              targetNode = new PNodeAdapter(targetId, branch);
            }
            if (!(Objects.equals(currentTarget, targetNode.getReference()))) {
              t.setReferenceTarget(parentNodeId, link.getName(), targetNode.getReference());
            }
          }
        }
      });
    }

    for (SContainmentLink link : CollectionSequence.fromCollection(concept.getContainmentLinks())) {
      syncChildren(link, t, parentNodeId, parentNode, includeDescendants);
    }
  }

  protected void syncChildren(SContainmentLink link, IWriteTransaction t, long parentNodeId, SNode parentNode, boolean includeDescendants) {
    String role = link.getName();
    Set<Long> existingIds = SetSequence.fromSetWithValues(new HashSet<Long>(), t.getChildren(parentNodeId, role));
    Set<SNode> existingNodes = SetSequence.fromSetWithValues(new HashSet<SNode>(), SetSequence.fromSet(existingIds).select(new ISelector<Long, SNode>() {
      public SNode select(Long it) {
        return nodeMap.getNode(it);
      }
    }).where(new NotNullWhereFilter<SNode>()));
    final Set<SNode> expectedNodes = SetSequence.fromSetWithValues(new LinkedHashSet<SNode>(), (Iterable<SNode>) parentNode.getChildren(link));
    Iterable<SNode> missingNodes = SetSequence.fromSet(expectedNodes).subtract(SetSequence.fromSet(existingNodes));
    Iterable<Long> unexpectedIds = SetSequence.fromSet(existingIds).where(new IWhereFilter<Long>() {
      public boolean accept(Long id) {
        SNode n = nodeMap.getNode(id);
        return n == null || !(SetSequence.fromSet(expectedNodes).contains(n));
      }
    });

    for (SNode missingNode : Sequence.fromIterable(missingNodes).ofType(SNode.class)) {
      long id = nodeMap.getId(missingNode);
      if (id == 0L) {
        id = t.addNewChild(parentNodeId, role, SNodeOperations.getIndexInParent(missingNode), SConceptAdapter.wrap(SNodeOperations.getConcept(missingNode)));
        nodeMap.put(id, missingNode);
      } else {
        t.moveChild(parentNodeId, role, SNodeOperations.getIndexInParent(missingNode), id);
      }
    }

    for (long unexpected : unexpectedIds) {
      t.moveChild(PTree.ROOT_ID, DETACHED_NODES_ROLE, -1, unexpected);
    }

    // order 
    int index = 0;
    for (SNode expectedNode : SetSequence.fromSet(expectedNodes)) {
      long expectedId = nodeMap.getId(expectedNode);
      long actualId = Sequence.fromIterable(t.getChildren(parentNodeId, role)).skip(index).first();
      if (actualId != expectedId) {
        t.moveChild(parentNodeId, role, index, expectedId);
      }
      index++;
    }

    if (includeDescendants) {
      for (SNode childNode : SetSequence.fromSet(expectedNodes)) {
        syncNode(childNode, includeDescendants);
      }
    }
  }

  protected long getOrCreateNode(SNode node) {
    long nodeId = nodeMap.getId(node);
    if (nodeId == 0L) {
      IWriteTransaction t = activeBranch.getBranch().getWriteTransaction();
      nodeId = t.addNewChild(PTree.ROOT_ID, DETACHED_NODES_ROLE, -1, SConceptAdapter.wrap(node.getConcept()));
      nodeMap.put(nodeId, node);
    }
    return nodeId;
  }

  protected void processPendingReferences() {
    for (_FunctionTypes._void_P0_E0 r : ListSequence.fromList(pendingReferences)) {
      r.invoke();
    }
    ListSequence.fromList(pendingReferences).clear();
  }

  public static class NodeMap {
    private TLongObjectMap<SNode> id2node = new TLongObjectHashMap<SNode>();
    private TObjectLongMap<SNode> node2id = new TObjectLongHashMap<SNode>();

    public void put(long id, SNode node) {
      id2node.put(id, node);
      node2id.put(node, id);
    }

    public void removeId(long id) {
      SNode node = id2node.remove(id);
      if (node != null) {
        node2id.remove(node);
      }
    }

    public void removeNode(SNode node) {
      long id = node2id.remove(node);
      id2node.remove(id);
    }

    public SNode getNode(long id) {
      return id2node.get(id);
    }

    public long getId(SNode node) {
      return node2id.get(node);
    }

    public SNode getOrCreateNode(long id, _FunctionTypes._return_P0_E0<? extends SAbstractConcept> concept) {
      SNode node = getNode(id);
      if (node == null) {
        // The id parameters is the ID of the node in the replicated data structure. 
        // We could use any ID for the MPS node, but for the load balancing to work properly, 
        // node references should be resolvable independent of the MPS instance. 
        SNodeId nodeId = new jetbrains.mps.smodel.SNodeId.Regular(id);
        SConcept c = (SConcept) concept.invoke();
        node = new jetbrains.mps.smodel.SNode(c, nodeId);
        put(id, node);
      }
      return node;
    }
  }

  private static SNode check_l95w85_a0b0a0a1a0a1a2a0a11(SReference checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getTargetNode();
    }
    return null;
  }
  private static INode check_l95w85_a0c0a0a0a94(INodeReference checkedDotOperand, IIndirectBranch activeBranch, SModel model) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.resolveNode(new CompositeNodeResolveContext(new PNodeResolveContext(activeBranch.getBranch()), new SRepositoryResolveContext(model.getRepository())));
    }
    return null;
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink rootNodes$eTTT = MetaAdapterFactory.getContainmentLink(0xbf7bc3bb11d42e4L, 0xb16093d72af96397L, 0x69652614fd1c50cL, 0x69652614fd1c514L, "rootNodes");
  }

  private static final class PROPS {
    /*package*/ static final SProperty id$BO0G = MetaAdapterFactory.getProperty(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x493accf051232ee2L, 0x493accf051232f5bL, "id");
    /*package*/ static final SProperty name$BT7a = MetaAdapterFactory.getProperty(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x493accf051232ee2L, 0x493accf051232f5dL, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept UsedModule$UW = MetaAdapterFactory.getConcept(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x493accf051232ee2L, "org.modelix.model.runtimelang.structure.UsedModule");
  }
}
