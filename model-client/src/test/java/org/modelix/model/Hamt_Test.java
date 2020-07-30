package org.modelix.model;

import org.junit.Assert;
import org.junit.Test;
import org.modelix.model.lazy.CLHamtInternal;
import org.modelix.model.lazy.CLHamtNode;
import org.modelix.model.lazy.ObjectStoreCache;
import org.modelix.model.persistent.MapBaseStore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Hamt_Test {
  @Test
  public void test_random() {
    Random rand = new Random(1);

    Map<Long, String> expectedMap = new HashMap<>();
    MapBaseStore store = new MapBaseStore();
    ObjectStoreCache storeCache = new ObjectStoreCache(store);
    CLHamtNode hamt = new CLHamtInternal(storeCache);

    for (int i = 0; i < 10000; i++) {
      if (expectedMap.isEmpty() || rand.nextBoolean()) {
        // add entry 
        long key = rand.nextInt(1000);
        String value = Long.toString(rand.nextLong());
        hamt = hamt.put(key, value);
        expectedMap.put(key, value);

      } else {
        List<Long> keys = new ArrayList<>(expectedMap.keySet());
        long key = keys.get(rand.nextInt(keys.size()));
        if (rand.nextBoolean()) {
          // remove entry 
          hamt = hamt.remove(key);
          expectedMap.remove(key);
        } else {
          // replace entry 
          String value = Long.toString(rand.nextLong());
          hamt = hamt.put(key, value);
          expectedMap.put(key, value);
        }
      }

      storeCache.clearCache();
      for (var entry : expectedMap.entrySet()) {
        Assert.assertEquals(entry.getValue(), hamt.get(entry.getKey()));
      }
    }

  }
}
