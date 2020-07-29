package de.q60.mps.shadowmodels.runtime.model;

import de.q60.mps.incremental.util.ContextValue;

public interface INodeResolveContext {
  ContextValue<INodeResolveContext> CONTEXT_VALUE = new ContextValue<>();
  INode resolve(INodeReference ref);
}
