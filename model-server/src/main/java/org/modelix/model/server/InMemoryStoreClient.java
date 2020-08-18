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

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class InMemoryStoreClient implements IStoreClient {

    private final Map<String, String> values = new HashMap<>();
    private final Map<String, List<IKeyListener>> listeners = new HashMap<>();

    @Override
    public String get(String key) {
        return values.get(key);
    }

    @Override
    public List<String> getAll(List<String> keys) {
        return keys.stream().map(this::get).collect(Collectors.toList());
    }

    @Override
    public void put(String key, String value) {
        values.put(key, value);
        listeners.getOrDefault(key, Collections.emptyList()).forEach(l -> l.changed(key, value));
    }

    @Override
    public void listen(String key, IKeyListener listener) {
        if (!listeners.containsKey(key)) {
            listeners.put(key, new LinkedList<>());
        }
        listeners.get(key).add(listener);
    }

    @Override
    public void removeListener(String key, IKeyListener listener) {
        if (!listeners.containsKey(key)) {
            return;
        }
        listeners.get(key).remove(listener);
    }

    @Override
    public long generateId(String key) {
        return key.hashCode();
    }
}
