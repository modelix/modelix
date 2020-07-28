package org.modelix.model.persistent;

import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.internal.collections.runtime.Sequence;

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
    return "I/" + SerializationUtil.intToHex(bitmap) + "/" + IterableUtils.join(Sequence.fromIterable(Sequence.fromArray(children)), ",");
  }
}
