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

import static org.junit.Assert.assertEquals;

import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONArray;
import org.junit.Test;

public class RestModelServerTest {

    @Test
    public void testCollectUnexistingKey() {
        InMemoryStoreClient storeClient = new InMemoryStoreClient();
        KtorModelServer rms = new KtorModelServer(storeClient);
        JSONArray result = rms.collect("unexistingKey");
        assertEquals(1, result.length());
        assertEquals(new HashSet<>(Arrays.asList("key")), result.getJSONObject(0).keySet());
        assertEquals("unexistingKey", result.getJSONObject(0).get("key"));
    }

    @Test
    public void testCollectExistingKeyNotHash() {
        InMemoryStoreClient storeClient = new InMemoryStoreClient();
        storeClient.put("existingKey", "foo");
        KtorModelServer rms = new KtorModelServer(storeClient);
        JSONArray result = rms.collect("existingKey");
        assertEquals(1, result.length());
        assertEquals(
                new HashSet<>(Arrays.asList("key", "value")), result.getJSONObject(0).keySet());
        assertEquals("existingKey", result.getJSONObject(0).get("key"));
        assertEquals("foo", result.getJSONObject(0).get("value"));
    }

    @Test
    public void testCollectExistingKeyHash() {
        InMemoryStoreClient storeClient = new InMemoryStoreClient();
        storeClient.put("existingKey", "hash-*0123456789-0123456789-0123456789-00001");
        storeClient.put("hash-*0123456789-0123456789-0123456789-00001", "bar");
        KtorModelServer rms = new KtorModelServer(storeClient);
        JSONArray result = rms.collect("existingKey");
        assertEquals(2, result.length());

        var obj = result.getJSONObject(0);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("existingKey", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("value"));

        obj = result.getJSONObject(1);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("key"));
        assertEquals("bar", obj.get("value"));
    }

    @Test
    public void testCollectExistingKeyHashChained() {
        InMemoryStoreClient storeClient = new InMemoryStoreClient();
        storeClient.put("root", "hash-*0123456789-0123456789-0123456789-00001");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00001",
                "hash-*0123456789-0123456789-0123456789-00002");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00002",
                "hash-*0123456789-0123456789-0123456789-00003");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00003",
                "hash-*0123456789-0123456789-0123456789-00004");
        storeClient.put("hash-*0123456789-0123456789-0123456789-00004", "end");
        KtorModelServer rms = new KtorModelServer(storeClient);
        JSONArray result = rms.collect("root");
        assertEquals(5, result.length());

        var obj = result.getJSONObject(0);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("root", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("value"));

        obj = result.getJSONObject(1);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00002", obj.get("value"));

        obj = result.getJSONObject(2);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00002", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00003", obj.get("value"));

        obj = result.getJSONObject(3);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00003", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00004", obj.get("value"));

        obj = result.getJSONObject(4);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00004", obj.get("key"));
        assertEquals("end", obj.get("value"));
    }

    @Test
    public void testCollectExistingKeyHashChainedWithRepetitions() {
        InMemoryStoreClient storeClient = new InMemoryStoreClient();
        storeClient.put("root", "hash-*0123456789-0123456789-0123456789-00001");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00001",
                "hash-*0123456789-0123456789-0123456789-00002");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00002",
                "hash-*0123456789-0123456789-0123456789-00003");
        storeClient.put(
                "hash-*0123456789-0123456789-0123456789-00003",
                "hash-*0123456789-0123456789-0123456789-00001");
        KtorModelServer rms = new KtorModelServer(storeClient);
        JSONArray result = rms.collect("root");
        assertEquals(4, result.length());

        var obj = result.getJSONObject(0);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("root", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("value"));

        obj = result.getJSONObject(1);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00002", obj.get("value"));

        obj = result.getJSONObject(2);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00002", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00003", obj.get("value"));

        obj = result.getJSONObject(3);
        assertEquals(new HashSet<>(Arrays.asList("key", "value")), obj.keySet());
        assertEquals("hash-*0123456789-0123456789-0123456789-00003", obj.get("key"));
        assertEquals("hash-*0123456789-0123456789-0123456789-00001", obj.get("value"));
    }
}
