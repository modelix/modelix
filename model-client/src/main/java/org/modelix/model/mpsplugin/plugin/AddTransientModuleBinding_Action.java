package org.modelix.model.mpsplugin.plugin;

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.modelix.model.mpsplugin.history.CloudNodeTreeNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import de.q60.mps.shadowmodels.runtime.model.IConcept;
import de.q60.mps.shadowmodels.runtime.smodel.SConceptAdapter;
import de.q60.mps.shadowmodels.runtime.model.persistent.PNodeAdapter;
import org.modelix.model.lazy.TreeId;
import org.modelix.model.mpsplugin.history.CloudTreeTreeNode;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import javax.swing.tree.TreeNode;
import org.modelix.model.mpsplugin.CloudRepository;
import org.modelix.model.mpsplugin.history.CloudRepositoryTreeNode;
import org.modelix.model.mpsplugin.TransientModuleBinding;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class AddTransientModuleBinding_Action extends BaseAction {
  private static final Icon ICON = null;

  public AddTransientModuleBinding_Action() {
    super("Bind to Transient Module", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    CloudNodeTreeNode nodeTreeNode = as_9e6bwi_a0a0a4(event.getData(MPSCommonDataKeys.TREE_NODE), CloudNodeTreeNode.class);
    if (nodeTreeNode == null) {
      return false;
    }
    IConcept concept = nodeTreeNode.getConcept();
    if (concept == null) {
      return false;
    }
    if (!(concept.isSubconceptOf(SConceptAdapter.wrap(CONCEPTS.Module$8V)))) {
      return false;
    }
    long nodeId = ((PNodeAdapter) nodeTreeNode.getNode()).getNodeId();
    TreeId treeId = nodeTreeNode.getAncestor(CloudTreeTreeNode.class).getTreeId();
    if (nodeTreeNode.getCloudRepository().hasBinding(treeId, nodeId)) {
      return false;
    }
    return true;
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
    CloudNodeTreeNode nodeTreeNode = (CloudNodeTreeNode) event.getData(MPSCommonDataKeys.TREE_NODE);
    CloudRepository cloudRepository = nodeTreeNode.getAncestor(CloudRepositoryTreeNode.class).getCloudRepository();
    TreeId treeId = nodeTreeNode.getAncestor(CloudTreeTreeNode.class).getTreeId();
    cloudRepository.addBinding(new TransientModuleBinding(treeId, ((PNodeAdapter) nodeTreeNode.getNode()).getNodeId()));
  }
  private static <T> T as_9e6bwi_a0a0a4(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept Module$8V = MetaAdapterFactory.getConcept(0xbf7bc3bb11d42e4L, 0xb16093d72af96397L, 0x69652614fd1c50fL, "de.q60.mps.shadowmodels.runtimelang.structure.Module");
  }
}
