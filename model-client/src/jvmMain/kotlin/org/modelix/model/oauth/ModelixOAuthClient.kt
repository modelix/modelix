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
package org.modelix.model.oauth

import com.google.api.client.auth.oauth2.*
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver
import com.google.api.client.http.GenericUrl
import com.google.api.client.http.HttpTransport
import com.google.api.client.http.javanet.NetHttpTransport
import com.google.api.client.json.JsonFactory
import com.google.api.client.json.gson.GsonFactory
import com.google.api.client.util.store.DataStoreFactory
import com.google.api.client.util.store.MemoryDataStoreFactory


object ModelixOAuthClient {
    private var DATA_STORE_FACTORY: DataStoreFactory = MemoryDataStoreFactory()
    private val SCOPE = "email"
    private val HTTP_TRANSPORT: HttpTransport = NetHttpTransport()
    private val JSON_FACTORY: JsonFactory = GsonFactory()

    fun getTokens(): StoredCredential? {
        return StoredCredential.getDefaultDataStore(DATA_STORE_FACTORY).get("user")
    }

    fun authorize(modelixServerUrl: String): Credential {
        val oidcUrl = modelixServerUrl.trimEnd('/') + "/realms/modelix/protocol/openid-connect"
        val clientId = "external-mps"
        val flow = AuthorizationCodeFlow.Builder(
            BearerToken.authorizationHeaderAccessMethod(),
            HTTP_TRANSPORT,
            JSON_FACTORY,
            GenericUrl("$oidcUrl/token"),
            ClientParametersAuthentication(clientId, null),
            clientId,
            "$oidcUrl/auth"
        )
            .setScopes(listOf(SCOPE))
            .enablePKCE()
            .setDataStoreFactory(DATA_STORE_FACTORY)
            .build()

        val receiver: LocalServerReceiver = LocalServerReceiver.Builder().setHost("127.0.0.1").build()
        return AuthorizationCodeInstalledApp(flow, receiver).authorize("user")
    }
}