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

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.IterableUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.modelix.model.IKeyListener;
import org.modelix.model.IKeyValueStore;
import org.modelix.model.api.IIdGenerator;
import org.modelix.model.client.IModelClient;
import org.modelix.model.client.IdGenerator;
import org.modelix.model.lazy.IDeserializingKeyValueStore;
import org.modelix.model.lazy.ObjectStoreCache;

public class LocalModelClient implements IModelClient {

    private IStoreClient store;
    private int clientId;
    private IIdGenerator idGenerator;
    private IDeserializingKeyValueStore objectCache = new ObjectStoreCache(this);

    public LocalModelClient(IStoreClient store) {
        this.store = store;
        this.clientId = ((int) store.generateId("clientId"));
        this.idGenerator = new IdGenerator(clientId);
    }

    @Nullable
    @Override
    public String get(@NotNull String key) {
        return store.get(key);
    }

    @Override
    public void put(@NotNull String key, @Nullable String value) {
        store.put(key, value);
    }

    @NotNull
    @Override
    public Map<String, String> getAll(@NotNull Iterable<String> keys_) {
        List<String> keys = IterableUtils.toList(keys_);
        List<String> values = store.getAll(keys);
        Map<String, String> result = new LinkedHashMap<>();
        for (int i = 0; i < keys.size(); i++) {
            result.put(keys.get(i), values.get(i));
        }
        return result;
    }

    @Override
    public void putAll(@NotNull Map<String, String> entries) {
        store.putAll(entries);
    }

    @Override
    public void prefetch(@NotNull String key) {
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
    public int getPendingSize() {
        return 0;
    }

    @Override
    public int getClientId() {
        return clientId;
    }

    @NotNull
    @Override
    public IIdGenerator getIdGenerator() {
        return idGenerator;
    }

    @Nullable
    @Override
    public IDeserializingKeyValueStore getStoreCache() {
        return objectCache;
    }

    @Nullable
    @Override
    public IKeyValueStore getAsyncStore() {
        return this;
    }
}
