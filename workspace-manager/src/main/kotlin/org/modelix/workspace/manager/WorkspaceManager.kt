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
import org.apache.commons.io.FileUtils
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.persistent.SerializationUtil
import org.modelix.workspace.build.BuildScriptGenerator
import java.io.File
import java.io.FileOutputStream
import java.util.*
import java.util.concurrent.Executors
import java.util.zip.ZipOutputStream
import kotlin.collections.HashMap

class WorkspaceManager {
    private val WORKSPACE_LIST_KEY = "workspaces"
    private val mpsHome: File = findMpsHome()
    private val modelClient: RestWebModelClient = RestWebModelClient(getModelServerUrl())
    private val activeWorkspaces: MutableMap<String, Workspace> = HashMap()
    private val directory: File = run {
        // The workspace will contain git repositories. Avoid cloning them into an existing repository.
        val ancestors = mutableListOf(File(".").absoluteFile)
        while (ancestors.last().parentFile != null) ancestors += ancestors.last().parentFile
        val parentRepoDir = ancestors.lastOrNull { File(it, ".git").exists() }
        val workspacesDir = if (parentRepoDir != null) File(parentRepoDir.parent, "modelix-workspaces") else File("modelix-workspaces")
        workspacesDir.absoluteFile
    }
    private val buildJobs: MutableMap<String, WorkspaceBuildJob> = Collections.synchronizedMap(HashMap())
    private val executor = Executors.newSingleThreadExecutor()

    init {
        println("workspaces directory: $directory")
    }

    private fun findMpsHome(): File {
        println("env: " + System.getenv())
        println("properties: " + System.getProperties())
        val path = listOf("mps.home", "mps_home")
            .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
            .firstOrNull { !it.isNullOrEmpty() }
        if (!path.isNullOrEmpty()) {
            val file = File(path)
            if (!file.exists()) throw RuntimeException("${file.canonicalPath} doesn't exist")
            return file
        }

        val file = File("../artifacts/mps")
        if (!file.exists()) throw RuntimeException("MPS not found at ${file.canonicalPath}")
        return file
    }

    private fun getModelServerUrl(): String {
        return listOf("model.server.url", "model_server_url")
            .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
            .filterNotNull()
            .firstOrNull() ?: "http://localhost:31963/model/"
    }

    @Synchronized
    fun getWorkspaceIds(): Set<String> {
        val idString = modelClient.get(WORKSPACE_LIST_KEY)
        if (idString.isNullOrEmpty()) return setOf()
        return idString.split(",").toSet()
    }

    @Synchronized
    fun setWorkspaceIds(ids: Set<String>) {
        modelClient.put(WORKSPACE_LIST_KEY, ids.sorted().joinToString(","))
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
        setWorkspaceIds(getWorkspaceIds() + workspace.id)
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
        //loadCommitHashes(workspace)
        val id = workspace.id
        modelClient.put(key(id), Json.encodeToString(workspace))
        activeWorkspaces[workspace.id] = workspace
        setWorkspaceIds(getWorkspaceIds() + workspace.id)
        synchronized(buildJobs) {
            buildJobs.remove(id)
            FileUtils.deleteQuietly(getDownloadFile(workspace))
        }
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

    fun newUploadFolder(): File {
        val id = SerializationUtil.longToHex(modelClient.idGenerator.generate())
        val folder = getUploadFolder(id)
        folder.mkdirs()
        return folder
    }

    fun getUploadFolder(id: String) = File(File(directory, "uploads"), id)

    private fun buildWorkspaceDownloadFile(job: WorkspaceBuildJob): File {
        val workspace = job.workspace
        val downloadFile = job.downloadFile

        val mavenFolders = workspace.mavenDependencies.map { MavenDownloader(workspace, getWorkspaceDirectory(workspace)).downloadFromMaven(it, job.outputHandler) }
        val gitManagers = workspace.gitRepositories.map { it to GitRepositoryManager(it, null, getWorkspaceDirectory(workspace)) }
        gitManagers.forEach { it.second.updateRepo() }
        val moduleFolders = mavenFolders +
            gitManagers.flatMap { it.second.getRootFolders(it.first.paths) } +
            workspace.uploads.map { getUploadFolder(it) } +
            mpsHome
        try {
            BuildScriptGenerator(moduleFolders).buildModules(File(getWorkspaceDirectory(workspace), "mps-build-script.xml"), job.outputHandler)
        } catch (e: Exception) {
            job.status = WorkspaceBuildStatus.FailedBuild
            job.appendException(e)
        }
        FileOutputStream(downloadFile).use { fileStream ->
            ZipOutputStream(fileStream).use { zipStream ->
                mavenFolders.forEach {
                    zipStream.copyFiles(it, mapPath = {getWorkspaceDirectory(workspace).toPath().relativize(it)})
                }
                gitManagers.forEach { repo ->
                    repo.second.zip(repo.first.paths, zipStream)
                }
                workspace.uploads.forEach { uploadId ->
                    zipStream.copyFiles(getUploadFolder(uploadId), mapPath = {directory.toPath().relativize(it)})
                }
            }
        }
        return downloadFile
    }

    fun getDownloadFile(workspace: Workspace) =
        File(getWorkspaceDirectory(workspace), "workspace.zip")

    fun buildWorkspaceDownloadFileAsync(workspaceId: String): WorkspaceBuildJob {
        val workspace = getWorkspace(workspaceId) ?: throw RuntimeException("Workspace $workspaceId not found")

        val job: WorkspaceBuildJob
        synchronized(buildJobs) {
            job = buildJobs.getOrPut(workspace.id) { WorkspaceBuildJob(workspace, getDownloadFile(workspace)) }
        }
        synchronized(job) {
            if (job.status == WorkspaceBuildStatus.New) {
                job.status = WorkspaceBuildStatus.Queued
                executor.execute {
                    try {
                        job.status = WorkspaceBuildStatus.Running
                        buildWorkspaceDownloadFile(job)
                        job.status = if (job.status == WorkspaceBuildStatus.FailedBuild)
                                         WorkspaceBuildStatus.ZipSuccessful
                                     else
                                         WorkspaceBuildStatus.AllSuccessful
                    } catch (e: Throwable) {
                        job.status = WorkspaceBuildStatus.FailedZip
                        job.appendException(e)
                    }
                }
            }
        }

        return job
    }
}

