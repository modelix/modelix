package org.modelix.model.persistent;

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;

public abstract class CPHamtNode {
  public static final _FunctionTypes._return_P1_E0<? extends CPHamtNode, ? super String> DESERIALIZER = new _FunctionTypes._return_P1_E0<CPHamtNode, String>() {
    public CPHamtNode invoke(String s) {
      return deserialize(s);
    }
  };
  public static CPHamtNode deserialize(String input) {
    String[] parts = input.split("/", -1);

    if ("L".equals(parts[0])) {
      return new CPHamtLeaf(SerializationUtil.longFromHex(parts[1]), parts[2]);
    } else if ("I".equals(parts[0])) {
      return new CPHamtInternal(SerializationUtil.intFromHex(parts[1]), Sequence.fromIterable(Sequence.fromArray(parts[2].split(","))).where(new IWhereFilter<String>() {
        public boolean accept(String it) {
          return (it != null && it.length() > 0);
        }
      }).toGenericArray(String.class));
    } else {
      throw new RuntimeException("Unknown type: " + parts[0] + ", input: " + input);
    }
  }

  public abstract String serialize();
}
