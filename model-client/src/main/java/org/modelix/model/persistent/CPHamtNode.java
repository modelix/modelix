package org.modelix.model.persistent;

import java.util.Arrays;
import java.util.function.Function;

public abstract class CPHamtNode {
  public static final Function<String, CPHamtNode> DESERIALIZER = s -> deserialize(s);
  public static CPHamtNode deserialize(String input) {
    String[] parts = input.split("/", -1);

    if ("L".equals(parts[0])) {
      return new CPHamtLeaf(SerializationUtil.longFromHex(parts[1]), parts[2]);
    } else if ("I".equals(parts[0])) {
      return new CPHamtInternal(
              SerializationUtil.intFromHex(parts[1]),
              Arrays.stream(parts[2].split(","))
                      .filter(it -> (it != null && it.length() > 0))
                      .toArray(String[]::new));
    } else {
      throw new RuntimeException("Unknown type: " + parts[0] + ", input: " + input);
    }
  }

  public abstract String serialize();
}
