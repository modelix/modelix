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

import ch.qos.logback.classic.Logger
import org.modelix.model.IKeyListener
import org.slf4j.LoggerFactory
import java.io.BufferedReader
import java.io.FileReader
import java.io.FileWriter
import java.io.IOException
import java.util.*

class InMemoryStoreClient : IStoreClient {
    companion object {
        private val LOG = LoggerFactory.getLogger(InMemoryStoreClient::class.java)
    }

    private val values: MutableMap<String, String?> = HashMap()
    private val listeners: MutableMap<String?, MutableSet<IKeyListener>> = HashMap()
    @Synchronized
    override fun get(key: String): String? {
        return values[key]
    }

    @Synchronized
    override fun getAll(keys: List<String>): List<String?> {
        return keys.map { values[it] }
    }

    @Synchronized
    override fun getAll(keys: Set<String>): Map<String, String?> {
        return keys.associateWith { values[it] }
    }

    @Synchronized
    override fun put(key: String, value: String?) {
        values[key] = value
        listeners[key]?.toList()?.forEach {
            try {
                it.changed(key, value)
            } catch (ex : Exception) {
                println(ex.message)
                ex.printStackTrace()
                LOG.error("Failed to notify listeners after put '$key' = '$value'", ex)
            }
        }
    }

    @Synchronized
    override fun putAll(entries: Map<String, String?>) {
        for ((key, value) in entries) {
            put(key, value)
        }
    }

    @Synchronized
    override fun listen(key: String, listener: IKeyListener) {
        listeners.getOrPut(key) { LinkedHashSet() }.add(listener)
    }

    @Synchronized
    override fun removeListener(key: String, listener: IKeyListener) {
        listeners[key]?.remove(listener)
    }

    @Synchronized
    override fun generateId(key: String): Long {
        val id = try {
            get(key)?.toLong() ?: 0L
        } catch (e : NumberFormatException) {
            0L
        } + 1L
        put(key, id.toString())
        return id
    }

    @Synchronized
    @Throws(IOException::class)
    fun dump(fileWriter: FileWriter) {
        for (key in values.keys) {
            fileWriter.append(key)
            fileWriter.append("#")
            fileWriter.append(values[key])
            fileWriter.append("\n")
        }
    }

    @Synchronized
    fun load(fileReader: FileReader?): Int {
        val br = BufferedReader(fileReader)
        val n = intArrayOf(0)
        br.lines()
            .forEach { line: String ->
                val parts = line.split("#".toRegex(), limit = 2).toTypedArray()
                values[parts[0]] = parts[1]
                n[0]++
            }
        return n[0]
    }
}