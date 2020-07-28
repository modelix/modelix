package org.modelix.model.lazy;




public class CLElementRef {
  private long id;

  public CLElementRef(long id) {
    this.id = id;
  }

  public long getId() {
    return id;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    CLElementRef that = (CLElementRef) o;
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
}
