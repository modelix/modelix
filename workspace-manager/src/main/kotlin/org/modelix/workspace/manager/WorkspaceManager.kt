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

import io.ktor.utils.io.*
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.apache.commons.io.FileUtils
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.persistent.SerializationUtil
import org.modelix.buildtools.*
import org.modelix.headlessmps.*
import org.modelix.model.persistent.HashUtil
import org.modelix.workspaces.*
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
    private val buildJobs = WorkspaceJobQueue()
    private val headlessMpsFolder = run {
        val candidates = listOf(File("../headless-runner/build/libs/"), File("/headless-runner"))
        candidates.firstOrNull { it.exists() }
            ?: throw RuntimeException("headless-runner not found in $candidates")
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
        val hash = workspacePersistence.update(workspace)
        synchronized(buildJobs) {
            buildJobs.removeByWorkspaceId(workspace.id)
            FileUtils.deleteQuietly(getDownloadFile(hash))
        }
        return hash
    }

    fun getWorkspaceDirectory(workspace: Workspace) = File(directory, workspace.id)

    fun newUploadFolder(): File {
        val id = UploadId(workspacePersistence.generateId())
        val folder = getUploadFolder(id)
        folder.mkdirs()
        return folder
    }

    private fun getUploadsFolder() = File(directory, "uploads")

    fun getExistingUploads(): List<File> = getUploadsFolder().listFiles()?.toList() ?: listOf()

    fun getUploadFolder(id: UploadId) = File(getUploadsFolder(), id.id)

    fun deleteUpload(id: UploadId) {
        val folder = getUploadFolder(id)
        if (folder.exists()) {
            folder.deleteRecursively()
        }
    }

    fun getDownloadFile(workspaceHash: WorkspaceHash): File {
        val workspace = workspacePersistence.getWorkspaceForHash(workspaceHash) ?: throw RuntimeException("Workspace not found: $workspaceHash")
        val cleanHash = workspaceHash.toString().replace("*", "")
        return File(File(getWorkspaceDirectory(workspace), cleanHash), "workspace.zip")
    }

    fun buildWorkspaceDownloadFileAsync(workspaceHash: WorkspaceHash): WorkspaceJobQueue.Job {
        val workspace = workspacePersistence.getWorkspaceForHash(workspaceHash) ?: throw RuntimeException("Workspace not found: $workspaceHash")
        return buildJobs.getOrCreateJob(workspace)
    }

//    private fun importModulesToCloud(modulesMiner: ModulesMiner, job: Any) {
//        job.outputHandler("***************************************************")
//        job.outputHandler("*** Importing MPS modules into the model server ***")
//        job.outputHandler("***************************************************")
//
//        val mpsHome = modulesMiner.getModules().mpsHome
//        val mpsClassPath: MutableList<String> = ArrayList()
//        if (mpsHome != null) {
//            visitFiles(File(mpsHome, "lib")) { file ->
//                if (file.isFile && file.extension.lowercase() == "jar") {
//                    mpsClassPath += file.canonicalPath
//                }
//            }
//        }
//
//        // Avoid connecting to any other model server
//        for (project in modulesMiner.getModules().projects) {
//            val cloudResourcesFile = File(File(project.path, ".mps"), "cloudResources.xml")
//            if (cloudResourcesFile.exists()) cloudResourcesFile.delete()
//        }
//
//        val json = buildEnvironmentSpec(
//            modules = modulesMiner.getModules(),
//            classPath = mpsClassPath,
//            ignoredModules = job.workspace.ignoredModules.map { ModuleId(it) }.toSet(),
//            additionalGenerationDependencies = job.workspace.additionalGenerationDependenciesAsMap()
//        )
//        val envFile = File("mps-environment.json")
//        envFile.writeBytes(json.toByteArray(StandardCharsets.UTF_8))
//
//        JavaProcess(ModelImportMain::class).apply {
//            outputHandler = job.outputHandler
//            args += ModelImportMain.ENVIRONMENT_ARG_KEY
//            args += envFile.canonicalPath
//            jvmArgs += "-Dmodelix.executionMode=MODEL_IMPORT"
//            jvmArgs += "-Dmodelix.import.repositoryId=workspace_${job.workspace.id}"
//            jvmArgs += "-Dmodelix.import.serverUrl=${workspacePersistence.getModelServerUrl()}"
//            classpath.clear()
//            classpath += mpsClassPath
//            classpath += (headlessMpsFolder.listFiles() ?: arrayOf()).map { it.canonicalPath }
//            exec()
//        }
//    }
//
//    private fun buildEnvironmentSpec(modules: FoundModules,
//                                     classPath: List<String>,
//                                     ignoredModules: Set<ModuleId>,
//                                     additionalGenerationDependencies: Map<ModuleId, Set<ModuleId>>): String {
//        val mpsHome = modules.mpsHome ?: throw RuntimeException("mps.home not found")
//        val plugins: MutableMap<String, PluginModuleOwner> = LinkedHashMap()
//        val libraries = ArrayList<LibrarySpec>()
//
//        val rootModules = modules.getModules().values.filter { it.owner is SourceModuleOwner }
//        val rootModuleIds = rootModules.map { it.moduleId }.toMutableSet()
//        rootModuleIds += org_modelix_model_mpsplugin
//        val graph = GeneratorDependencyGraph(ModuleResolver(modules, ignoredModules), additionalGenerationDependencies)
//        graph.load(rootModules)
//        val modulesToLoad = graph.getNodes().flatMap { it.modules }.map { it.owner.getRootOwner() }.toSet()
//
//        for (moduleOwner in modulesToLoad) {
//            when (moduleOwner) {
//                is PluginModuleOwner -> {
//                    val pluginId = moduleOwner.pluginId
//                    modules.getPluginWithDependencies(pluginId, plugins)
//                }
//                is LibraryModuleOwner, is SourceModuleOwner -> libraries += LibrarySpec(moduleOwner.path.getLocalAbsolutePath().toString())
//            }
//        }
//        val projects = modules.projects.map { ProjectSpec(it.path.canonicalPath, it.name) }
//        val pluginSpecs = plugins.values.map { PluginSpec(it.path.getLocalAbsolutePath().toString(), it.pluginId, it.name ?: "") }
//        val spec = EnvironmentSpec(mpsHome.absolutePath, pluginSpecs, libraries, projects, classPath)
//        return Json.encodeToString(spec)
//    }
//
//    private fun visitFiles(file: File, visitor: (File)->Unit) {
//        visitor(file)
//        if (file.isDirectory) {
//            file.listFiles()?.forEach { visitFiles(it, visitor) }
//        }
//    }

    fun getWorkspaceIds() = workspacePersistence.getWorkspaceIds()
    fun getWorkspaceForId(workspaceId: String) = workspacePersistence.getWorkspaceForId(workspaceId)
    fun getWorkspaceForHash(workspaceHash: WorkspaceHash) = workspacePersistence.getWorkspaceForHash(workspaceHash)
    fun newWorkspace() = workspacePersistence.newWorkspace()
    fun removeWorkspace(workspaceId: String) = workspacePersistence.removeWorkspace(workspaceId)
}
