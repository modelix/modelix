package org.modelix.model;

import org.modelix.model.api.ITree;

import java.util.Random;
import java.util.stream.LongStream;
import java.util.stream.Stream;

public class TreeTestUtil {
  private ITree tree;
  private Random rand;

  public TreeTestUtil(ITree tree, Random rand) {
    this.tree = tree;
    this.rand = rand;
  }

  public LongStream getAncestors(long descendant, boolean includeSelf) {
    if (descendant == 0L) {
      return LongStream.empty();
    }
    if (includeSelf) {
      return LongStream.concat(LongStream.of(descendant), getAncestors(descendant, false));
    } else {
      long parent = tree.getParent(descendant);
      return getAncestors(parent, true);
    }
  }

  public LongStream getAllNodes() {
    return getDescendants(ITree.ROOT_ID, true);
  }

  public LongStream getAllNodesWithoutRoot() {
    return getDescendants(ITree.ROOT_ID, false);
  }

  public LongStream getDescendants(long parent, boolean includeSelf) {
    if (includeSelf) {
      return LongStream.concat(LongStream.of(parent), getDescendants(parent, false));
    } else {
      return tree.getAllChildren(parent).flatMap(it -> getDescendants(it, true));
    }
  }

  public long getRandomNodeWithoutRoot() {
    return getRandomNode(getAllNodesWithoutRoot().toArray());
  }

  public long getRandomNodeWithRoot() {
    return getRandomNode(getAllNodes().toArray());
  }

  public long getRandomNode(long[] nodes) {
    if (nodes.length == 0) {
      return 0L;
    }
    return LongStream.of(nodes).skip(rand.nextInt(nodes.length)).findFirst().orElse(0L);
  }

  public long getRandomLeafNode() {
    return getRandomNode(getAllNodes().filter(it -> !tree.getAllChildren(it).iterator().hasNext()).toArray());
  }
}
