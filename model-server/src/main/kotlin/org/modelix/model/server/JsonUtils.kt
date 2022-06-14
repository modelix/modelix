/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.model.server

import org.json.JSONArray
import org.json.JSONObject

fun Iterable<Any?>.toJsonArray(): JSONArray {
    val json = JSONArray()
    for (id in this) {
        json.put(id)
    }
    return json
}

fun JSONObject.entries(): Map<String, Any?> {
    return keySet().associateWith { jsonNullToJavaNull(opt(it)) }
}
fun JSONObject.stringEntries(): Map<String, String?> {
    return keySet().associateWith { optString(it, null) }
}
fun JSONObject.longEntries(): Map<String, Long?> {
    return keySet().associateWith { optNumber(it, null)?.toLong() }
}
fun JSONObject.arrayEntries(): Map<String, JSONArray> {
    return keySet().associateWith { optJSONArray(it) ?: JSONArray() }
}
fun jsonNullToJavaNull(value: Any?): Any? = if (value == JSONObject.NULL) null else value

fun JSONArray.asLongList(): List<Long> {
    return (0 until this.length()).map { getLong(it) }
}

fun buildJSONArray(vararg elements: Any?): JSONArray = elements.toList().toJsonArray()

fun buildJSONObject(body: JSONObject.()->Unit): JSONObject {
    val json = JSONObject()
    body(json)
    return json
}