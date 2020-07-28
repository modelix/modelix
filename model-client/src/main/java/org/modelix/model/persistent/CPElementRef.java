package org.modelix.model.persistent;




public abstract class CPElementRef {

  /*package*/ CPElementRef() {
  }

  public static CPElementRef local(long elementId) {
    return new LocalRef(elementId);
  }

  public static CPElementRef global(String treeId, long elementId) {
    return new GlobalRef(treeId, elementId);
  }

  public static CPElementRef mps(String pointer) {
    return new MpsRef(pointer);
  }

  public static CPElementRef fromString(String str) {
    if (str.charAt(0) == 'G') {
      int i = str.lastIndexOf("#");
      return global(str.substring(1, i), Long.valueOf(str.substring(i + 1)));
    } else if (str.charAt(0) == 'M') {
      return mps(str.substring(1));
    } else {
      return local(Long.valueOf(str));
    }
  }

  public abstract boolean isGLobal();
  public abstract boolean isLocal();

  public abstract long getElementId();
  public abstract String getTreeId();

  private static class LocalRef extends CPElementRef {
    private final long id;

    private LocalRef(long id1) {
      id = id1;
    }

    @Override
    public String toString() {
      return "" + id;
    }

    @Override
    public boolean isGLobal() {
      return false;
    }

    @Override
    public boolean isLocal() {
      return true;
    }

    @Override
    public long getElementId() {
      return id;
    }

    @Override
    public String getTreeId() {
      throw new RuntimeException("Local reference");
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) {
        return true;
      }
      if (o == null || this.getClass() != o.getClass()) {
        return false;
      }

      LocalRef that = (LocalRef) o;
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

  private static class GlobalRef extends CPElementRef {
    private final String treeId;
    private final long elementId;

    private GlobalRef(String treeId1, long elementId1) {
      treeId = treeId1;
      elementId = elementId1;
    }

    @Override
    public String toString() {
      return "G" + treeId + "#" + elementId;
    }

    @Override
    public boolean isGLobal() {
      return true;
    }

    @Override
    public boolean isLocal() {
      return false;
    }

    @Override
    public long getElementId() {
      return elementId;
    }

    @Override
    public String getTreeId() {
      return treeId;
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) {
        return true;
      }
      if (o == null || this.getClass() != o.getClass()) {
        return false;
      }

      GlobalRef that = (GlobalRef) o;
      if (elementId != that.elementId) {
        return false;
      }
      if ((treeId != null ? !(((Object) treeId).equals(that.treeId)) : that.treeId != null)) {
        return false;
      }

      return true;
    }

    @Override
    public int hashCode() {
      int result = 0;
      result = 31 * result + (int) (elementId ^ (elementId >> 32));
      result = 31 * result + ((treeId != null ? String.valueOf(treeId).hashCode() : 0));
      return result;
    }
  }

  public static class MpsRef extends CPElementRef {
    private final String ref;

    private MpsRef(String ref) {
      this.ref = ref;
    }

    public String getSerializedRef() {
      return ref;
    }

    @Override
    public String toString() {
      return "M" + ref;
    }

    @Override
    public boolean isGLobal() {
      return false;
    }

    @Override
    public boolean isLocal() {
      return false;
    }

    @Override
    public long getElementId() {
      throw new RuntimeException("MPS reference");
    }

    @Override
    public String getTreeId() {
      throw new RuntimeException("MPS reference");
    }

    @Override
    public boolean equals(Object o) {
      if (this == o) {
        return true;
      }
      if (o == null || this.getClass() != o.getClass()) {
        return false;
      }

      MpsRef that = (MpsRef) o;
      if ((ref != null ? !(((Object) ref).equals(that.ref)) : that.ref != null)) {
        return false;
      }

      return true;
    }

    @Override
    public int hashCode() {
      int result = 0;
      result = 31 * result + ((ref != null ? String.valueOf(ref).hashCode() : 0));
      return result;
    }
  }


}
