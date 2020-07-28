package de.q60.mps.shadowmodels.runtime.model.persistent;

import de.q60.mps.shadowmodels.runtime.model.INodeReference;
import org.jetbrains.annotations.Nullable;
import de.q60.mps.shadowmodels.runtime.model.INode;
import de.q60.mps.shadowmodels.runtime.model.INodeResolveContext;

public class PNodeReference implements INodeReference {
  private long id;

  public PNodeReference(long id) {
    this.id = id;
  }

  public long getId() {
    return id;
  }

  @Nullable
  @Override
  public INode resolveNode(INodeResolveContext context) {
    if (context instanceof PNodeResolveContext) {
      return new PNodeAdapter(id, ((PNodeResolveContext) context).getBranch());
    } else {
      return context.resolve(this);
    }
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    PNodeReference that = (PNodeReference) o;
    if (id != that.id) {
      return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + (int) (id ^ (id >> 32));
    return result;
  }

  @Override
  public String toString() {
    return "PNodeReference{" + "id=" + id + "}";
  }
}
