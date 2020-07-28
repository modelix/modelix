package org.modelix.model.mpsplugin.projectview;



import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import javax.swing.Icon;
import de.q60.mps.shadowmodels.runtime.plugin.ShadowIcon;
import java.awt.Color;
import java.util.Map;
import com.intellij.openapi.project.Project;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import javax.swing.event.TreeModelListener;
import javax.swing.event.TreeModelEvent;
import org.apache.log4j.Level;
import javax.swing.tree.DefaultTreeModel;
import org.jetbrains.mps.openapi.module.SRepositoryListener;
import org.jetbrains.mps.openapi.module.SRepositoryListenerBase;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.modelix.model.mpsplugin.CloudTransientModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import com.intellij.openapi.application.ApplicationManager;
import org.jetbrains.mps.openapi.module.SModuleListener;
import org.jetbrains.mps.openapi.module.SModuleListenerBase;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import de.q60.mps.util.invalidation.Invalidatable;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.ide.projectPane.logicalview.ProjectTree;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import javax.swing.Timer;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.internal.collections.runtime.ISelector;
import javax.swing.tree.TreeNode;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

public class CloudProjectViewExtension {
  private static final Logger LOG = LogManager.getLogger(CloudProjectViewExtension.class);
  public static final Icon ROOT_ICON = new ShadowIcon("C", 14, 3.0f, 13.0f, Color.YELLOW, Color.BLACK);
  public static final Icon MODULE_ICON = new ShadowIcon("M", 14, 2.0f, 13.0f, Color.YELLOW, Color.BLACK);
  public static final Icon MODEL_ICON = new ShadowIcon("m", 14, 2.0f, 12.0f, Color.YELLOW, Color.BLACK);

  private static Map<Project, CloudProjectViewExtension> ourInstances = MapSequence.fromMap(new HashMap<Project, CloudProjectViewExtension>());

  public static CloudProjectViewExtension getInstance(Project ideaProject) {
    CloudProjectViewExtension instance = MapSequence.fromMap(ourInstances).get(ideaProject);
    if (instance == null) {
      MPSProject mpsProject = ProjectHelper.fromIdeaProject(ideaProject);
      instance = new CloudProjectViewExtension(mpsProject);
      MapSequence.fromMap(ourInstances).put(ideaProject, instance);
    }
    return instance;
  }
  public static CloudProjectViewExtension getInstance(jetbrains.mps.project.Project mpsProject) {
    return getInstance(ProjectHelper.toIdeaProject(mpsProject));
  }

  private jetbrains.mps.project.Project project;
  private TextTreeNode cloudTreeNode;
  private TreeModelListener treeListener = new TreeModelListener() {
    private boolean handling;
    public void treeNodesChanged(TreeModelEvent p0) {
      handle();
    }
    public void treeNodesInserted(TreeModelEvent p0) {
      handle();
    }
    public void treeNodesRemoved(TreeModelEvent p0) {
      handle();
    }
    public void treeStructureChanged(TreeModelEvent p0) {
      handle();
    }
    public void handle() {
      if (handling) {
        return;
      }
      try {
        handling = true;
        attachCloudRootIfNotEmpty();
      } catch (Exception ex) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("", ex);
        }
      } finally {
        handling = false;
      }
    }
  };
  private DefaultTreeModel treeModel;

  private SRepositoryListener repositoryListener = new SRepositoryListenerBase() {
    private AtomicBoolean modulesDirty = new AtomicBoolean(true);
    public void moduleAdded(@NotNull SModule m) {
      if (m instanceof CloudTransientModule) {
        m.addModuleListener(moduleListener);
        queueUpdate();
      }
    }
    public void moduleRemoved(@NotNull SModuleReference m) {
      queueUpdate();
    }
    public void queueUpdate() {
      modulesDirty.set(true);
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        public void run() {
          if (modulesDirty.getAndSet(false)) {
            updateModules();
          }
        }
      });
    }
  };
  private SModuleListener moduleListener = new SModuleListenerBase() {
    @Override
    public void modelAdded(SModule module, SModel model) {
      super.modelAdded(module, model);
    }
    @Override
    public void modelRemoved(SModule module, SModelReference ref) {
      super.modelRemoved(module, ref);
    }
  };
  private Invalidatable invalidatable = new Invalidatable("Project view extension", new _FunctionTypes._void_P0_E0() {
    public void invoke() {
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        public void run() {
          forceUpdate();
        }
      });
    }
  }) {
    @Override
    public String getText() {
      return "Project view extension (" + project.getName() + ")";
    }
  };

  public CloudProjectViewExtension(jetbrains.mps.project.Project project) {
    this.project = project;
  }

  public void init() {
    cloudTreeNode = new TextTreeNode("Cloud");
    cloudTreeNode.setIcon(ROOT_ICON);
    waitForProjectTree(new _FunctionTypes._void_P1_E0<ProjectTree>() {
      public void invoke(ProjectTree tree) {
        treeModel = tree.getModel();
        treeModel.addTreeModelListener(treeListener);
        project.getRepository().addRepositoryListener(repositoryListener);
        updateModules();
      }
    });
  }

  private void waitForProjectTree(final _FunctionTypes._void_P1_E0<? super ProjectTree> callback) {
    ProjectTree tree = getProjectTree();
    if (tree != null) {
      callback.invoke(tree);
    } else {
      final Wrappers._T<Timer> timer = new Wrappers._T<Timer>(null);
      timer.value = new Timer(1000, new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          ProjectTree tree = getProjectTree();
          if (tree != null) {
            callback.invoke(tree);
            timer.value.stop();
          }
        }
      });
      timer.value.start();
    }
  }

  private ProjectTree getProjectTree() {
    ProjectPane pane = ProjectPane.getInstance(project);
    if (pane == null) {
      return null;
    }
    return pane.getTree();
  }

  public void dispose() {
    project.getRepository().removeRepositoryListener(repositoryListener);
    if (treeModel != null) {
      treeModel.removeTreeModelListener(treeListener);
    }
    MapSequence.fromMap(ourInstances).removeKey(ProjectHelper.toIdeaProject(project));
    invalidatable.dispose();
  }

  public void attachCloudRoot() {
    ProjectPane projectPane = ProjectPane.getInstance(project);
    final MPSTreeNode root = projectPane.getTree().getRootNode();
    if (root == null) {
      return;
    }
    final DefaultTreeModel model = projectPane.getTree().getModel();

    // wrong parent 
    if (cloudTreeNode.getParent() != null && cloudTreeNode.getParent() != root) {
      cloudTreeNode.removeFromParent();
    }

    // wrong position 
    final int preferedIndex = 3;
    if (cloudTreeNode.getParent() != null && cloudTreeNode.getParent().getIndex(cloudTreeNode) != Math.min(cloudTreeNode.getParent().getChildCount() - 1, preferedIndex)) {
      model.removeNodeFromParent(cloudTreeNode);
    }

    if (cloudTreeNode.getParent() == null) {
      project.getRepository().getModelAccess().runReadAction(new Runnable() {
        public void run() {
          model.insertNodeInto(cloudTreeNode, root, Math.min(root.getChildCount(), preferedIndex));
        }
      });
    }
  }

  public void attachCloudRootIfNotEmpty() {
    if (cloudTreeNode.getChildCount() == 0) {
      if (cloudTreeNode.getParent() != null && cloudTreeNode.getTree() != null) {
        cloudTreeNode.getTree().getModel().removeNodeFromParent(cloudTreeNode);
      }
    } else {
      attachCloudRoot();
    }
  }

  public void forceUpdate() {
    while (cloudTreeNode.getChildCount() > 0) {
      CloudModuleTreeNode moduleTreeNode = (CloudModuleTreeNode) cloudTreeNode.getChildAt(0);
      getProjectTree().getModel().removeNodeFromParent(moduleTreeNode);
      moduleTreeNode.dispose();
    }
    updateModules();
  }

  public void updateModules() {
    final MPSTreeNode root = getProjectTree().getRootNode();
    if (root == null) {
      return;
    }
    final DefaultTreeModel treeModel = getProjectTree().getModel();

    project.getRepository().getModelAccess().runReadAction(new Runnable() {
      public void run() {
        Iterable<SModule> modules = project.getRepository().getModules();
        final Map<SModule, CloudModuleTreeNode> module2treeNode = MapSequence.fromMap(new HashMap<SModule, CloudModuleTreeNode>());
        final Set<CloudModuleTreeNode> treeNodesToRemove = SetSequence.fromSet(new HashSet<CloudModuleTreeNode>());
        Sequence.fromIterable(getChildren(cloudTreeNode)).ofType(CloudModuleTreeNode.class).visitAll(new IVisitor<CloudModuleTreeNode>() {
          public void visit(CloudModuleTreeNode it) {
            SetSequence.fromSet(treeNodesToRemove).addElement(it);
            MapSequence.fromMap(module2treeNode).put(it.getModule(), it);
          }
        });
        int insertAt = 0;
        for (CloudTransientModule webModule : Sequence.fromIterable(modules).ofType(CloudTransientModule.class).sort(new ISelector<CloudTransientModule, String>() {
          public String select(CloudTransientModule it) {
            return it.getModuleName();
          }
        }, true)) {
          CloudModuleTreeNode moduleTreeNode = MapSequence.fromMap(module2treeNode).get(webModule);
          if (moduleTreeNode == null) {
            treeModel.insertNodeInto(new CloudModuleTreeNode(webModule), cloudTreeNode, insertAt);
            insertAt++;
          } else {
            insertAt = moduleTreeNode.getParent().getIndex(moduleTreeNode) + 1;
            MapSequence.fromMap(module2treeNode).removeKey(webModule);
            SetSequence.fromSet(treeNodesToRemove).removeElement(moduleTreeNode);
          }
        }
        SetSequence.fromSet(treeNodesToRemove).visitAll(new IVisitor<CloudModuleTreeNode>() {
          public void visit(CloudModuleTreeNode it) {
            treeModel.removeNodeFromParent(it);
            it.dispose();
          }
        });
        attachCloudRootIfNotEmpty();
      }
    });
  }

  private static Iterable<TreeNode> getChildren(TreeNode parent) {
    List<TreeNode> result = ListSequence.fromList(new ArrayList<TreeNode>());
    for (int i = 0; i < parent.getChildCount(); i++) {
      ListSequence.fromList(result).addElement(parent.getChildAt(i));
    }
    return result;
  }


}
