package org.modelix.model.api;

import java.util.stream.Stream;

public class NodeUtil {
  public static Stream<INode> getDescendants(INode node, boolean includeSelf) {
    if (includeSelf) {
      return Stream.concat(Stream.of(node), getDescendants(node, false));
    } else {
      return node.getAllChildren().flatMap(it -> getDescendants(it, true));
    }
  }

    public static INode getAncestor(final INode _this, IConcept concept, boolean includeSelf) {
      if (_this == null) {
        return null;
      }
      if (includeSelf && _this.getConcept().isSubconceptOf(concept)) {
        return _this;
      }
      return getAncestor(_this.getParent(), concept, true);
    }
}
