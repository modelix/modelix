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
package org.modelix.workspace.manager

import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.persistent.SerializationUtil

class WorkspaceManager {

    private val modelClient: RestWebModelClient = RestWebModelClient("http://localhost:31963/model/")

    fun newWorkspace(): Workspace {
        val workspace = Workspace(
            id = SerializationUtil.longToHex(modelClient.idGenerator.generate()),
            mpsVersion = "2020.3.5",
            modelRepositories = listOf(ModelRepository(id = "default", bindings = null))
        )
        modelClient.put(key(workspace.id), Json.encodeToString(workspace))
        return workspace
    }

    private fun key(workspaceId: String) = "workspace-$workspaceId"

    fun getWorkspace(id: String): Workspace? {
        val jsonText = modelClient.get(key(id)) ?: return null
        return Json.decodeFromString<Workspace>(jsonText)
    }

    fun update(workspace: Workspace) {
        val id = workspace.id
        modelClient.put(key(id), Json.encodeToString(workspace))
    }
}

