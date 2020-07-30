package org.modelix.model;

import io.vavr.Tuple;
import io.vavr.Tuple2;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.modelix.model.api.ITree;
import org.modelix.model.api.PNodeReference;
import org.modelix.model.lazy.CLTree;
import org.modelix.model.lazy.ObjectStoreCache;
import org.modelix.model.persistent.MapBaseStore;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;

public class Tree_Test {
  private boolean DEBUG = false;
  private Map<Tuple2<Long, String>, List<Long>> expectedChildren;
  @Test
  public void test_random() throws Exception {

    List<String> roles = Arrays.asList("role1", "role2", "role3");
    Random rand = new Random(1906823);
    long idSequence = 1000000L;

    MapBaseStore store = new MapBaseStore();
    ObjectStoreCache storeCache = new ObjectStoreCache(store);
    ITree tree = new CLTree(storeCache);

    Map<Long, Long> expectedParents = new HashMap<>();
    Map<Long, String> expectedRoles = new HashMap<>();
    Set<Long> expectedDeletes = new HashSet<>();

    for (int i = 0; i < 10000; i++) {
      switch (rand.nextInt(5)) {
        case 0:
          // Delete node 
          {
            long nodeToDelete = new TreeTestUtil(tree, rand).getRandomLeafNode();
            if (nodeToDelete != 0L && nodeToDelete != ITree.ROOT_ID) {
              if (DEBUG) {
                System.out.println("Delete " + nodeToDelete);
              }
              tree = tree.deleteNode(nodeToDelete);
              removeChild(expectedParents.get(nodeToDelete), expectedRoles.get(nodeToDelete), nodeToDelete);
              expectedParents.put(nodeToDelete, 0L);
              expectedRoles.remove(nodeToDelete);
              expectedDeletes.add(nodeToDelete);
            }
          }
          break;
        case 1:
          // New node 
          {
            long parent = new TreeTestUtil(tree, rand).getRandomNodeWithRoot();
            if (parent != 0L) {
              long childId = ++idSequence;
              String role = roles.get(rand.nextInt(roles.size()));
              int index = (rand.nextBoolean() ? rand.nextInt((int) tree.getChildren(parent, role).count() + 1) : -1);
              if (DEBUG) {
                System.out.println("AddNew " + childId + " to " + parent + "." + role + "[" + index + "]");
              }
              tree = tree.addNewChild(parent, role, index, childId, null);
              expectedParents.put(childId, parent);
              expectedRoles.put(childId, role);
              insertChild(parent, role, index, childId);
            }
          }
          break;
        case 2:
          // Set property 
          {
            long nodeId = new TreeTestUtil(tree, rand).getRandomNodeWithoutRoot();
            if (nodeId != 0L) {
              String role = roles.get(rand.nextInt(roles.size()));
              String value = Long.toString(rand.nextLong());
              if (DEBUG) {
                System.out.println("SetProperty " + nodeId + "." + role + " = " + value);
              }
              tree = tree.setProperty(nodeId, role, value);
            }
          }

          break;
        case 3:
          // Set reference 
          {
            long sourceId = new TreeTestUtil(tree, rand).getRandomNodeWithoutRoot();
            long targetId = new TreeTestUtil(tree, rand).getRandomNodeWithoutRoot();
            if (sourceId != 0L && targetId != 0L) {
              String role = roles.get(rand.nextInt(roles.size()));
              if (DEBUG) {
                System.out.println("SetReference " + sourceId + "." + role + " = " + targetId);
              }
              tree = tree.setReferenceTarget(sourceId, role, new PNodeReference(targetId));
            }
          }
          break;
        case 4:
          // Move node  
          {
            final TreeTestUtil util = new TreeTestUtil(tree, rand);
            final long childId = util.getRandomNodeWithoutRoot();
            long parent = util.getRandomNode(util
                    .getAllNodes()
                    .filter(it -> util.getAncestors(it, true).noneMatch(it2 -> it2 == childId))
                    .toArray());
            if (childId != 0L && parent != 0L) {
              String role = roles.get(rand.nextInt(roles.size()));
              int index = (rand.nextBoolean() ? rand.nextInt((int) tree.getChildren(parent, role).count() + 1) : -1);
              if (DEBUG) {
                System.out.println("MoveNode " + childId + " to " + parent + "." + role + "[" + index + "]");
              }
              tree = tree.moveChild(parent, role, index, childId);
              long oldParent = expectedParents.get(childId);
              String oldRole = expectedRoles.get(childId);
              if (Objects.equals(oldParent, parent) && Objects.equals(oldRole, role)) {
                int oldIndex = expectedChildren.get(Tuple.of(oldParent, oldRole)).indexOf(childId);
                if (oldIndex < index) {
                  index--;
                }
              }
              removeChild(oldParent, oldRole, childId);
              expectedParents.put(childId, parent);
              expectedRoles.put(childId, role);
              insertChild(parent, role, index, childId);
            }
          }
          break;
      }

      for (var entry : expectedParents.entrySet()) {
        if (Objects.equals(entry.getValue(), 0L)) {
          Assert.assertFalse(tree.containsNode(entry.getKey()));
        } else {
          long expectedParent = entry.getValue();
          long actualParent = tree.getParent(entry.getKey());
          Assert.assertEquals(expectedParent, actualParent);
        }
      }

      for (var entry : expectedChildren.entrySet()) {
        if (expectedDeletes.contains((long) entry.getKey()._1())) {
          continue;
        }
        long[] expected = entry.getValue().stream().mapToLong(it -> it).toArray();
        long[] actual = tree.getChildren((long) entry.getKey()._1(), entry.getKey()._2()).toArray();
        Assert.assertArrayEquals(expected, actual);
      }

      for (var entry : expectedRoles.entrySet()) {
        Assert.assertEquals(entry.getValue(), tree.getRole(entry.getKey()));
      }

      for (long node : expectedDeletes) {
        Assert.assertFalse(tree.containsNode(node));
      }
    }

  }
  @Before
  public void setUp() {
    expectedChildren = new HashMap<>();
  }
  public void insertChild(long parent, String role, int index, long child) {
    List<Long> list = expectedChildren.computeIfAbsent(Tuple.of(parent, role), k -> new ArrayList<>());
    if (index == -1) {
      list.add(child);
    } else {
      list.add(index, child);
    }
  }
  public void removeChild(long parent, String role, long child) {
    List<Long> list = expectedChildren.computeIfAbsent(Tuple.of(parent, role), k -> new ArrayList<>());
    list.remove(child);
  }
}
