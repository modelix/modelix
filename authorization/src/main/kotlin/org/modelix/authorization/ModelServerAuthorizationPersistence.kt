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
import org.modelix.model.client.IModelClient
import org.modelix.model.client.RestWebModelClient

private fun getModelServerUrl(): String {
    return listOf("model.server.url", "model_server_url")
        .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
        .filterNotNull()
        .firstOrNull() ?: "http://localhost:28101/"
}

class ModelServerAuthorizationPersistence(val client: IModelClient, val dataKey: String) : IAuthorizationPersistence {

    constructor(modelServerUrl: String?, dataKey: String)
        : this(RestWebModelClient(modelServerUrl ?: getModelServerUrl()), dataKey)

    constructor() : this(null, "authorization-data")

    override fun loadData(): AuthorizationData? {
        val serialized = client.get(dataKey) ?: return null
        return Json.decodeFromString<AuthorizationData>(serialized)
    }

    override fun storeData(data: AuthorizationData) {
        client.put(dataKey, Json.encodeToString(data))
    }
}