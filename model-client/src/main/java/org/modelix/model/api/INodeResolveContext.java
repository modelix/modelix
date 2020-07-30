package org.modelix.model.api;

import org.modelix.model.util.ContextValue;

public interface INodeResolveContext {
  ContextValue<INodeResolveContext> CONTEXT_VALUE = new ContextValue<>();
  INode resolve(INodeReference ref);
}
