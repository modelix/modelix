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

import org.apache.maven.shared.invoker.DefaultInvocationRequest
import org.apache.maven.shared.invoker.DefaultInvoker
import java.io.File
import java.util.*

class MavenDownloader(val workspace: Workspace, val workspaceDir: File) {

    fun downloadFromMaven(coordinates: String): File {
        val request = DefaultInvocationRequest()
        request.goals = listOf("dependency:get")
        val outputDir = File(workspaceDir, "maven-" + coordinates.replace(Regex("[^a-zA-Z0-9.]"), "_"))
        outputDir.mkdirs()
        val properties = Properties()
        properties["remoteRepositories"] = workspace.mavenRepositories.joinToString(",") { it.url }
        properties["dest"] = outputDir.absolutePath
        properties["artifact"] = addPackagingIfMissing(coordinates)
        request.properties = properties

        invokeMaven(request)
        return outputDir
    }

    private fun invokeMaven(request: DefaultInvocationRequest) {
        val invoker = DefaultInvoker()
        invoker.mavenHome = File("/usr/local/Cellar/maven/3.6.3_1/")
        invoker.execute(request)
    }

    private fun addPackagingIfMissing(coordinates: String): String {
        return if (coordinates.split(":").size == 3) coordinates + ":zip" else coordinates
    }
}