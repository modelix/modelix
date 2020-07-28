package org.modelix.model.mpsplugin.plugin;

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.workbench.action.ApplicationPlugin;

public class CloudNodeGroup_ActionGroup extends GeneratedActionGroup {
  public static final String ID = "org.modelix.model.mpsplugin.plugin.CloudNodeGroup_ActionGroup";

  public CloudNodeGroup_ActionGroup(@Nullable ApplicationPlugin plugin) {
    super("CloudNodeGroup", ID, plugin);
    setIsInternal(false);
    setPopup(false);
    CloudNodeGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.AddModuleNode_Action");
    CloudNodeGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.AddModelNode_Action");
    CloudNodeGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.AddTransientModuleBinding_Action");
  }
}
