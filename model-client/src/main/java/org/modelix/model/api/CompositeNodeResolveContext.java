package org.modelix.model.api;

import org.modelix.model.util.StreamUtils;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

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
    this.contexts = StreamUtils.INSTANCE.toStream(contexts).collect(Collectors.toList());
  }

  public CompositeNodeResolveContext(INodeResolveContext... contexts) {
    this(Arrays.asList(contexts));
  }

  @Override
  public INode resolve(final INodeReference ref) {
    return contexts.stream().map(it -> it.resolve(ref)).filter(Objects::nonNull).findFirst().orElse(null);
  }
}
