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
import java.io.File
import java.io.OutputStream
import java.util.zip.ZipOutputStream

class WorkspaceManager {
    private val modelClient: RestWebModelClient = RestWebModelClient("http://localhost:31963/model/")
    private val activeWorkspaces: MutableMap<String, Workspace> = HashMap()
    private val directory: File = run {
        // The workspace will contain git repositories. Avoid cloning them into an existing repository.
        val ancestors = mutableListOf(File(".").absoluteFile)
        while (ancestors.last().parentFile != null) ancestors += ancestors.last().parentFile
        val parentRepoDir = ancestors.lastOrNull { File(it, ".git").exists() }
        val workspacesDir = if (parentRepoDir != null) File(parentRepoDir.parent, "modelix-workspaces") else File("modelix-workspaces")
        workspacesDir.absoluteFile
    }

    init {
        println("workspaces directory: $directory")
    }

    @Synchronized
    fun newWorkspace(): Workspace {
        val workspace = Workspace(
            id = SerializationUtil.longToHex(modelClient.idGenerator.generate()),
            mpsVersion = "2020.3.5",
            modelRepositories = listOf(ModelRepository(id = "default"))
        )
        modelClient.put(key(workspace.id), Json.encodeToString(workspace))
        activeWorkspaces[workspace.id] = workspace
        return workspace
    }

    private fun key(workspaceId: String) = "workspace-$workspaceId"

    @Synchronized
    fun getWorkspace(id: String): Workspace? {
        var workspace = activeWorkspaces[id]
        if (workspace != null) return workspace
        val json = modelClient.get(key(id))
        if (json == null) return null
        workspace = Json.decodeFromString<Workspace>(json)
        activeWorkspaces[workspace.id] = workspace
        return workspace
    }

    @Synchronized
    fun update(workspace: Workspace) {
        val id = workspace.id
        modelClient.put(key(id), Json.encodeToString(workspace))
        activeWorkspaces[workspace.id] = workspace
    }

    fun getWorkspaceDirectory(workspace: Workspace) = File(directory, workspace.id)

    @Synchronized
    fun downloadModules(workspaceId: String, stream: OutputStream) {
        val workspace = getWorkspace(workspaceId)!!
        ZipOutputStream(stream).use { zipStream ->
            workspace.gitRepositories.forEach { repo ->
                val repoManager = GitRepositoryManager(repo, null, getWorkspaceDirectory(workspace))
                repoManager.zip(repo.paths, zipStream)
            }
        }
    }
}

