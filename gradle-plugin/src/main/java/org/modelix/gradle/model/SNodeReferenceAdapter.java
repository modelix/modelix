package org.modelix.gradle.model;

import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.adapter.structure.FormatException;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.modelix.model.api.INode;
import org.modelix.model.api.INodeReference;
import org.modelix.model.api.INodeResolveContext;
import org.modelix.model.lazy.INodeReferenceSerializer;

public class SNodeReferenceAdapter implements INodeReference {
  private static final Logger LOG = LogManager.getLogger(SNodeReferenceAdapter.class);
  public static final INodeReferenceSerializer SERIALIZER = new INodeReferenceSerializer() {
    @Nullable
    @Override
    public String serialize(@NotNull INodeReference ref) {
      if (ref instanceof SNodeReferenceAdapter) {
        return SNodePointer.serialize(((SNodeReferenceAdapter) ref).ref);
      } else {
        return null;
      }
    }

    @Nullable
    @Override
    public INodeReference deserialize(@NotNull String serialized) {
      try {
        return new SNodeReferenceAdapter(SNodePointer.deserialize(serialized));
      } catch (FormatException ex) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("Failed to deserialize " + serialized, ex);
        }
        return null;
      }
    }
  };

  private SNodeReference ref;
  public SNodeReferenceAdapter(@NotNull SNodeReference ref) {
    this.ref = ref;
  }

  public SNodeReference getReference() {
    return ref;
  }

  @Nullable
  @Override
  public INode resolveNode(INodeResolveContext context) {
    return context.resolve(this);
  }
  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    SNodeReferenceAdapter that = (SNodeReferenceAdapter) o;
    if ((ref != null ? !(ref.equals(that.ref)) : that.ref != null)) {
      return false;
    }

    return true;
  }
  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + ((ref != null ? ((Object) ref).hashCode() : 0));
    return result;
  }

  @Override
  public String toString() {
    return "SNodeReferenceAdapter{" + "ref=" + ref + "}";
  }
}
