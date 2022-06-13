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

import org.modelix.model.IKeyListener
import java.io.BufferedReader
import java.io.FileReader
import java.io.FileWriter
import java.io.IOException
import java.util.*
import java.util.function.Consumer
import java.util.function.Function
import java.util.stream.Collectors

class InMemoryStoreClient : IStoreClient {
    private val values: MutableMap<String, String?> = HashMap()
    private val listeners: MutableMap<String?, MutableList<IKeyListener>> = HashMap()
    @Synchronized
    override fun get(key: String): String? {
        return values[key]
    }

    @Synchronized
    override fun getAll(keys: List<String>): List<String?> {
        return keys.stream().map { key: String -> this[key] }.collect(Collectors.toList())
    }

    @Synchronized
    override fun getAll(keys: Set<String>): Map<String, String?> {
        return keys.stream().collect(Collectors.toMap(Function.identity(), Function { key: String -> this[key] }))
    }

    @Synchronized
    override fun put(key: String, value: String?) {
        values[key] = value
        listeners.getOrDefault(key, emptyList<IKeyListener>())
            .forEach(Consumer { l: IKeyListener -> l.changed(key, value) })
    }

    @Synchronized
    override fun putAll(entries: Map<String, String?>) {
        for ((key, value) in entries) {
            put(key, value)
        }
    }

    @Synchronized
    override fun listen(key: String, listener: IKeyListener) {
        if (!listeners.containsKey(key)) {
            listeners[key] = LinkedList()
        }
        listeners[key]!!.add(listener)
    }

    @Synchronized
    override fun removeListener(key: String, listener: IKeyListener) {
        if (!listeners.containsKey(key)) {
            return
        }
        listeners[key]!!.remove(listener)
    }

    override fun generateId(key: String): Long {
        return key.hashCode().toLong()
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