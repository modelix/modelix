package org.modelix.model.mpsplugin.plugin;

import jetbrains.mps.workbench.action.BaseAction;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.modelix.model.mpsplugin.history.CloudRepositoryTreeNode;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import javax.swing.tree.TreeNode;
import org.modelix.model.mpsplugin.CloudRepository;
import java.awt.Desktop;
import java.net.URI;
import org.apache.log4j.Level;
import com.intellij.openapi.ui.Messages;

public class GetAuthorizationToken_Action extends BaseAction {
  private static final Logger LOG = LogManager.getLogger(GetAuthorizationToken_Action.class);
  private static final Icon ICON = null;

  public GetAuthorizationToken_Action() {
    super("Get Authorization Token", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    return event.getData(MPSCommonDataKeys.TREE_NODE) instanceof CloudRepositoryTreeNode;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    this.setEnabledState(event.getPresentation(), this.isApplicable(event, _params));
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
    CloudRepository cloudRepository = ((CloudRepositoryTreeNode) event.getData(MPSCommonDataKeys.TREE_NODE)).getCloudRepository();

    String url = cloudRepository.getBaseUrl() + "generateToken";
    try {
      Desktop.getDesktop().browse(new URI(url));
    } catch (Exception ex) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("", ex);
      }
      Messages.showErrorDialog(event.getData(CommonDataKeys.PROJECT), "Failed to open " + url + ": " + ex.getMessage(), "Get Authorization Token");
    }
  }
}
