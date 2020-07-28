package org.modelix.model.lazy;

import java.util.UUID;
import org.jetbrains.annotations.NotNull;

public class TreeId {
  public static TreeId random() {
    return new TreeId(UUID.randomUUID().toString());
  }

  private final String id;

  public TreeId(@NotNull String id) {
    this.id = id;
  }

  public String getId() {
    return this.id;
  }

  @Deprecated
  public String getMasterBranchKey() {
    return getBranchKey(null);
  }

  public String getBranchKey(String branchName) {
    if ((branchName == null || branchName.length() == 0)) {
      branchName = "master";
    }
    return "branch_" + id + "_" + branchName;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || this.getClass() != o.getClass()) {
      return false;
    }

    TreeId that = (TreeId) o;
    if ((id != null ? !(((Object) id).equals(that.id)) : that.id != null)) {
      return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int result = 0;
    result = 31 * result + ((id != null ? String.valueOf(id).hashCode() : 0));
    return result;
  }

  @Override
  public String toString() {
    return id;
  }
}
