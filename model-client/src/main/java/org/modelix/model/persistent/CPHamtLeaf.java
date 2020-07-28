package org.modelix.model.persistent;




public class CPHamtLeaf extends CPHamtNode {

  public final long key;

  /**
   * SHA to CPElement
   */
  public final String value;

  public CPHamtLeaf(long key, String value) {
    this.key = key;
    this.value = value;
  }

  public long getKey() {
    return key;
  }

  public String getValue() {
    return value;
  }

  @Override
  public String serialize() {
    return "L/" + SerializationUtil.longToHex(key) + "/" + value;
  }
}
