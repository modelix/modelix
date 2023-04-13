/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.workspace.job

import io.ktor.client.*
import io.ktor.client.plugins.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.util.cio.*
import io.ktor.utils.io.*
import io.ktor.utils.io.jvm.javaio.*
import org.modelix.buildtools.*
import org.modelix.workspaces.UploadId
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceBuildStatus
import org.w3c.dom.Document
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets
import java.nio.file.Path
import java.util.HashSet
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import javax.xml.parsers.DocumentBuilderFactory
import kotlin.time.Duration.Companion.minutes

class WorkspaceBuildJob(val workspace: Workspace, val httpClient: HttpClient, val serverUrl: String) {
    private val workspaceDir = File("workspace-build").absoluteFile
    private val downloadFile = File("workspace.zip").absoluteFile
    private var status: WorkspaceBuildStatus = WorkspaceBuildStatus.New
        set(value) {
            printNewJobStatus(value)
            field = value
        }

    private suspend fun copyUploads(): List<File> {
        return workspace.uploads.map { UploadId(it) }.map { uploadId ->
            LOG.info { "Copying upload $uploadId" }
            val uploadFolder = workspaceDir.resolve("uploads/${uploadId.id}")
            val data = httpClient.get {
                url {
                    takeFrom(serverUrl)
                    appendPathSegments("uploads", uploadId.id)
                }
                timeout {
                    requestTimeoutMillis = 2.minutes.inWholeMilliseconds
                }
            }.bodyAsChannel()
            ZipUtil.unpack(data.toInputStream(), uploadFolder)
            uploadFolder
        }
    }

    private suspend fun cloneGitRepositories(): List<File> {
        return workspace.gitRepositories.mapIndexed { repoIndex, repo ->
            LOG.info { "Cloning ${repo.url}" }
            val repoFolder = workspaceDir.resolve("git/$repoIndex")
            val data = httpClient.get {
                url {
                    takeFrom(serverUrl)
                    appendPathSegments(workspace.hash().hash, "git", repoIndex.toString(), "repo.zip")
                }
                timeout {
                    requestTimeoutMillis = 5.minutes.inWholeMilliseconds
                }
            }.bodyAsChannel()
            ZipUtil.unpack(data.toInputStream(), repoFolder)
            repoFolder
        }
//        return workspace.gitRepositories.flatMap { repo ->
//            val repoManager = GitRepositoryManager(repo, workspaceDir)
//            repoManager.updateRepo()
//            repoManager.getRootFolders(repo.paths)
//        }
    }

    private fun copyMavenDependencies(): List<File> {
        return workspace.mavenDependencies.map {  mavenDep ->
            LOG.info { "Resolving $mavenDep" }
            MavenDownloader(workspace, workspaceDir).downloadAndCopyFromMaven(mavenDep) { println(it) }
        }
    }

    suspend fun buildWorkspace(): File {
        val mavenFolders = copyMavenDependencies()
        val gitFolders = cloneGitRepositories()
        val uploadFolders = copyUploads()
        val mpsHome = ModuleOrigin(Path.of("/mps"), Path.of("/projector/ide"))
        val moduleFolders: List<ModuleOrigin> = (
            mavenFolders + gitFolders + uploadFolders
            ).map { ModuleOrigin(it.toPath(), workspaceDir.toPath().relativize(it.toPath())) } + mpsHome

        var modulesXml: String? = null
        val modulesMiner = ModulesMiner()
        moduleFolders.forEach {
            modulesMiner.searchInFolder(it)
        }

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

        runSafely(WorkspaceBuildStatus.FailedBuild) {
            val buildScriptGenerator = BuildScriptGenerator(
                modulesMiner,
                ignoredModules = workspace.ignoredModules.map { ModuleId(it) }.toSet(),
                additionalGenerationDependencies = workspace.additionalGenerationDependenciesAsMap()
            )
            runSafely {
                modulesXml = xmlToString(buildModulesXml(buildScriptGenerator.modulesMiner.getModules()))
            }
            buildScriptGenerator.buildModules(File(workspaceDir, "mps-build-script.xml")) { println(it) }
        }

        var fileFilter: (Path) -> Boolean = { true }
        if (workspace.loadUsedModulesOnly) {
            // to reduce the required memory include only those modules in the zip that are actually used
            val resolver = ModuleResolver(modulesMiner.getModules(), workspace.ignoredModules.map { ModuleId(it) }.toSet(), true)
            val graph = PublicationDependencyGraph(resolver, workspace.additionalGenerationDependenciesAsMap())
            graph.load(modulesMiner.getModules().getModules().values)
            val sourceModules: Set<ModuleId> = modulesMiner.getModules().getModules()
                .filter { it.value.owner is SourceModuleOwner }.keys -
                workspace.ignoredModules.map { ModuleId(it) }.toSet()
            val transitiveDependencies = HashSet<DependencyGraph<FoundModule, ModuleId>.DependencyNode>()
            sourceModules.mapNotNull { graph.getNode(it) }.forEach {
                it.getTransitiveDependencies(transitiveDependencies)
                transitiveDependencies += it
            }
            var usedModuleOwners = transitiveDependencies.flatMap { it.modules }.map { it.owner }.toSet()
            usedModuleOwners = usedModuleOwners.map { it.getRootOwner() }.toSet()
            val transitivePlugins = kotlin.collections.HashMap<String, PluginModuleOwner>()
            usedModuleOwners.filterIsInstance<PluginModuleOwner>().forEach {
                modulesMiner.getModules().getPluginWithDependencies(it.pluginId, transitivePlugins)
            }
            usedModuleOwners += transitivePlugins.map { it.value }
            val includedFolders: Set<Path> = usedModuleOwners.flatMap {
                when (it) {
                    is SourceModuleOwner -> listOf(it.path.getLocalAbsolutePath().parent)
                    is LibraryModuleOwner -> (it.getGeneratorJars() + it.getPrimaryJar() + listOfNotNull(it.getSourceJar())).map { it.toPath() }
                    else -> listOf(it.path.getLocalAbsolutePath())
                }
            }.toSet()
            //job.outputHandler("Included Folders: ")
            //includedFolders.sorted().forEach { job.outputHandler("    $it") }
            val usedModulesOnly: (Path) -> Boolean = { path -> path.ancestorsAndSelf().any { includedFolders.contains(it) } }
            fileFilter = usedModulesOnly
        }

        downloadFile.parentFile.mkdirs()
        FileOutputStream(downloadFile).use { fileStream ->
            ZipOutputStream(fileStream).use { zipStream ->
                zipStream.copyFiles(workspaceDir, filter = fileFilter, mapPath = { workspaceDir.toPath().relativize(it)})
                if (modulesXml != null) {
                    val zipEntry = ZipEntry("modules.xml")
                    zipStream.putNextEntry(zipEntry)
                    zipStream.write(modulesXml!!.toByteArray(StandardCharsets.UTF_8))
                }
            }
        }

        // runSafely { importModulesToCloud(modulesMiner, job) }

        return downloadFile
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

    private inline fun runSafely(statusOnException: WorkspaceBuildStatus? = null, block: () -> Unit) {
        try {
            block()
        } catch (e: Exception) {
            LOG.error(e) { "" }
            if (statusOnException != null) status = statusOnException
        }
    }

    private fun Path.ancestorsAndSelf(): Sequence<Path> {
        return sequence {
            var current: Path? = this@ancestorsAndSelf.normalize()
            while (current != null) {
                yield(current)
                current = current.parent
            }
        }
    }

    private fun Workspace.additionalGenerationDependenciesAsMap(): Map<ModuleId, Set<ModuleId>> {
        return additionalGenerationDependencies
            .groupBy { ModuleId(it.from) }
            .mapValues { it.value.map { ModuleId(it.to) }.toSet() }
    }

    companion object {
        val LOG = mu.KotlinLogging.logger {  }
        val org_modelix_model_mpsplugin = ModuleId("c5e5433e-201f-43e2-ad14-a6cba8c80cd6")
        val org_modelix_model_api = ModuleId("cc99dce1-49f3-4392-8dbf-e22ca47bd0af")
    }
}

suspend fun HttpClient.downloadFile(file: File, url: String) {
    val response: HttpResponse = this.get(url)
    if (response.status == HttpStatusCode.OK) {
        val data = response.bodyAsChannel()
        data.copyTo(file.writeChannel())
    }
}