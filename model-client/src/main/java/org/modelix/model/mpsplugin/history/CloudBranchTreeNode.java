package org.modelix.model.mpsplugin.history;

import jetbrains.mps.ide.ui.tree.TextTreeNode;
import org.modelix.model.mpsplugin.CloudRepository;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelix.model.mpsplugin.CloudIcons;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.modelix.model.lazy.TreeId;
import de.q60.mps.shadowmodels.runtime.model.persistent.IBranch;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class CloudBranchTreeNode extends TextTreeNode {

  private CloudRepository cloudRepository;
  private SNode branchInfo;

  public CloudBranchTreeNode(CloudRepository cloudRepository, SNode branchInfo) {
    super(CloudIcons.BRANCH_ICON, SPropertyOperations.getString(branchInfo, PROPS.name$tAp1));
    this.cloudRepository = cloudRepository;
    this.branchInfo = branchInfo;
    setAllowsChildren(true);
  }

  public SNode getBranchInfo() {
    return this.branchInfo;
  }

  public void updateChildren() {
  }

  @Override
  public void doubleClick() {
    switchBranch();
  }

  public void switchBranch() {
    CloudTreeTreeNode treeTreeNode = this.getAncestor(CloudTreeTreeNode.class);
    TreeId treeId = treeTreeNode.getTreeId();
    final IBranch infoBranch = cloudRepository.getInfoBranch();
    String branchName = infoBranch.computeRead(new _FunctionTypes._return_P0_E0<String>() {
      public String invoke() {
        return SPropertyOperations.getString(getBranchInfo(), PROPS.name$tAp1);
      }
    });
    cloudRepository.getActiveBranch(treeId).switchBranch(branchName);
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$tAp1 = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }
}
