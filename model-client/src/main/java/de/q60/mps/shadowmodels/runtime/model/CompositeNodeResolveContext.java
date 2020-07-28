package de.q60.mps.shadowmodels.runtime.model;

import java.util.List;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public class CompositeNodeResolveContext implements INodeResolveContext {
  public static void withAdditionalContext(INodeResolveContext context, Runnable runnable) {
    INodeResolveContext activeContext = INodeResolveContext.CONTEXT_VALUE.getValue();
    if (activeContext == null) {
      INodeResolveContext.CONTEXT_VALUE.runWith(context, runnable);
    } else {
      INodeResolveContext.CONTEXT_VALUE.runWith(new CompositeNodeResolveContext(context, activeContext), runnable);
    }
  }

  private List<INodeResolveContext> contexts;

  public CompositeNodeResolveContext(Iterable<INodeResolveContext> contexts) {
    this.contexts = Sequence.fromIterable(contexts).toListSequence();
  }

  public CompositeNodeResolveContext(INodeResolveContext... contexts) {
    this(Sequence.fromArray(contexts));
  }

  @Override
  public INode resolve(final INodeReference ref) {
    return ListSequence.fromList(contexts).select(new ISelector<INodeResolveContext, INode>() {
      public INode select(INodeResolveContext it) {
        return it.resolve(ref);
      }
    }).findFirst(new IWhereFilter<INode>() {
      public boolean accept(INode it) {
        return it != null;
      }
    });
  }
}
