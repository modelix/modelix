package org.modelix.model.mpsplugin.history;



import javax.swing.JPanel;
import jetbrains.mps.ide.ui.tree.MPSTree;
import java.awt.BorderLayout;
import javax.swing.JScrollPane;
import javax.swing.BorderFactory;
import com.intellij.openapi.actionSystem.DataProvider;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import com.intellij.openapi.actionSystem.ActionGroup;
import jetbrains.mps.workbench.action.ActionUtils;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;

public class CloudView extends JPanel {

  private MPSTree tree = new CloudViewTree();

  public CloudView() {
    super(new BorderLayout());

    JScrollPane scrollPane = new JScrollPane(tree);
    scrollPane.setBorder(BorderFactory.createEmptyBorder());
    add(scrollPane, BorderLayout.CENTER);

    tree.rebuildLater();
  }

  public static class CloudViewTree extends MPSTree implements DataProvider {

    @Override
    public void runRebuildAction(Runnable rebuildAction, boolean saveExpansion) {
      super.runRebuildAction(rebuildAction, saveExpansion);
    }
    @Override
    protected MPSTreeNode rebuild() {
      TextTreeNode root = new TextTreeNode("Loading ...");
      root.add(new CloudRootTreeNode());
      setRootVisible(false);
      return root;
    }
    @Override
    protected ActionGroup createPopupActionGroup(MPSTreeNode node) {
      if (node instanceof CloudRootTreeNode) {
        return ActionUtils.getGroup("org.modelix.model.mpsplugin.plugin.CloudRootGroup_ActionGroup");
      }
      if (node instanceof CloudRepositoryTreeNode) {
        return ActionUtils.getGroup("org.modelix.model.mpsplugin.plugin.CloudRepositoryGroup_ActionGroup");
      }
      if (node instanceof CloudNodeTreeNode) {
        return ActionUtils.getGroup("org.modelix.model.mpsplugin.plugin.CloudNodeGroup_ActionGroup");
      }
      if (node instanceof CloudTreeTreeNode) {
        return ActionUtils.getGroup("org.modelix.model.mpsplugin.plugin.CloudTreeGroup_ActionGroup");
      }
      if (node instanceof CloudBranchTreeNode) {
        return ActionUtils.getGroup("org.modelix.model.mpsplugin.plugin.CloudBranchGroup_ActionGroup");
      }
      return null;
    }
    private <T extends TreeNode> T getSelectedTreeNode(Class<T> nodeClass) {
      TreePath selectionPath = getSelectionPath();
      if (selectionPath == null) {
        return null;
      }
      Object selectedNode = selectionPath.getLastPathComponent();
      return (nodeClass.isInstance(selectedNode) ? nodeClass.cast(selectedNode) : null);
    }
    @Nullable
    @Override
    public Object getData(@NotNull @NonNls String dataId) {
      if (MPSCommonDataKeys.TREE_NODE.is(dataId)) {
        return getSelectedTreeNode(TreeNode.class);
      }
      return null;
    }
  }
}
