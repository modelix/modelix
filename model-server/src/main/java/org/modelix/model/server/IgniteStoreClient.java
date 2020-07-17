/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
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

import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.stream.Collectors;
import javax.annotation.Nullable;
import org.apache.ignite.Ignite;
import org.apache.ignite.IgniteCache;
import org.apache.ignite.Ignition;

public class IgniteStoreClient implements IStoreClient {

    private Ignite ignite;
    private IgniteCache<String, String> cache;
    private ScheduledExecutorService timer = Executors.newScheduledThreadPool(1);
    private final SetMultimap<String, IKeyListener> listeners =
            MultimapBuilder.hashKeys().hashSetValues().build();

    public IgniteStoreClient(@Nullable File jdbcConfFile) {
        if (jdbcConfFile != null) {
            // Given that systemPropertiesMode is set to 2 (SYSTEM_PROPERTIES_MODE_OVERRIDE) in
            // ignite.xml, we can override
            // the properties through system properties
            try {
                Properties properties = new Properties();
                properties.load(new FileReader(jdbcConfFile));
                for (String pn : properties.stringPropertyNames()) {
                    if (pn.startsWith("jdbc.")) {
                        System.setProperty(pn, properties.getProperty(pn));
                    } else {
                        throw new RuntimeException(
                                "Properties not related to jdbc are not permitted. Check file "
                                        + jdbcConfFile.getAbsolutePath());
                    }
                }
            } catch (IOException e) {
                throw new RuntimeException(
                        "We are unable to load the JDBC configuration from "
                                + jdbcConfFile.getAbsolutePath(),
                        e);
            }
        }

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
                ignite.message()
                        .localListen(
                                key,
                                (nodeId, value) -> {
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
