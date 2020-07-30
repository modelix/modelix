package org.modelix.model.api;

public class PNodeResolveContext implements INodeResolveContext {
  private IBranch branch;

  public PNodeResolveContext(IBranch branch) {
    this.branch = branch;
  }

  public IBranch getBranch() {
    return branch;
  }

  @Override
  public INode resolve(INodeReference ref) {
    if (ref instanceof PNodeReference) {
      return new PNodeAdapter(((PNodeReference) ref).getId(), branch);
    } else {
      return null;
    }
  }
}
