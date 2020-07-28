package org.modelix.model.operations;




public abstract class AbstractOperation implements IOperation {
  public AbstractOperation() {
  }

  public abstract class Applied {
    @Override
    public String toString() {
      return "applied:" + AbstractOperation.this.toString();
    }
  }
}
