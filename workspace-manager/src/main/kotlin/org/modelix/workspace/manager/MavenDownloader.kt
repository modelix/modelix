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

import org.apache.commons.io.FileUtils
import org.apache.maven.shared.invoker.DefaultInvocationRequest
import org.apache.maven.shared.invoker.DefaultInvoker
import org.apache.maven.shared.invoker.InvocationOutputHandler
import org.zeroturnaround.zip.ZipUtil
import java.io.File
import java.util.*

class MavenDownloader(val workspace: Workspace, val workspaceDir: File) {

    fun downloadAndCopyFromMaven(coordinates: String, outputHandler: ((String)->Unit)? = null): File {
        if (workspace.mavenRepositories.isNotEmpty()) {
            downloadFromMaven(coordinates, outputHandler)
        }
        return copyArtifacts(coordinates, outputHandler)
    }

    fun copyArtifacts(coordinates: String, outputHandler: ((String)->Unit)? = null): File {
        val request = DefaultInvocationRequest()
        request.isOffline = true
        request.goals = listOf("dependency:copy")
        request.isBatchMode = true
        val outputDir = File(workspaceDir, "maven-" + coordinates.replace(Regex("[^a-zA-Z0-9.]"), "_"))
        if (outputDir.exists()) FileUtils.deleteDirectory(outputDir)
        outputDir.mkdirs()
        val properties = Properties()
        properties["outputDirectory"] = outputDir.absolutePath
        properties["artifact"] = addPackagingIfMissing(coordinates)
        request.properties = properties

        invokeMaven(request, outputHandler?.let { { outputHandler(it) } })
        outputDir.listFiles()?.forEach { child ->
            if (child.isFile && child.extension.lowercase() == "zip") {
                ZipUtil.unpack(child, outputDir)
                FileUtils.deleteQuietly(child)
            }
        }
        return outputDir
    }

    fun downloadFromMaven(coordinates: String, outputHandler: ((String)->Unit)? = null) {
        val request = DefaultInvocationRequest()
        request.goals = listOf("dependency:get")
        request.isBatchMode = true
        val properties = Properties()
        properties["remoteRepositories"] = workspace.mavenRepositories.joinToString(",") { it.url }
        properties["transitive"] = "false"
        properties["artifact"] = addPackagingIfMissing(coordinates)
        request.properties = properties

        invokeMaven(request, outputHandler?.let { { outputHandler(it) } })
    }

    private fun invokeMaven(request: DefaultInvocationRequest, outputHandler: InvocationOutputHandler?) {
        val invoker = DefaultInvoker()
        val candidates = mutableListOf(File("/usr/share/maven"))
        File("/usr/local/Cellar/maven/").listFiles()?.let { candidates += it }
        invoker.mavenHome = candidates.firstOrNull { it.exists() } ?: throw RuntimeException("maven not found in $candidates")
        if (outputHandler != null) invoker.setOutputHandler(outputHandler)
        invoker.execute(request)
    }

    private fun addPackagingIfMissing(coordinates: String): String {
        return if (coordinates.split(":").size == 3) coordinates + ":zip" else coordinates
    }
}