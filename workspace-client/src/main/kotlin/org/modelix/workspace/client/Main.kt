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
package org.modelix.workspace.client

import com.charleskorn.kaml.Yaml.Companion.default
import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.engine.cio.*
import io.ktor.client.features.*
import io.ktor.client.request.*
import io.ktor.client.response.*
import io.ktor.client.statement.*
import io.ktor.client.statement.HttpResponse
import io.ktor.http.*
import io.ktor.util.*
import io.ktor.util.cio.*
import io.ktor.utils.io.*
import kotlinx.coroutines.runBlocking
import org.modelix.workspace.manager.WorkspaceBuildStatus
import org.zeroturnaround.zip.ZipUtil
import java.io.File

fun main(args: Array<String>) {
    println("env: ${System.getenv()}")
    println("properties: ${System.getProperties()}")

    val workspaceId = propertyOrEnv("modelix.workspace.id")
        ?: throw RuntimeException("modelix.workspace.id not specified")

    var serverUrl = propertyOrEnv("modelix.workspace.server", "http://workspace-manager:28104/")
    if (!serverUrl.endsWith("/")) serverUrl += "/"

    val httpClient = HttpClient(CIO)
    val outputFile = File("workspace.zip").absoluteFile
    runBlocking {
        while (true) {
            val statusString = httpClient.get<String>(serverUrl + "download-modules/$workspaceId/status")
            val status = WorkspaceBuildStatus.valueOf(statusString.trim())
            when (status) {
                WorkspaceBuildStatus.Failed -> throw RuntimeException("Workspace $workspaceId failed to build. Can't download modules.")
                WorkspaceBuildStatus.Successful -> break
                WorkspaceBuildStatus.New, WorkspaceBuildStatus.Queued, WorkspaceBuildStatus.Running -> {}
            }
        }

        httpClient.downloadFile(outputFile, "${serverUrl}download-modules/$workspaceId/workspace-$workspaceId.zip")
    }

    ZipUtil.explode(outputFile)
}

fun propertyOrEnv(key: String, default: String): String {
    return propertyOrEnv(key) ?: default
}

fun propertyOrEnv(key: String): String? {
    return listOf(key, key.replace(".", "_"))
        .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
        .firstOrNull { !it.isNullOrEmpty() }
}

suspend fun HttpClient.downloadFile(file: File, url: String) {
    val response: HttpResponse = this.get(url)
    if (response.status == HttpStatusCode.OK) {
        val data: ByteArray = response.receive()
        file.writeBytes(data)
    }
}