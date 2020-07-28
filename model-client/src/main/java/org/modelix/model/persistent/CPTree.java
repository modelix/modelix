package org.modelix.model.persistent;

public class CPTree {

  public static CPTree deserialize(String input) {
    String[] parts = input.split("/", -1);
    return new CPTree(parts[0], Long.parseLong(parts[1]), parts[2]);
  }

  public final String id;
  public final long rootId;
  /**
   * SHA to CPHamtNode
   */
  public String idToHash;

  public CPTree(String id1, long rootId1, String idToHash1) {
    id = id1;
    rootId = rootId1;
    idToHash = idToHash1;
  }

  public String serialize() {
    return id + "/" + rootId + "/" + idToHash;
  }
}
