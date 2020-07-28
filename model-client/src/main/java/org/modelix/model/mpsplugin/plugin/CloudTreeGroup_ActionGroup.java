package org.modelix.model.mpsplugin.plugin;

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.workbench.action.ApplicationPlugin;

public class CloudTreeGroup_ActionGroup extends GeneratedActionGroup {
  public static final String ID = "org.modelix.model.mpsplugin.plugin.CloudTreeGroup_ActionGroup";

  public CloudTreeGroup_ActionGroup(@Nullable ApplicationPlugin plugin) {
    super("CloudTreeGroup", ID, plugin);
    setIsInternal(false);
    setPopup(false);
    CloudTreeGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.LoadHistoryForTree_Action");
    CloudTreeGroup_ActionGroup.this.addAction("org.modelix.model.mpsplugin.plugin.RemoveTree_Action");
  }
}
