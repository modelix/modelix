package de.q60.mps.shadowmodels.runtime.model;

import java.util.stream.Stream;

public class NodeUtil {
  public static Stream<INode> getDescendants(INode node, boolean includeSelf) {
    if (includeSelf) {
      return Stream.concat(Stream.of(node), getDescendants(node, false));
    } else {
      return node.getAllChildren().flatMap(it -> getDescendants(it, true));
    }
  }
}
