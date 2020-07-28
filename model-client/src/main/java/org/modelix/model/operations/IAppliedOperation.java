package org.modelix.model.operations;




public interface IAppliedOperation {
  IOperation getOriginalOp();
  IOperation invert();
}
