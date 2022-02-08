/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.workspace.manager

import com.charleskorn.kaml.Yaml
import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.application.install
import io.ktor.features.*
import io.ktor.html.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import kotlinx.html.*
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import org.apache.commons.io.FileUtils
import org.apache.commons.text.StringEscapeUtils
import org.zeroturnaround.zip.ZipUtil
import java.io.File

fun Application.workspaceManagerModule() {

    val manager = WorkspaceManager()

    install(Routing)

    routing {
        get("/") {
            call.respondHtml(HttpStatusCode.OK) {
                head {
                    title("Workspaces")
                }
                body {
                    h1 { text("Workspaces") }
                    ul {
                        manager.getWorkspaceIds().forEach {
                            li {
                                a {
                                    href = "$it/edit"
                                    text(it)
                                }
                            }
                        }
                    }
                    form {
                        action = "new"
                        method = FormMethod.post
                        input {
                            type = InputType.submit
                            value = "Add New Workspace"
                        }
                    }
                }
            }
        }

        post("new") {
            val workspace = manager.newWorkspace()
            call.respondRedirect("${workspace.id}/edit")
        }

        post("{workspaceId}/update") {
            val yamlText = call.receiveParameters()["content"]
            val id = call.parameters["workspaceId"] ?: throw IllegalArgumentException("workspaceId missing")
            if (yamlText == null) {
                call.respond(HttpStatusCode.BadRequest, "Content missing")
                return@post
            }
            val workspace: Workspace
            try {
                workspace = Yaml.default.decodeFromString<Workspace>(yamlText)
            } catch (e: Exception) {
                call.respond(HttpStatusCode.BadRequest, e.message ?: "Parse error")
                return@post
            }
            // just in case the user copy-pastes a workspace and forgets to change the ID
            workspace.id = id
            manager.update(workspace)
            call.respondRedirect("./edit")
        }

        get("/health") {
            call.respondText("healthy", ContentType.Text.Plain, HttpStatusCode.OK)
        }

        get("{workspaceId}/edit") {
            val id = call.parameters["workspaceId"]
            if (id == null) {
                call.respond(HttpStatusCode.BadRequest, "Workspace ID is missing")
                return@get
            }
            val workspace = manager.getWorkspace(id)
            if (workspace == null) {
                call.respond(HttpStatusCode.NotFound, "Workspace $id not found")
                return@get
            }
            val yaml = Yaml.default.encodeToString(workspace)
            val htmlTemplate = Application::class.java.classLoader.getResource("html/edit.html")?.readText()
            if (htmlTemplate == null) {
                call.respond(HttpStatusCode.InternalServerError, "HTML template not found")
                return@get
            }
            val html = htmlTemplate
                .replace("{{content}}", StringEscapeUtils.escapeHtml4(yaml))
                .replace("{{workspaceId}}", id)
            this.call.respondText(html, ContentType.Text.Html, HttpStatusCode.OK)
        }

        get("{workspaceId}/download-modules/queue") {
            val workspaceId = call.parameters["workspaceId"]!!
            val job = manager.buildWorkspaceDownloadFileAsync(workspaceId)
            val respondStatus: suspend (String, String)->Unit = { text, refresh ->
                val html = """
                    <html>
                    <head>
                        <meta http-equiv="refresh" content="$refresh">
                    <head>
                    <body>
                        $text
                        <br/>
                        <br/>
                        <pre>${StringEscapeUtils.escapeHtml4(job.output.joinToString("\n"))}</pre>
                    </body>
                    </html>
                """.trimIndent()
                call.respondText(html, ContentType.Text.Html, HttpStatusCode.OK)
            }
            when (job.status) {
                WorkspaceBuildStatus.New, WorkspaceBuildStatus.Queued -> respondStatus("Workspace is queued for building ...", "3")
                WorkspaceBuildStatus.Running -> respondStatus("Downloading and building modules ...", "3")
                WorkspaceBuildStatus.FailedBuild -> respondStatus("Failed to build the workspace ...", "3")
                WorkspaceBuildStatus.FailedZip -> respondStatus("Failed to ZIP the workspace ...", "3")
                WorkspaceBuildStatus.AllSuccessful, WorkspaceBuildStatus.ZipSuccessful -> {
                    val fileName = "workspace.zip"
                    var statusText = """Downloading <a href="$fileName">$fileName</a>"""
                    if (job.status == WorkspaceBuildStatus.ZipSuccessful) {
                        statusText = "Failed to build the workspace. " + statusText
                    }
                    respondStatus(statusText, "0; url=$fileName")
                }
            }
        }

        get("{workspaceId}/status") {
            val workspaceId = call.parameters["workspaceId"]!!
            val job = manager.buildWorkspaceDownloadFileAsync(workspaceId)
            call.respondText(job.status.toString(), ContentType.Text.Plain, HttpStatusCode.OK)
        }

        get("{workspaceId}/download-modules/workspace.zip") {
            val id = call.parameters["workspaceId"]!!
            val workspace = manager.getWorkspace(id)
            if (workspace == null) {
                call.respondText("Workspace $id not found", ContentType.Text.Plain, HttpStatusCode.NotFound)
            } else {
                val file = manager.getDownloadFile(workspace)
                if (file.exists()) {
                    call.respondFile(file)
                } else {
                    call.respondText("""File doesn't exist yet. <a href="queue">Start a build job for the workspace.</a>""", ContentType.Text.Html, HttpStatusCode.NotFound)
                }
            }
        }

        get("{workspaceId}/download-modules/modules.xml") {

        }

        post("{workspaceId}/upload") {
            val workspaceId = call.parameters["workspaceId"]!!
            val workspace = manager.getWorkspace(workspaceId)
                ?: throw IllegalArgumentException("Workspace $workspaceId not found")

            val outputFolder = manager.newUploadFolder()

            call.receiveMultipart().forEachPart { part ->
                if (part is PartData.FileItem) {
                    val name = part.originalFileName
                    if (!name.isNullOrEmpty()) {
                        val outputFile = File(outputFolder, name)
                        part.streamProvider().use {
                            FileUtils.copyToFile(it, outputFile)
                        }
                        if (outputFile.extension.lowercase() == "zip") {
                            ZipUtil.explode(outputFile)
                        }
                    }
                }
                part.dispose()
            }

            workspace.uploads += outputFolder.name
            manager.update(workspace)

            call.respondRedirect("./edit")
        }

        static {
            resources("html")
        }
    }

    install(CORS) {
        anyHost()
        header(HttpHeaders.ContentType)
        method(HttpMethod.Options)
        method(HttpMethod.Get)
        method(HttpMethod.Put)
        method(HttpMethod.Post)
    }
}
