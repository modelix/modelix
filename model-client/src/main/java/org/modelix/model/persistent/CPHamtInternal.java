package org.modelix.model.persistent;

import java.util.Arrays;

public class CPHamtInternal extends CPHamtNode {

  public int bitmap;

  /**
   * SHA to CPHamtNode
   */
  public final String[] children;

  public CPHamtInternal(int bitmap, String[] childHashes) {
    this.bitmap = bitmap;
    this.children = childHashes;
  }

  @Override
  public String serialize() {
    return "I/" + SerializationUtil.intToHex(bitmap) + "/" + Arrays.stream(children).reduce((a, b) -> a + ", " + b);
  }
}
