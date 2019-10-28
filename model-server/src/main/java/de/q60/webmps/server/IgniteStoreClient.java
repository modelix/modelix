package de.q60.webmps.server;

import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;
import org.apache.ignite.Ignite;
import org.apache.ignite.IgniteCache;
import org.apache.ignite.Ignition;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.stream.Collectors;

public class IgniteStoreClient implements IStoreClient {

    private Ignite ignite;
    private IgniteCache<String, String> cache;
    private ScheduledExecutorService timer = Executors.newScheduledThreadPool(1);
    private final SetMultimap<String, IKeyListener> listeners = MultimapBuilder.hashKeys().hashSetValues().build();

    public IgniteStoreClient() {
        this.ignite = Ignition.start(getClass().getResource("ignite.xml"));
        cache = ignite.getOrCreateCache("model");
//        timer.scheduleAtFixedRate(() -> {
//            System.out.println("stats: " + cache.metrics());
//        }, 10, 10, TimeUnit.SECONDS);
    }

    @Override
    public String get(String key) {
        return cache.get(key);
    }

    @Override
    public List<String> getAll(List<String> keys) {
        Map<String, String> entries = cache.getAll(new HashSet<>(keys));
        return keys.stream().map(entries::get).collect(Collectors.toList());
    }

    @Override
    public void put(String key, String value) {
        cache.put(key, value);
        ignite.message().send(key, value);
    }

    @Override
    public void listen(final String key, final IKeyListener listener) {
        synchronized (listeners) {
            boolean wasSubscribed = listeners.containsKey(key);
            listeners.put(key, listener);
            if (!wasSubscribed) {
                ignite.message().localListen(key, (nodeId, value) -> {
                    if (value instanceof String) {
                        synchronized (listeners) {
                            for (IKeyListener l : listeners.get(key)) {
                                try {
                                    l.changed(key, (String) value);
                                } catch (Exception ex) {
                                    System.out.println(ex.getMessage());
                                    ex.printStackTrace();
                                }
                            }
                        }
                    }
                    return true;
                });
            }
        }
    }

    @Override
    public void removeListener(String key, IKeyListener listener) {
        synchronized (listeners) {
            listeners.remove(key, listener);
        }
    }

    @Override
    public long generateId(String key) {
        return cache.invoke(key, new ClientIdProcessor());
    }

    public void dispose() {
        ignite.close();
    }

}
