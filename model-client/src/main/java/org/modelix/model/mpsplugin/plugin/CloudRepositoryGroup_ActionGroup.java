package org.modelix.model.mpsplugin.plugin;



import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.workbench.action.ApplicationPlugin;

public class CloudRepositoryGroup_ActionGroup extends GeneratedActionGroup {
  public static final String ID = "org.modelix.model.mpsplugin.plugin.CloudRepositoryGroup_ActionGroup";

  public CloudRepositoryGroup_ActionGroup(@Nullable ApplicationPlugin plugin) {
    super("CloudRepositoryGroup", ID, plugin);
    setIsInternal(false);
    setPopup(false);
    CloudRepositoryGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.RemoveCloudRepository_Action");
    CloudRepositoryGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.AddTree_Action");
    CloudRepositoryGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.GetAuthorizationToken_Action");
    CloudRepositoryGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.EnterAuthorizationToken_Action");
  }
}
