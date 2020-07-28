package org.modelix.model.lazy;



import org.modelix.model.persistent.CPElement;
import org.modelix.model.persistent.CPNode;
import de.q60.mps.shadowmodels.runtime.model.persistent.ITree;

public abstract class CLElement {

  protected final CPElement data;
  protected final CLTree tree;

  public static CLNode create(CLTree tree, CPElement data) {
    if (data == null) {
      return null;
    }
    return new CLNode(tree, (CPNode) data);
  }

  public CLElement(CLTree tree, CPElement data) {
    this.tree = tree;
    this.data = data;
  }

  public CPElement getData() {
    return data;
  }

  public long getId() {
    return data.getId();
  }

  public ITree getTree() {
    return tree;
  }

  public CLNode getParent() {
    return (CLNode) tree.resolveElement(data.getParentId());
  }

  public String getRoleInParent() {
    return data.getRoleInParent();
  }

  public CLElementRef getRef() {
    return new CLElementRef(getId());
  }
}
