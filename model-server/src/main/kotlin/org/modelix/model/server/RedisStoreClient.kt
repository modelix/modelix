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
package org.modelix.model.server

import io.lettuce.core.RedisClient
import io.lettuce.core.api.StatefulRedisConnection
import io.lettuce.core.api.sync.RedisCommands
import org.modelix.model.IKeyListener
import java.util.function.Function
import java.util.stream.Collectors

class RedisStoreClient : IStoreClient {
    private var redisClient: RedisClient
    private var connection: StatefulRedisConnection<String, String?>
    private var syncCommands: RedisCommands<String, String?>? = null

    init {
        val thread = Thread.currentThread()
        val prevLoader = thread.contextClassLoader
        thread.contextClassLoader = javaClass.classLoader
        try {
            var redisUrl = System.getenv("REDIS_URL")
            if (redisUrl == null || redisUrl.isEmpty()) redisUrl = "redis://localhost:6379"
            println("Connecting to redis using $redisUrl")
            redisClient = RedisClient.create(redisUrl)
            connection = redisClient.connect()
            syncCommands = connection.sync()
        } finally {
            thread.contextClassLoader = prevLoader
        }
    }

    fun dispose() {
        connection.close()
        redisClient.shutdown()
    }

    override fun get(key: String): String? {
        return syncCommands!![key]
    }

    override fun getAll(keys: List<String>): List<String?> {
        return keys.stream().map { key: String -> this[key] }.collect(Collectors.toList())
    }

    override fun getAll(keys: Set<String>): Map<String, String?> {
        return keys.stream().collect(Collectors.toMap(Function.identity(), Function { key: String -> this[key] }))
    }

    override fun put(key: String, value: String?) {
        syncCommands!![key] = value
    }

    override fun putAll(entries: Map<String, String?>) {
        for ((key, value) in entries) {
            put(key, value)
        }
    }

    override fun listen(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }

    override fun removeListener(key: String, listener: IKeyListener) {
        throw UnsupportedOperationException()
    }

    override fun generateId(key: String): Long {
        return syncCommands!!.incr(key)
    }
}