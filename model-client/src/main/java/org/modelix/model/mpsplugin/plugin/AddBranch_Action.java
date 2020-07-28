package org.modelix.model.mpsplugin.plugin;



import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import javax.swing.tree.TreeNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.ui.Messages;
import org.modelix.model.mpsplugin.history.CloudBranchTreeNode;
import org.modelix.model.mpsplugin.history.CloudTreeTreeNode;
import org.modelix.model.lazy.TreeId;
import org.modelix.model.mpsplugin.CloudRepository;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Objects;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import de.q60.mps.shadowmodels.runtime.smodel.SNodeAPI;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SConcept;

public class AddBranch_Action extends BaseAction {
  private static final Icon ICON = null;

  public AddBranch_Action() {
    super("New Branch", "", ICON);
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
    final String name = Messages.showInputDialog(event.getData(CommonDataKeys.PROJECT), "Name", "Add Branch", null);
    if ((name == null || name.length() == 0)) {
      return;
    }
    final CloudBranchTreeNode branchTreeNode = ((CloudBranchTreeNode) event.getData(MPSCommonDataKeys.TREE_NODE));
    final CloudTreeTreeNode treeTreeNode = branchTreeNode.getAncestor(CloudTreeTreeNode.class);
    final TreeId treeId = treeTreeNode.getTreeId();
    final CloudRepository cloudRepository = treeTreeNode.getCloudRepository();
    final IBranch infoBranch = cloudRepository.getInfoBranch();
    infoBranch.runWrite(new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        SNode treeInfo = treeTreeNode.getTreeInfo();
        if (ListSequence.fromList(SLinkOperations.getChildren(treeInfo, LINKS.branches$ECCX)).any(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return Objects.equals(SPropertyOperations.getString(it, PROPS.name$tAp1), name);
          }
        })) {
          Messages.showErrorDialog(event.getData(CommonDataKeys.PROJECT), "Branch '" + name + "' already exists", "Add Branch");
          return;
        }
        String versionHash = cloudRepository.getClient().get(treeId.getBranchKey(SPropertyOperations.getString(branchTreeNode.getBranchInfo(), PROPS.name$tAp1)));
        cloudRepository.getClient().put(treeId.getBranchKey(name), versionHash);

        SNode branchInfo = SNodeOperations.cast(SNodeAPI.addNewChild(treeInfo, LINKS.branches$ECCX), CONCEPTS.BranchInfo$mK);
        SPropertyOperations.assign(branchInfo, PROPS.name$tAp1, name);
      }
    });
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink branches$ECCX = MetaAdapterFactory.getContainmentLink(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x62b7d9b07cecbcc0L, 0x62b7d9b07cecbcc4L, "branches");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$tAp1 = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept BranchInfo$mK = MetaAdapterFactory.getConcept(0xb6980ebdf01d459dL, 0xa95238740f6313b4L, 0x62b7d9b07cecbcc1L, "org.modelix.model.runtimelang.structure.BranchInfo");
  }
}
