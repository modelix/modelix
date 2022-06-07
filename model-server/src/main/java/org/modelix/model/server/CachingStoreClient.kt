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

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.collections4.map.LRUMap;

public class CachingStoreClient implements IStoreClient {
    private static final String NULL_STRING = UUID.randomUUID().toString();

    private IStoreClient store;
    private Map<String, String> cache = new LRUMap<>(1000);

    public CachingStoreClient(IStoreClient store) {
        this.store = store;
    }

    @Override
    public String get(String key) {
        if (allowCaching(key)) {
            String value = cache.get(key);
            if (value == null) {
                value = store.get(key);
                cache.put(key, value);
            }
            return (value == CachingStoreClient.NULL_STRING ? null : value);
        } else {
            return store.get(key);
        }
    }

    @Override
    public List<String> getAll(List<String> keys) {
        return keys.stream().map(this::get).collect(Collectors.toList());
    }

    @Override
    public Map<String, String> getAll(Set<String> keys) {
        return keys.stream().collect(Collectors.toMap(Function.identity(), this::get));
    }

    @Override
    public void put(String key, String value) {
        if (allowCaching(key)) {
            String existingValue = cache.get(key);
            if (Objects.equals(existingValue, value)) {
                return;
            }
            cache.put(key, value);
        }
        store.put(key, value);
    }

    @Override
    public void putAll(Map<String, String> entries) {
        for (Map.Entry<String, String> entry : entries.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void listen(final String key, final IKeyListener listener) {
        store.listen(key, listener);
    }

    @Override
    public void removeListener(String key, IKeyListener listener) {
        store.removeListener(key, listener);
    }

    protected boolean allowCaching(String key) {
        return true;
    }

    @Override
    public long generateId(String key) {
        return store.generateId(key);
    }
}
