package org.modelix.model.mpsplugin.plugin;

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.ui.Messages;
import org.modelix.model.mpsplugin.CloudRepositories;

public class AddCloudRepository_Action extends BaseAction {
  private static final Icon ICON = null;

  public AddCloudRepository_Action() {
    super("Add Repository", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
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
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    String url = Messages.showInputDialog(event.getData(CommonDataKeys.PROJECT), "URL", "Add Cloud Repository", null);
    if ((url != null && url.length() > 0)) {
      CloudRepositories.getInstance().addRepository(url);
    }
  }
}
