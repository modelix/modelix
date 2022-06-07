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

import com.google.common.collect.MultimapBuilder
import org.apache.ignite.Ignite
import org.apache.ignite.IgniteCache
import org.apache.ignite.Ignition
import java.io.File
import java.io.FileReader
import java.io.IOException
import java.util.*
import java.util.concurrent.Executors
import java.util.stream.Collectors

class IgniteStoreClient(jdbcConfFile: File?) : IStoreClient {
    private val ignite: Ignite
    private val cache: IgniteCache<String, String?>
    private val timer = Executors.newScheduledThreadPool(1)
    private val listeners = MultimapBuilder.hashKeys().hashSetValues().build<String, IKeyListener>()

    /**
     * Istantiate an IgniteStoreClient
     *
     * @param jdbcConfFile adopt the configuration specified. If it is not specified, configuration
     * from ignite.xml is used
     */
    init {
        if (jdbcConfFile != null) {
            // Given that systemPropertiesMode is set to 2 (SYSTEM_PROPERTIES_MODE_OVERRIDE) in
            // ignite.xml, we can override the properties through system properties
            try {
                val properties = Properties()
                properties.load(FileReader(jdbcConfFile))
                for (pn in properties.stringPropertyNames()) {
                    if (pn.startsWith("jdbc.")) {
                        System.setProperty(pn, properties.getProperty(pn))
                    } else {
                        throw RuntimeException(
                            "Properties not related to jdbc are not permitted. Check file "
                                + jdbcConfFile.absolutePath
                        )
                    }
                }
            } catch (e: IOException) {
                throw RuntimeException(
                    "We are unable to load the JDBC configuration from "
                        + jdbcConfFile.absolutePath,
                    e
                )
            }
        }
        ignite = Ignition.start(javaClass.getResource("ignite.xml"))
        cache = ignite.getOrCreateCache("model")
        //        timer.scheduleAtFixedRate(() -> {
        //            System.out.println("stats: " + cache.metrics());
        //        }, 10, 10, TimeUnit.SECONDS);
    }

    override fun get(key: String): String? {
        return cache[key]
    }

    override fun getAll(keys: List<String>): List<String?> {
        val entries = cache.getAll(HashSet(keys))
        return keys.stream().map { key: String -> entries[key] }.collect(Collectors.toList())
    }

    override fun getAll(keys: Set<String>): Map<String, String?> {
        return cache.getAll(keys)
    }

    override fun put(key: String, value: String?) {
        putAll(Collections.singletonMap(key, value))
    }

    override fun putAll(entries: Map<String, String?>) {
        cache.putAll(entries)
        for ((key, value) in entries) {
            ignite.message().send(key, value)
        }
    }

    override fun listen(key: String?, listener: IKeyListener?) {
        synchronized(listeners) {
            val wasSubscribed = listeners.containsKey(key)
            listeners.put(key, listener)
            if (!wasSubscribed) {
                ignite.message()
                    .localListen(
                        key
                    ) { nodeId: UUID?, value: Any? ->
                        if (value is String) {
                            synchronized(listeners) {
                                for (l in listeners[key]) {
                                    try {
                                        l.changed(key, value as String?)
                                    } catch (ex: Exception) {
                                        println(ex.message)
                                        ex.printStackTrace()
                                    }
                                }
                            }
                        }
                        true
                    }
            }
        }
    }

    override fun removeListener(key: String?, listener: IKeyListener?) {
        synchronized(listeners) { listeners.remove(key, listener) }
    }

    override fun generateId(key: String): Long {
        return cache.invoke(key, ClientIdProcessor())
    }

    fun dispose() {
        ignite.close()
    }
}