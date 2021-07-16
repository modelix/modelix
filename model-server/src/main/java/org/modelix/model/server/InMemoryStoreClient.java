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

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
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
    public Map<String, String> getAll(Set<String> keys) {
        return keys.stream().collect(Collectors.toMap(Function.identity(), this::get));
    }

    @Override
    public void put(String key, String value) {
        values.put(key, value);
        listeners.getOrDefault(key, Collections.emptyList()).forEach(l -> l.changed(key, value));
    }

    @Override
    public void putAll(Map<String, String> entries) {
        for (Map.Entry<String, String> entry : entries.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
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

    public void dump(FileWriter fileWriter) throws IOException {
        for (String key : values.keySet()) {
            fileWriter.append(key);
            fileWriter.append("#");
            fileWriter.append(values.get(key));
            fileWriter.append("\n");
        }
    }

    public int load(FileReader fileReader) {
        BufferedReader br = new BufferedReader(fileReader);
        int[] n = new int[] {0};
        br.lines()
                .forEach(
                        line -> {
                            String[] parts = line.split("#", 2);
                            values.put(parts[0], parts[1]);
                            n[0]++;
                        });
        return n[0];
    }
}
