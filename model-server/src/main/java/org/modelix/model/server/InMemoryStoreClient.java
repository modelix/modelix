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
