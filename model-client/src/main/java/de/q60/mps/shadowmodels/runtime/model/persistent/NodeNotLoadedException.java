package de.q60.mps.shadowmodels.runtime.model.persistent;

public class NodeNotLoadedException extends RuntimeException {
  private IMissingNode missingNode;
  public NodeNotLoadedException(IMissingNode missingNode) {
    super("Node not loaded: " + missingNode);
    this.missingNode = missingNode;
  }
  public IMissingNode getMissingNode() {
    return missingNode;
  }
}
