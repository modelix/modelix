package org.modelix.model.mpsplugin.plugin;



import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import jetbrains.mps.workbench.action.ActionAccess;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import javax.swing.tree.TreeNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import org.modelix.model.mpsplugin.history.CloudTreeTreeNode;
import org.modelix.model.mpsplugin.ActiveBranch;
import org.modelix.model.lazy.CLVersion;
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager;

public class LoadHistoryForTree_Action extends BaseAction {
  private static final Icon ICON = null;

  public LoadHistoryForTree_Action() {
    super("Show History", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setActionAccess(ActionAccess.UNDO_PROJECT);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      if (p == null) {
        return false;
      }
    }
    {
      TreeNode p = event.getData(MPSCommonDataKeys.TREE_NODE);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    CloudTreeTreeNode treeNode = (CloudTreeTreeNode) event.getData(MPSCommonDataKeys.TREE_NODE);
    ActiveBranch activeBranch = treeNode.getCloudRepository().getActiveBranch(treeNode.getTreeId());
    CLVersion version = activeBranch.getVersion();
    event.getData(CommonDataKeys.PROJECT).getComponent(ProjectPluginManager.class).getTool(CloudHistoryTool_Tool.class).load(treeNode.getCloudRepository(), treeNode.getTreeId(), version);
  }
}
