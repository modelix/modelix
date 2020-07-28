package de.q60.mps.shadowmodels.runtime.model.persistent;

public interface IReadTransaction extends ITransaction {
  void registerMissingNode(IMissingNode missingNode);
  Iterable<IMissingNode> getMissingNodes();
}
