package org.modelix.model.api;

import org.jetbrains.annotations.NotNull;

public class ReadTransaction extends Transaction implements IReadTransaction {
  private final ITree tree;

  public ReadTransaction(@NotNull ITree tree, IBranch branch) {
    super(branch);
    this.tree = tree;
  }
  @Override
  public ITree getTree() {
    return tree;
  }

}
