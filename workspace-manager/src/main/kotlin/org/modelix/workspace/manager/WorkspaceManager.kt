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
import org.modelix.buildtools.*
import org.modelix.headlessmps.*
import org.modelix.model.persistent.HashUtil
import org.modelix.workspaces.ModelRepository
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceHash
import org.modelix.workspaces.WorkspacePersistence
import org.w3c.dom.Document
import java.io.File
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.util.*
import java.util.concurrent.Executors
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.collections.ArrayList
import kotlin.collections.HashMap
import kotlin.collections.LinkedHashMap

class WorkspaceManager {
    companion object {
        val org_modelix_model_mpsplugin = ModuleId("c5e5433e-201f-43e2-ad14-a6cba8c80cd6")
        val org_modelix_model_api = ModuleId("cc99dce1-49f3-4392-8dbf-e22ca47bd0af")
    }

    private val mpsHome: File = findMpsHome()
    private val workspacePersistence = WorkspacePersistence()
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
    private val headlessMpsFolder = run {
        val candidates = listOf(File("../headless-mps/build/libs/"), File("/headless-mps"))
        candidates.firstOrNull { it.exists() }
            ?: throw RuntimeException("headless-mps not found in $candidates")
    }

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

    @Synchronized
    fun update(workspace: Workspace): WorkspaceHash {
        //loadCommitHashes(workspace)
        val hash = workspacePersistence.update(workspace)
        synchronized(buildJobs) {
            buildJobs.remove(workspace.id)
            FileUtils.deleteQuietly(getDownloadFile(hash))
        }
        return hash
    }

    @Synchronized
    private fun loadCommitHashes(workspace: Workspace) {
        workspace.gitRepositories.forEach { repo ->
            if (repo.commitHash.isNullOrEmpty()) {
                // This ensures that all clients work on the same version.
                // Updating to a new version can be done by setting the commitHash back to null
                // to re-trigger this code.
                repo.commitHash = GitRepositoryManager(repo, getWorkspaceDirectory(workspace)).updateRepo()
            }
        }
    }

    fun getWorkspaceDirectory(workspace: Workspace) = File(directory, workspace.id)

    fun newUploadFolder(): File {
        val id = workspacePersistence.generateId()
        val folder = getUploadFolder(id)
        folder.mkdirs()
        return folder
    }

    private fun getUploadsFolder() = File(directory, "uploads")

    fun getExistingUploads(): List<File> = getUploadsFolder().listFiles()?.toList() ?: listOf()

    fun getUploadFolder(id: String) = File(getUploadsFolder(), id)

    private fun buildWorkspaceDownloadFile(job: WorkspaceBuildJob): File {
        val workspace = job.workspace
        val downloadFile = job.downloadFile
        val workspacePath = getWorkspaceDirectory(workspace).toPath()

        val mavenFolders = workspace.mavenDependencies
            .map { MavenDownloader(workspace, getWorkspaceDirectory(workspace)).downloadAndCopyFromMaven(it, job.outputHandler) }
        val gitManagers = workspace.gitRepositories
            .map { it to GitRepositoryManager(it, getWorkspaceDirectory(workspace)) }
        gitManagers.forEach { it.second.updateRepo() }
        val moduleFolders: List<ModuleOrigin> =
            mavenFolders.map { ModuleOrigin(it.toPath(), workspacePath.relativize(it.toPath())) } +
            gitManagers.flatMap {
                it.second.getRootFolders(it.first.paths)
                    .map { ModuleOrigin(it.toPath(), workspacePath.relativize(it.toPath())) }
            } +
            workspace.uploads.map { ModuleOrigin(getUploadFolder(it).toPath(), Path.of("uploads", it)) } +
            ModuleOrigin(mpsHome.toPath(), Path.of("/projector/ide"))
        var modulesXml: String? = null
        val modulesMiner = ModulesMiner()
        moduleFolders.forEach { modulesMiner.searchInFolder(it) }

        // Modelix and MPS-extensions are required to run the importer
        val additionalFolders = ArrayList<File>()
        if (!modulesMiner.getModules().getModules().containsKey(org_modelix_model_mpsplugin)) {
            //additionalFolders += File(File(".."), "mps")
            additionalFolders += File("/languages/modelix")
        }
        if (!modulesMiner.getModules().getModules().containsKey(org_modelix_model_api)) {
            additionalFolders += File(File(File(".."), "artifacts"), "de.itemis.mps.extensions")
            additionalFolders += File("/languages/mps-extensions")
        }
        additionalFolders.filter { it.exists() }.forEach { modulesMiner.searchInFolder(ModuleOrigin(it.toPath(), it.toPath())) }

        job.runSafely(WorkspaceBuildStatus.FailedBuild) {
            val buildScriptGenerator = BuildScriptGenerator(modulesMiner, ignoredModules = workspace.ignoredModules.map { ModuleId(it) }.toSet())
            job.runSafely {
                modulesXml = xmlToString(buildModulesXml(buildScriptGenerator.modulesMiner.getModules()))
            }
            buildScriptGenerator.buildModules(File(getWorkspaceDirectory(workspace), "mps-build-script.xml"), job.outputHandler)
        }
        downloadFile.parentFile.mkdirs()
        FileOutputStream(downloadFile).use { fileStream ->
            ZipOutputStream(fileStream).use { zipStream ->
                mavenFolders.forEach {
                    zipStream.copyFiles(it, mapPath = { workspacePath.relativize(it)})
                }
                gitManagers.forEach { repo ->
                    repo.second.zip(repo.first.paths, zipStream, includeGitDir = true)
                }
                workspace.uploads.forEach { uploadId ->
                    zipStream.copyFiles(getUploadFolder(uploadId), mapPath = {directory.toPath().relativize(it)})
                }
                if (modulesXml != null) {
                    val zipEntry = ZipEntry("modules.xml")
                    zipStream.putNextEntry(zipEntry)
                    zipStream.write(modulesXml!!.toByteArray(StandardCharsets.UTF_8))
                }
            }
        }

        job.runSafely { importModulesToCloud(modulesMiner, job) }

        return downloadFile
    }

    fun getDownloadFile(workspaceHash: WorkspaceHash): File {
        val workspace = workspacePersistence.getWorkspaceForHash(workspaceHash) ?: throw RuntimeException("Workspace not found: $workspaceHash")
        val cleanHash = workspaceHash.toString().replace("*", "")
        return File(File(getWorkspaceDirectory(workspace), cleanHash), "workspace.zip")
    }

    fun buildWorkspaceDownloadFileAsync(workspaceHash: WorkspaceHash): WorkspaceBuildJob {
        val workspace = workspacePersistence.getWorkspaceForHash(workspaceHash) ?: throw RuntimeException("Workspace not found: $workspaceHash")

        val job: WorkspaceBuildJob
        synchronized(buildJobs) {
            job = buildJobs.getOrPut(workspace.id) { WorkspaceBuildJob(workspace, getDownloadFile(workspaceHash)) }
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

    private fun buildModulesXml(modules: FoundModules): Document {
        val dbf = DocumentBuilderFactory.newInstance()
        val db = dbf.newDocumentBuilder()
        val doc = db.newDocument()

        doc.createElement("project").apply {
            doc.appendChild(this)
            setAttribute("version", "4")
            newChild("component") {
                setAttribute("name", "MPSProject")
                newChild("projectModules") {
                    for (module in modules.getModules().values) {
                        if (module.owner is SourceModuleOwner) {
                            newChild("modulePath") {
                                setAttribute("path", module.owner.getWorkspaceRelativePath())
                                setAttribute("folder", "")
                            }
                        }
                    }
                }
            }
        }

        return doc
    }

    private fun importModulesToCloud(modulesMiner: ModulesMiner, job: WorkspaceBuildJob) {
        job.outputHandler("***************************************************")
        job.outputHandler("*** Importing MPS modules into the model server ***")
        job.outputHandler("***************************************************")

        val mpsHome = modulesMiner.getModules().mpsHome
        val mpsClassPath: MutableList<String> = ArrayList()
        if (mpsHome != null) {
            visitFiles(File(mpsHome, "lib")) { file ->
                if (file.isFile && file.extension.lowercase() == "jar") {
                    mpsClassPath += file.canonicalPath
                }
            }
        }

        // Avoid connecting to any other model server
        for (project in modulesMiner.getModules().projects) {
            val cloudResourcesFile = File(File(project.path, ".mps"), "cloudResources.xml")
            if (cloudResourcesFile.exists()) cloudResourcesFile.delete()
        }

        val json = buildEnvironmentSpec(modulesMiner.getModules(), mpsClassPath, job.workspace.ignoredModules.map { ModuleId(it) }.toSet())
        val envFile = File("mps-environment.json")
        envFile.writeBytes(json.toByteArray(StandardCharsets.UTF_8))

        JavaProcess(ModelImportMain::class).apply {
            outputHandler = job.outputHandler
            args += ModelImportMain.ENVIRONMENT_ARG_KEY
            args += envFile.canonicalPath
            jvmArgs += "-Dmodelix.executionMode=MODEL_IMPORT"
            jvmArgs += "-Dmodelix.import.repositoryId=workspace_${job.workspace.id}"
            jvmArgs += "-Dmodelix.import.serverUrl=${workspacePersistence.getModelServerUrl()}"
            classpath.clear()
            classpath += mpsClassPath
            classpath += (headlessMpsFolder.listFiles() ?: arrayOf()).map { it.canonicalPath }
            exec()
        }
    }

    private fun buildEnvironmentSpec(modules: FoundModules, classPath: List<String>, ignoredModules: Set<ModuleId>): String {
        val mpsHome = modules.mpsHome ?: throw RuntimeException("mps.home not found")
        val plugins: MutableMap<String, PluginModuleOwner> = LinkedHashMap()
        val libraries = ArrayList<LibrarySpec>()

        val rootModules = modules.getModules().values.filter { it.owner is SourceModuleOwner }
        val rootModuleIds = rootModules.map { it.moduleId }.toMutableSet()
        rootModuleIds += org_modelix_model_mpsplugin
        val graph = GeneratorDependencyGraph(ModuleResolver(modules, ignoredModules))
        graph.load(rootModules)
        val modulesToLoad = graph.getNodes().flatMap { it.modules }.map { it.owner.getRootOwner() }.toSet()

        for (moduleOwner in modulesToLoad) {
            when (moduleOwner) {
                is PluginModuleOwner -> {
                    val pluginId = moduleOwner.pluginId
                    modules.getPluginWithDependencies(pluginId, plugins)
                }
                is LibraryModuleOwner, is SourceModuleOwner -> libraries += LibrarySpec(moduleOwner.path.getLocalAbsolutePath().toString())
            }
        }
        val projects = modules.projects.map { ProjectSpec(it.path.canonicalPath, it.name) }
        val pluginSpecs = plugins.values.map { PluginSpec(it.path.getLocalAbsolutePath().toString(), it.pluginId, it.name ?: "") }
        val spec = EnvironmentSpec(mpsHome.absolutePath, pluginSpecs, libraries, projects, classPath)
        return Json.encodeToString(spec)
    }

    private fun visitFiles(file: File, visitor: (File)->Unit) {
        visitor(file)
        if (file.isDirectory) {
            file.listFiles()?.forEach { visitFiles(it, visitor) }
        }
    }

    fun getWorkspaceIds() = workspacePersistence.getWorkspaceIds()
    fun getWorkspaceForId(workspaceId: String) = workspacePersistence.getWorkspaceForId(workspaceId)
    fun getWorkspaceForHash(workspaceHash: WorkspaceHash) = workspacePersistence.getWorkspaceForHash(workspaceHash)
    fun newWorkspace() = workspacePersistence.newWorkspace()
}

