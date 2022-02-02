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

import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.persistent.SerializationUtil
import org.modelix.workspace.build.BuildScriptGenerator
import java.io.File
import java.io.FileOutputStream
import java.io.OutputStream
import java.util.*
import java.util.concurrent.Executors
import java.util.zip.ZipOutputStream
import kotlin.collections.HashMap

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
    private val buildingWorkspaces: MutableList<String> = Collections.synchronizedList(ArrayList())
    private val executor = Executors.newSingleThreadExecutor()

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
        loadCommitHashes(workspace)
        val id = workspace.id
        modelClient.put(key(id), Json.encodeToString(workspace))
        activeWorkspaces[workspace.id] = workspace
    }

    @Synchronized
    private fun loadCommitHashes(workspace: Workspace) {
        workspace.gitRepositories.forEach { repo ->
            if (repo.commitHash.isNullOrEmpty()) {
                // This ensures that all clients work on the same version.
                // Updating to a new version can be done by setting the commitHash back to null
                // to re-trigger this code.
                repo.commitHash = GitRepositoryManager(repo, null, getWorkspaceDirectory(workspace)).updateRepo()
            }
        }
    }

    fun getWorkspaceDirectory(workspace: Workspace) = File(directory, workspace.id)

    @Synchronized
    fun buildWorkspaceDownloadFile(workspaceId: String): File {
        val workspace = getWorkspace(workspaceId)!!
        val downloadFile = getDownloadFile(workspace)
        if (downloadFile.exists()) return downloadFile

        val mavenFolders = workspace.mavenDependencies.map { MavenDownloader(workspace, getWorkspaceDirectory(workspace)).downloadFromMaven(it) }
        val gitManagers = workspace.gitRepositories.map { it to GitRepositoryManager(it, null, getWorkspaceDirectory(workspace)) }
        gitManagers.forEach { it.second.updateRepo() }
        val moduleFolders = mavenFolders + gitManagers.flatMap { it.second.getRootFolders(it.first.paths) }
        BuildScriptGenerator(moduleFolders).buildModules(getWorkspaceDirectory(workspace))
        FileOutputStream(downloadFile).use { fileStream ->
            ZipOutputStream(fileStream).use { zipStream ->
                mavenFolders.forEach {
                    zipStream.copyFiles(it, mapPath = {getWorkspaceDirectory(workspace).toPath().relativize(it)})
                }
                gitManagers.forEach { repo ->
                    repo.second.zip(repo.first.paths, zipStream)
                }
            }
        }
        return downloadFile
    }

    private fun getDownloadFile(workspace: Workspace) =
        File(getWorkspaceDirectory(workspace), "workspace.zip")

    fun buildWorkspaceDownloadFileAsync(workspaceId: String): File? {
        if (buildingWorkspaces.contains(workspaceId)) return null
        val workspace = getWorkspace(workspaceId) ?: throw RuntimeException("Workspace $workspaceId not found")
        val downloadFile = getDownloadFile(workspace)
        if (downloadFile.exists()) return downloadFile

        buildingWorkspaces += workspaceId
        executor.execute {
            try {
                buildWorkspaceDownloadFile(workspaceId)
            } finally {
                buildingWorkspaces -= workspaceId
            }
        }

        return null
    }
}

