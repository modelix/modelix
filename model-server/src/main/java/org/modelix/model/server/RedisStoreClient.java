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

import io.lettuce.core.RedisClient;
import io.lettuce.core.api.StatefulRedisConnection;
import io.lettuce.core.api.sync.RedisCommands;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;

public class RedisStoreClient implements IStoreClient {
    private RedisClient redisClient;
    private StatefulRedisConnection<String, String> connection;
    private RedisCommands<String, String> syncCommands;

    public RedisStoreClient() {
        Thread thread = Thread.currentThread();
        ClassLoader prevLoader = thread.getContextClassLoader();
        thread.setContextClassLoader(getClass().getClassLoader());
        try {
            String redisUrl = System.getenv("REDIS_URL");
            if (redisUrl == null || redisUrl.isEmpty()) redisUrl = "redis://localhost:6379";
            System.out.println("Connecting to redis using " + redisUrl);
            redisClient = RedisClient.create(redisUrl);
            connection = redisClient.connect();
            syncCommands = connection.sync();

        } finally {
            thread.setContextClassLoader(prevLoader);
        }
    }

    public void dispose() {
        connection.close();
        redisClient.shutdown();
    }

    @Override
    public String get(String key) {
        return syncCommands.get(key);
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
        syncCommands.set(key, value);
    }

    @Override
    public void putAll(Map<String, String> entries) {
        for (Map.Entry<String, String> entry : entries.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void listen(final String key, final IKeyListener listener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void removeListener(String key, IKeyListener listener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public long generateId(String key) {
        return syncCommands.incr(key);
    }
}
