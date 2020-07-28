package org.modelix.model.operations;



import de.q60.mps.shadowmodels.runtime.model.persistent.IWriteTransaction;

public interface IOperation {
  IAppliedOperation apply(IWriteTransaction transaction);
  /**
   * The 'previous' operation is the one that is inserted before this operation
   * in the history of operations applied to the model.
   * 'this' operation was created for a version that doesn't have 'previous' applied and now
   * 'this' needs to be replaced with an operation that applies the same intended change
   * on a model that was modified by 'previous' in the mean time.
   */
  IOperation transform(IOperation previous);
}
