package org.modelix.model.api;

import java.util.function.Supplier;

public interface IBranch {
  void runRead(Runnable runnable);
  <T> T computeRead(Supplier<T> computable);
  void runWrite(Runnable runnable);
  <T> T computeWrite(Supplier<T> computable);

  boolean canRead();
  boolean canWrite();

  ITransaction getTransaction();
  IReadTransaction getReadTransaction();
  IWriteTransaction getWriteTransaction();

  void addListener(IBranchListener l);
  void removeListener(IBranchListener l);
}
