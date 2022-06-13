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
package org.modelix.authorization

import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.modelix.model.IKeyListener
import org.modelix.model.client.IModelClient
import org.modelix.model.client.RestWebModelClient

private fun getModelServerUrl(): String {
    return listOf("model.server.url", "model_server_url")
        .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
        .filterNotNull()
        .firstOrNull() ?: "http://localhost:28101/"
}

class ModelServerAuthorizationPersistence(val client: IModelClient, val dataKey: String) : IAuthorizationPersistence {

    private var listener: IKeyListener? = null
    private var cachedData: AuthorizationData? = null

    constructor(modelServerUrl: String?, dataKey: String)
        : this(RestWebModelClient(modelServerUrl ?: getModelServerUrl()), dataKey)

    constructor() : this(null, "authorization-data")
    constructor(client: IModelClient) : this(client, "authorization-data")

    @Synchronized
    private fun registerListener() {
        var l = listener
        if (l == null) {
            l = object : IKeyListener {
                override fun changed(key: String, value: String?) {
                    if (value == null) return
                    cachedData = Json.decodeFromString<AuthorizationData>(value)
                }
            }
            listener = l
            client.listen(dataKey, l)
        }
    }

    override fun loadData(): AuthorizationData? {
        registerListener()
        if (cachedData != null) {
            return cachedData
        }
        val serialized = client.get(dataKey) ?: return null
        val data = Json.decodeFromString<AuthorizationData>(serialized)
        this.cachedData = data
        return data
    }

    override fun storeData(data: AuthorizationData) {
        this.cachedData = data
        client.put(dataKey, Json.encodeToString(data))
    }

    @Synchronized
    fun dispose() {
        listener?.let { client.removeListener(dataKey, it) }
        listener = null
    }
}