package de.q60.mps.shadowmodels.runtime.model;

@Deprecated
public abstract class __LazyContainment implements __IContainment {

  @Deprecated
  public __LazyContainment() {
  }

  protected abstract __IContainment getContainment();

  @Override
  public INode getParent() {
    return getContainment().getParent();
  }

  @Override
  public String getRoleInParent() {
    return getContainment().getRoleInParent();
  }
}
