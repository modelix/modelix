package org.modelix.model.mpsplugin.history;



import jetbrains.mps.ide.ui.tree.TextTreeNode;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import de.q60.mps.shadowmodels.runtime.model.INode;
import de.q60.mps.shadowmodels.runtime.model.IConcept;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import org.modelix.model.mpsplugin.CloudRepository;
import jetbrains.mps.ide.ThreadUtils;
import org.modelix.model.mpsplugin.SharedExecutors;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import de.q60.mps.shadowmodels.runtime.model.persistent.PTree;
import com.intellij.icons.AllIcons;
import org.jetbrains.mps.openapi.model.SNode;
import de.q60.mps.shadowmodels.runtime.smodel.NodeToSNodeAdapter;
import jetbrains.mps.smodel.MPSModuleRepository;
import de.q60.mps.shadowmodels.runtime.model.CompositeNodeResolveContext;
import de.q60.mps.shadowmodels.runtime.smodel.SRepositoryResolveContext;
import jetbrains.mps.lang.core.behavior.BaseConcept__BehaviorDescriptor;
import org.apache.log4j.Level;
import jetbrains.mps.ide.icons.GlobalIconManager;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.LinkedHashMap;
import jetbrains.mps.internal.collections.runtime.Sequence;
import javax.swing.tree.TreeNode;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class CloudNodeTreeNode extends TextTreeNode {
  private static final Logger LOG = LogManager.getLogger(CloudNodeTreeNode.class);

  private IBranch branch;
  private INode node;
  private IConcept concept;
  private boolean initialized;

  public CloudNodeTreeNode(IBranch branch, final INode node) {
    super("");
    this.branch = branch;
    this.node = node;
    branch.runRead(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        CloudNodeTreeNode.this.concept = node.getConcept();
        long nodeId = ((PNodeAdapter) node).getNodeId();
        setNodeIdentifier(Long.toString(nodeId));
        updateText();
      }
    });
  }

  @Override
  public boolean isInitialized() {
    return initialized;
  }

  @Override
  public void update() {
    doUpdate();
  }

  @Override
  public void doUpdate() {
    TreeModelUtil.clearChildren(this);
    initialized = false;
  }

  @Override
  public boolean isLeaf() {
    if (!(initialized)) {
      return false;
    }
    return super.isLeaf();
  }

  @Override
  protected void doUpdatePresentation() {
    super.doUpdatePresentation();
    updateText();
  }

  @Override
  protected void doInit() {
    super.doInit();
    initialized = true;
    updateText();
    updateChildren();
  }

  public INode getNode() {
    return this.node;
  }

  public IConcept getConcept() {
    return this.concept;
  }

  public IBranch getBranch() {
    return this.branch;
  }

  public CloudRepository getCloudRepository() {
    return check_s6g2x7_a0a62(getAncestor(CloudTreeTreeNode.class), this);
  }

  public void setTextAndRepaint(String text) {
    TreeModelUtil.setTextAndRepaint(this, text);
  }

  public void updateText() {
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        LoadingIcon.apply(CloudNodeTreeNode.this);
      }
    });
    SharedExecutors.FIXED.execute(new Runnable() {
      public void run() {
        branch.runRead(new _FunctionTypes._void_P0_E0() {
          public void invoke() {
            final Wrappers._T<String> newText = new Wrappers._T<String>("");
            final long nodeId = ((PNodeAdapter) node).getNodeId();
            if (nodeId == PTree.ROOT_ID) {
              newText.value = "ROOT #1";
              setIcon(AllIcons.Nodes.Folder);
            } else {
              final IConcept concept = node.getConcept();

              if (concept != null) {
                final SNode snode = NodeToSNodeAdapter.wrap(node);
                final MPSModuleRepository mpsRepo = MPSModuleRepository.getInstance();
                mpsRepo.getModelAccess().runReadAction(new Runnable() {
                  public void run() {
                    CompositeNodeResolveContext.withAdditionalContext(new SRepositoryResolveContext(mpsRepo), new Runnable() {
                      public void run() {
                        try {
                          newText.value = BaseConcept__BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(snode) + " [" + concept + "]   #" + Long.toHexString(nodeId);
                        } catch (Exception ex) {
                          if (LOG.isEnabledFor(Level.ERROR)) {
                            LOG.error("Failed to update the text", ex);
                          }
                          newText.value = "!!!" + ex.getMessage();
                        }
                        try {
                          setIcon(GlobalIconManager.getInstance().getIconFor(snode));
                        } catch (Exception ex) {
                          if (LOG.isEnabledFor(Level.ERROR)) {
                            LOG.error("Failed to update the icon", ex);
                          }
                        }
                      }
                    });
                  }
                });
              } else {
                newText.value = "#" + nodeId;
              }
            }
            String role = node.getRoleInParent();
            if (role != null) {
              newText.value = role + " : " + newText.value;
            }
            ThreadUtils.runInUIThreadNoWait(new Runnable() {
              public void run() {
                setTextAndRepaint(newText.value);
              }
            });
          }
        });
      }
    });
  }

  protected void updateChildren() {
    if (!(initialized)) {
      throw new RuntimeException();
    }

    final Map<INode, CloudNodeTreeNode> existing = MapSequence.fromMap(new LinkedHashMap<INode, CloudNodeTreeNode>(16, (float) 0.75, false));
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        if (Sequence.fromIterable(TreeModelUtil.getChildren(CloudNodeTreeNode.this)).isEmpty()) {
          TreeModelUtil.setChildren(CloudNodeTreeNode.this, Sequence.<TreeNode>singleton(LoadingIcon.apply(new TextTreeNode("loading ..."))));
        }
        Sequence.fromIterable(TreeModelUtil.getChildren(CloudNodeTreeNode.this)).ofType(CloudNodeTreeNode.class).visitAll(new IVisitor<CloudNodeTreeNode>() {
          public void visit(CloudNodeTreeNode it) {
            MapSequence.fromMap(existing).put(it.node, it);
          }
        });
      }
    });
    SharedExecutors.FIXED.execute(new Runnable() {
      public void run() {
        branch.runRead(new _FunctionTypes._void_P0_E0() {
          public void invoke() {
            final List<CloudNodeTreeNode> newChildren = Sequence.fromIterable(node.getAllChildren()).select(new ISelector<INode, CloudNodeTreeNode>() {
              public CloudNodeTreeNode select(INode it) {
                return (MapSequence.fromMap(existing).containsKey(it) ? MapSequence.fromMap(existing).get(it) : new CloudNodeTreeNode(branch, it));
              }
            }).toListSequence();
            ThreadUtils.runInUIThreadNoWait(new Runnable() {
              public void run() {
                TreeModelUtil.setChildren(CloudNodeTreeNode.this, ListSequence.fromList(newChildren).ofType(TreeNode.class));
                ListSequence.fromList(newChildren).visitAll(new IVisitor<CloudNodeTreeNode>() {
                  public void visit(CloudNodeTreeNode it) {
                    it.update();
                  }
                });
              }
            });
          }
        });
      }
    });
  }
  private static CloudRepository check_s6g2x7_a0a62(CloudTreeTreeNode checkedDotOperand, CloudNodeTreeNode checkedDotThisExpression) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getCloudRepository();
    }
    return null;
  }
}
