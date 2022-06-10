/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.server;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.junit.Assert;
import org.junit.Test;

public class CachingStoreClientTest {

    class DummyStore implements IStoreClient {

        private List<String> requests = new LinkedList<>();

        public List<String> getRequests() {
            return requests;
        }

        @Override
        public String get(String key) {
            requests.add(key);
            return key + "_value";
        }

        @Override
        public List<String> getAll(List<String> keys) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Map<String, String> getAll(Set<String> keys) {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override
        public void put(String key, String value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(Map<String, String> entries) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void listen(@NotNull String key, @NotNull IKeyListener listener) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void removeListener(@NotNull String key, @NotNull IKeyListener listener) {
            throw new UnsupportedOperationException();
        }

        @Override
        public long generateId(String key) {
            throw new UnsupportedOperationException();
        }
    }

    @Test
    public void getCacheMiss() {
        DummyStore dummyStore = new DummyStore();
        CachingStoreClient csc = new CachingStoreClient(dummyStore);
        Assert.assertEquals("foo_value", csc.get("foo"));
        Assert.assertEquals(Arrays.asList("foo"), dummyStore.requests);
    }

    @Test
    public void getCacheHit() {
        DummyStore dummyStore = new DummyStore();
        CachingStoreClient csc = new CachingStoreClient(dummyStore);
        csc.get("foo");
        dummyStore.requests.clear();
        Assert.assertEquals("foo_value", csc.get("foo"));
        Assert.assertEquals(Arrays.asList(), dummyStore.requests);
    }

    @Test
    public void getAllCacheMiss() {
        DummyStore dummyStore = new DummyStore();
        CachingStoreClient csc = new CachingStoreClient(dummyStore);
        Assert.assertEquals(
                Arrays.asList("foo_value", "bar_value", "zum_value"),
                csc.getAll(Arrays.asList("foo", "bar", "zum")));
        Assert.assertEquals(Arrays.asList("foo", "bar", "zum"), dummyStore.requests);
    }

    @Test
    public void getAllCacheHit() {
        DummyStore dummyStore = new DummyStore();
        CachingStoreClient csc = new CachingStoreClient(dummyStore);
        csc.get("foo");
        csc.get("bar");
        csc.get("zum");
        dummyStore.requests.clear();
        Assert.assertEquals(
                Arrays.asList("foo_value", "bar_value", "zum_value"),
                csc.getAll(Arrays.asList("foo", "bar", "zum")));
        Assert.assertEquals(Arrays.asList(), dummyStore.requests);
    }
}
