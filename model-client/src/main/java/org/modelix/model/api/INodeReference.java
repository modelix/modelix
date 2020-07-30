package org.modelix.model.api;

import org.jetbrains.annotations.Nullable;

/**
 * The relation between an INodeReference and an INode is n to 1.
 * Two INodeReferences that are not equal can resolve to the same INode.
 */
public interface INodeReference {
  @Nullable
  INode resolveNode(INodeResolveContext context);
}
