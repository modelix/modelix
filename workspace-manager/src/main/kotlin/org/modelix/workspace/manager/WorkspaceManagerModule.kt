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
                        manager.getWorkspaceIds().forEach { workspaceId ->
                            val workspace = manager.getWorkspaceForId(workspaceId)?.first
                            li {
                                a {
                                    href = "$workspaceId/edit"
                                    text((workspace?.name ?: "<no name>") + " ($workspaceId)")
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
            val workspaceAndHash = manager.getWorkspaceForId(id)
            if (workspaceAndHash == null) {
                call.respond(HttpStatusCode.NotFound, "Workspace $id not found")
                return@get
            }
            val (workspace, workspaceHash) = workspaceAndHash
            val yaml = Yaml.default.encodeToString(workspace)

            this.call.respondHtml(HttpStatusCode.OK) {
                head {
                    title { text("Edit Workspace") }
                }
                body {
                    div {
                        a {
                            href = "../$workspaceHash/download-modules/queue"
                            text("Download Modules")
                        }
                        a {
                            style = "margin-left: 24px"
                            href = "../../workspace-${workspace.id}-$workspaceHash/project"
                            text("Open Web Interface")
                        }
                        a {
                            style = "margin-left: 24px"
                            href = "../../workspace-${workspace.id}-$workspaceHash/ide/"
                            text("Open MPS")
                        }
                    }
                    br()
                    form {
                        action = "./update"
                        method = FormMethod.post
                        textArea {
                            name = "content"
                            style = "width: 800px; height: 500px"
                            text(yaml)
                        }
                        br()
                        input {
                            type = InputType.submit
                            value = "Save Changes"
                        }
                    }
                    br()
                    div {
                        style = "border: 1px solid black; padding: 10px;"
                        div { text("Upload file or directory (max ~200 MB):") }
                        form {
                            action = "./upload"
                            method = FormMethod.post
                            encType = FormEncType.multipartFormData
                            div {
                                text("Choose File(s):")
                                input {
                                    type = InputType.file
                                    name = "file"
                                    multiple = true
                                }
                            }
                            div {
                                text("Choose Directory: ")
                                input {
                                    type = InputType.file
                                    name = "folder"
                                    attributes["webkitdirectory"] = "true"
                                    attributes["mozdirectory"] = "true"
                                }
                            }
                            div {
                                input {
                                    type = InputType.submit
                                    value = "Upload"
                                }
                            }
                        }
                    }
                    br()
                    br()
                    div {
                        style = "border: 1px solid black; padding: 10px;"
                        div {
                            text("Add Bundled Dependency")
                        }
                        ul {
                            val deps = LocalMavenDependenciesExplorer.getAvailableDependencies()
                            for (dependency in deps) {
                                li {
                                    form {
                                        action = "./add-maven-dependency"
                                        method = FormMethod.post
                                        input {
                                            type = InputType.submit
                                            name = "coordinates"
                                            value = dependency.toString()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        post("{workspaceId}/add-maven-dependency") {
            val id = call.parameters["workspaceId"]
            if (id == null) {
                call.respond(HttpStatusCode.BadRequest, "Workspace ID is missing")
                return@post
            }
            val workspaceAndHash = manager.getWorkspaceForId(id)
            if (workspaceAndHash == null) {
                call.respond(HttpStatusCode.NotFound, "Workspace $id not found")
                return@post
            }
            val (workspace, workspaceHash) = workspaceAndHash
            val coordinates = call.receiveParameters()["coordinates"]
            if (coordinates.isNullOrEmpty()) {
                call.respond(HttpStatusCode.BadRequest, "coordinates missing")
            } else {
                workspace.mavenDependencies += coordinates
                manager.update(workspace)
                call.respondRedirect("./edit")
            }
        }

        get("{workspaceHash}/download-modules/queue") {
            val workspaceHash = WorkspaceHash(call.parameters["workspaceHash"]!!)
            val job = manager.buildWorkspaceDownloadFileAsync(workspaceHash)
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

        get("{workspaceHash}/status") {
            val workspaceHash = WorkspaceHash(call.parameters["workspaceHash"]!!)
            val job = manager.buildWorkspaceDownloadFileAsync(workspaceHash)
            call.respondText(job.status.toString(), ContentType.Text.Plain, HttpStatusCode.OK)
        }

        get("{workspaceHash}/output") {
            val workspaceHash = WorkspaceHash(call.parameters["workspaceHash"]!!)
            val job = manager.buildWorkspaceDownloadFileAsync(workspaceHash)
            call.respondText(job.output.joinToString("\n"), ContentType.Text.Plain, HttpStatusCode.OK)
        }

        get("{workspaceId}/hash") {
            val workspaceId = call.parameters["workspaceId"]!!
            val workspaceAndHash = manager.getWorkspaceForId(workspaceId)
            if (workspaceAndHash == null) {
                call.respond(HttpStatusCode.NotFound, "Workspace $workspaceId not found")
            } else {
                call.respondText(workspaceAndHash.second.toString(), ContentType.Text.Plain, HttpStatusCode.OK)
            }
        }

        get("{workspaceHash}/download-modules/workspace.zip") {
            val workspaceHash = WorkspaceHash(call.parameters["workspaceHash"]!!)
            val workspace = manager.getWorkspaceForHash(workspaceHash)
            if (workspace == null) {
                call.respondText("Workspace $workspaceHash not found", ContentType.Text.Plain, HttpStatusCode.NotFound)
            } else {
                val file = manager.getDownloadFile(workspaceHash)
                if (file.exists()) {
                    call.respondFile(file)
                } else {
                    call.respondText("""File doesn't exist yet. <a href="queue">Start a build job for the workspace.</a>""", ContentType.Text.Html, HttpStatusCode.NotFound)
                }
            }
        }

        post("{workspaceId}/upload") {
            val workspaceId = call.parameters["workspaceId"]!!
            val workspaceAndHash = manager.getWorkspaceForId(workspaceId)
            if (workspaceAndHash == null) {
                call.respondText("Workspace $workspaceId not found", ContentType.Text.Plain, HttpStatusCode.NotFound)
                return@post
            }

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

            workspaceAndHash.first.uploads += outputFolder.name
            manager.update(workspaceAndHash.first)

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
