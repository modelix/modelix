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
package org.modelix.workspaces

import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.modelix.authorization.serviceAccountTokenProvider
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.persistent.HashUtil
import org.modelix.model.persistent.SerializationUtil

class WorkspacePersistence() {
    private val WORKSPACE_LIST_KEY = "workspaces"
    private val modelClient: RestWebModelClient = RestWebModelClient(getModelServerUrl(), authTokenProvider = serviceAccountTokenProvider)

    fun generateId(): String = SerializationUtil.longToHex(modelClient.idGenerator.generate())

    fun getWorkspaceIds(): Set<String> {
        val idString = modelClient.get(WORKSPACE_LIST_KEY)
        if (idString.isNullOrEmpty()) return setOf()
        return idString.split(",").toSet()
    }

    private fun setWorkspaceIds(ids: Set<String>) {
        modelClient.put(WORKSPACE_LIST_KEY, ids.sorted().joinToString(","))
    }

    @Synchronized
    fun newWorkspace(): Workspace {
        val workspace = Workspace(
            id = generateId(),
            modelRepositories = listOf(ModelRepository(id = "default"))
        )
        modelClient.put(key(workspace.id), Json.encodeToString(workspace))
        setWorkspaceIds(getWorkspaceIds() + workspace.id)
        return workspace
    }

    @Synchronized
    fun removeWorkspace(workspaceId: String) {
        setWorkspaceIds(getWorkspaceIds() - workspaceId)
    }

    private fun key(workspaceId: String) = "workspace-$workspaceId"

    fun getWorkspaceForId(id: String): Pair<Workspace, WorkspaceHash>? {
        require(id.matches(Regex("[a-f0-9]{9,16}"))) { "Invalid workspace ID: $id" }
        return getWorkspaceForIdOrHash(id)
    }

    @Synchronized
    fun getWorkspaceForIdOrHash(idOrHash: String): Pair<Workspace, WorkspaceHash>? {
        val hash: WorkspaceHash
        val json: String
        if (HashUtil.isSha256(idOrHash)) {
            hash = WorkspaceHash(idOrHash)
            json = modelClient.get(hash.toString()) ?: return null
        } else {
            val id = idOrHash
            require(id.matches(Regex("[a-f0-9]{9,16}"))) { "Invalid workspace ID: $id" }

            val hashOrJson = modelClient.get(key(id)) ?: return null
            if (HashUtil.isSha256(hashOrJson)) {
                hash = WorkspaceHash(hashOrJson)
                json = modelClient.get(hash.toString()) ?: return null
            } else {
                // migrate old entry
                json = hashOrJson
                hash = WorkspaceHash(HashUtil.sha256(json))
                modelClient.put(hash.toString(), json)
                modelClient.put(key(id), hash.toString())
            }
        }
        return Json.decodeFromString<Workspace>(json) to hash
    }

    @Synchronized
    fun getWorkspaceForHash(hash: WorkspaceHash): Workspace? {
        val json = modelClient.get(hash.toString()) ?: return null
        return Json.decodeFromString<Workspace>(json)
    }

    @Synchronized
    fun update(workspace: Workspace): WorkspaceHash {
        val mpsVersion = workspace.mpsVersion
        require(mpsVersion == null || mpsVersion.matches(Regex("""20\d\d\.\d"""))) {
            "Invalid major MPS version: '$mpsVersion'. Examples for valid values: '2020.3', '2021.1', '2021.2'."
        }
        workspace.gitRepositories.forEach { it.credentials = it.credentials?.encrypt() }
        val id = workspace.id
        val json = Json.encodeToString(workspace)
        val hash = WorkspaceHash(HashUtil.sha256(json))
        modelClient.put(hash.toString(), json)
        modelClient.put(key(id), hash.toString())
        setWorkspaceIds(getWorkspaceIds() + workspace.id)
        return hash
    }

    fun dispose() {
        modelClient.dispose()
    }

    fun getModelServerUrl(): String {
        return listOf("model.server.url", "model_server_url")
            .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
            .filterNotNull()
            .firstOrNull() ?: "http://localhost:31963/model/"
    }
}