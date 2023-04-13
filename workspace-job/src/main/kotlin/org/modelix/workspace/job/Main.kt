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
import io.ktor.client.call.*
import io.ktor.client.engine.cio.*
import io.ktor.client.plugins.*
import io.ktor.client.plugins.contentnegotiation.*
import io.ktor.client.request.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.serialization.kotlinx.json.*
import io.ktor.util.cio.*
import io.ktor.utils.io.*
import kotlinx.coroutines.runBlocking
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceBuildStatus
import kotlin.time.Duration.Companion.minutes

private val LOG = mu.KotlinLogging.logger("main")

fun main(args: Array<String>) {
    try {
        val workspaceId = propertyOrEnv("modelix.workspace.id")
            ?: throw RuntimeException("modelix.workspace.id not specified")
        val workspaceHash = propertyOrEnv("modelix.workspace.hash")
            ?: throw RuntimeException("modelix.workspace.id not specified")

        var serverUrl = propertyOrEnv("modelix.workspace.server") ?: "http://workspace-manager:28104/"
        serverUrl = serverUrl.trimEnd('/')
        LOG.debug { "Workspace manager URL: $serverUrl" }

        val httpClient = HttpClient(CIO) {
            defaultRequest {
                bearerAuth(System.getenv("INITIAL_JWT_TOKEN"))
            }
            expectSuccess = true
            install(ContentNegotiation) {
                json()
            }
            install(HttpTimeout) {
                requestTimeoutMillis = 1.minutes.inWholeMilliseconds
            }
        }

        runBlocking {
            printNewJobStatus(WorkspaceBuildStatus.Running)
            val workspace: Workspace = httpClient.get {
                url {
                    takeFrom(serverUrl)
                    appendPathSegments(workspaceHash)
                    parameter("decryptCredentials", "true")
                }
            }.body()
            val job = WorkspaceBuildJob(workspace, httpClient, serverUrl)
            val workspaceZip = job.buildWorkspace()
            LOG.info { "Uploading workspace.zip" }
            httpClient.put {
                url {
                    takeFrom(serverUrl)
                    appendPathSegments(workspaceHash, "workspace.zip")
                }
                setBody(object : OutgoingContent.WriteChannelContent() {
                    override suspend fun writeTo(channel: ByteWriteChannel) {
                        workspaceZip.readChannel().copyTo(channel)
                    }
                })
            }
            job.status = if (job.status == WorkspaceBuildStatus.FailedBuild) WorkspaceBuildStatus.ZipSuccessful else WorkspaceBuildStatus.AllSuccessful
        }
    } catch (ex: Throwable) {
        LOG.error(ex) { "" }
        printNewJobStatus(WorkspaceBuildStatus.FailedZip)
    }
}

fun printNewJobStatus(status: WorkspaceBuildStatus) {
    println("###${WorkspaceBuildStatus::class.simpleName} = $status###")
}

fun propertyOrEnv(key: String): String? {
    return listOf(key, key.replace(".", "_"))
        .flatMap { listOf(System.getProperty(it), System.getenv(it)) }
        .firstOrNull { !it.isNullOrEmpty() }
}
