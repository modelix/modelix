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
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.html.*
import io.ktor.server.html.HtmlContent
import io.ktor.server.plugins.cors.routing.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.html.*
import kotlinx.html.stream.createHTML
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import org.apache.commons.io.FileUtils
import org.apache.commons.text.StringEscapeUtils
import org.modelix.authorization.*
import org.modelix.gitui.GIT_REPO_DIR_ATTRIBUTE_KEY
import org.modelix.gitui.MPS_INSTANCE_URL_ATTRIBUTE_KEY
import org.modelix.gitui.gitui
import org.modelix.workspaces.Workspace
import org.modelix.workspaces.WorkspaceHash
import org.zeroturnaround.zip.ZipUtil
import java.io.File

val WORKSPACE_LIST = KeycloakResourceType("list", setOf(KeycloakScope.ADD, KeycloakScope.READ, KeycloakScope.WRITE))
    .createInstance("workspace-list")
val WORKSPACE_UPLOAD = KeycloakResourceType("workspace-upload", setOf(KeycloakScope.READ, KeycloakScope.DELETE))

fun Application.workspaceManagerModule() {

    val manager = WorkspaceManager()

    install(Routing)
    installAuthentication()

    routing {
        requiresPermission(WORKSPACE_LIST, KeycloakScope.READ) {
            get("/") {
                call.respondHtmlSafe(HttpStatusCode.OK) {
                    head {
                        title("Workspaces")
                        style {
                            +"""
                            table {
                                border-collapse: collapse;
                            }
                            td {
                                border: 1px solid #888;
                                padding: 3px 12px;
                            }
                        """.trimIndent()
                        }
                    }
                    body {
                        h1 { text("Workspaces") }
                        p {
                            +"A workspace allows to deploy an MPS project and all of its dependencies to Modelix and edit it in the browser."
                            +" Solutions are synchronized with the model server and between all MPS instances."
                        }
                        table {
                            manager.getWorkspaceIds()
                                .filter {
                                    KeycloakUtils.hasPermission(call.jwt()!!, it.workspaceIdAsResource(), KeycloakScope.LIST)
                                    || KeycloakUtils.hasPermission(call.jwt()!!, it.workspaceIdAsResource(), KeycloakScope.READ)
                                }
                                .mapNotNull { manager.getWorkspaceForId(it) }.forEach { workspaceAndHash ->
                                val (workspace, workspaceHash) = workspaceAndHash
                                val workspaceId = workspace.id
                                val canRead = KeycloakUtils.hasPermission(call.jwt()!!, workspaceId.workspaceIdAsResource(), KeycloakScope.READ)
                                val canDelete = KeycloakUtils.hasPermission(call.jwt()!!, workspaceId.workspaceIdAsResource(), KeycloakScope.DELETE)
                                tr {
                                    td {
                                        a {
                                            if (canRead) href = "$workspaceId/edit"
                                            text((workspace?.name ?: "<no name>") + " ($workspaceId)")
                                        }
                                    }
                                    td {
                                        if (canRead) {
                                            a {
                                                href = "../workspace-${workspace.id}-$workspaceHash/project"
                                                text("Open Web Interface")
                                            }
                                        }
                                    }
                                    td {
                                        if (canRead) {
                                            a {
                                                href = "../workspace-${workspace.id}-$workspaceHash/ide/"
                                                text("Open MPS")
                                            }
                                        }
                                    }
                                    td {
                                        if (canRead) {
                                            workspace.gitRepositories.forEachIndexed { index, gitRepository ->
                                                a {
                                                    href = "$workspaceId/git/$index/"
                                                    val suffix = if (gitRepository.name.isNullOrEmpty()) "" else " (${gitRepository.name})"
                                                    text("Git History" + suffix)
                                                }
                                            }
                                            workspace.uploads.associateWith { findGitRepo(manager.getUploadFolder(it)) }
                                                .filter { it.value != null }.forEach { upload ->
                                                    a {
                                                        href = "$workspaceId/git/u${upload.key}/"
                                                        text("Git History")
                                                    }
                                                }
                                        }
                                    }
                                    td {
                                        if (canRead) {
                                            a {
                                                href = "../model/history/workspace_$workspaceId/master/"
                                                text("Model History")
                                            }
                                        }
                                    }
                                    td {
                                        if (canDelete) {
                                            postForm("./remove-workspace") {
                                                style = "display: inline-block"
                                                hiddenInput {
                                                    name = "workspaceId"
                                                    value = workspaceId
                                                }
                                                submitInput {
                                                    value = "Remove"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (KeycloakUtils.hasPermission(call.jwt()!!, WORKSPACE_LIST, KeycloakScope.ADD)) {
                                tr {
                                    td {
                                        colSpan = "5"
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
                        }
                    }
                }
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

            route("{workspaceId}/git/{repoOrUploadIndex}/") {
                intercept(ApplicationCallPipeline.Call) {
                    val workspaceId = call.parameters["workspaceId"]!!
                    val repoOrUploadIndex = call.parameters["repoOrUploadIndex"]!!
                    var repoIndex: Int? = null
                    var uploadId: String? = null
                    if (repoOrUploadIndex.startsWith("u")) {
                        uploadId = repoOrUploadIndex.drop(1)
                    } else {
                        repoIndex = repoOrUploadIndex.toInt()
                    }
                    val workspaceAndHash = manager.getWorkspaceForId(workspaceId)
                    if (workspaceAndHash == null) {
                        call.respondText("Workspace $workspaceId not found", ContentType.Text.Plain, HttpStatusCode.NotFound)
                        return@intercept
                    }
                    val (workspace, workspaceHash) = workspaceAndHash
                    val repoDir: File
                    if (repoIndex != null) {
                        val repos = workspace.gitRepositories
                        if (!repos.indices.contains(repoIndex)) {
                            call.respondText("Git repository with index $repoIndex doesn't exist", ContentType.Text.Plain, HttpStatusCode.NotFound)
                            return@intercept
                        }
                        val repo = repos[repoIndex]
                        val repoManager = GitRepositoryManager(repo, manager.getWorkspaceDirectory(workspace))
                        if (!repoManager.repoDirectory.exists()) {
                            repoManager.updateRepo()
                        }
                        repoDir = repoManager.repoDirectory
                    } else {
                        val uploadFolder = manager.getUploadFolder(uploadId!!)
                        if (!uploadFolder.exists()) {
                            call.respondText("Upload $uploadId doesn't exist", ContentType.Text.Plain, HttpStatusCode.NotFound)
                            return@intercept
                        }
                        if (uploadFolder.resolve(".git").exists()) {
                            repoDir = uploadFolder
                        } else {
                            val repoDirFromUpload = findGitRepo(uploadFolder)
                            if (repoDirFromUpload == null) {
                                call.respondText("No git repository found in upload $uploadId", ContentType.Text.Plain, HttpStatusCode.NotFound)
                                return@intercept
                            }
                            repoDir = repoDirFromUpload
                        }
                    }
                    call.attributes.put(GIT_REPO_DIR_ATTRIBUTE_KEY, repoDir)
                    call.attributes.put(MPS_INSTANCE_URL_ATTRIBUTE_KEY, "../../../../workspace-${workspace.id}-$workspaceHash/")
                }
                gitui()
            }
        }

        requiresPermission(WORKSPACE_LIST, KeycloakScope.ADD) {
            post("new") {
                val jwt = call.jwt()!!
                val workspace = manager.newWorkspace()
                KeycloakUtils.grantPermission(jwt, workspace.asResource(), workspace.asResource().type.scopes)
                call.respondRedirect("${workspace.id}/edit")
            }
        }

        requiresLogin {

            route("{workspaceId}") {
                get("edit") {
                    val id = call.parameters["workspaceId"]
                    if (id == null) {
                        call.respond(HttpStatusCode.BadRequest, "Workspace ID is missing")
                        return@get
                    }
                    call.checkPermission(id.workspaceIdAsResource(), KeycloakScope.READ)
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
                                    href = "../"
                                    text("Workspace List")
                                }
                                a {
                                    style = "margin-left: 24px"
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
                                workspace.gitRepositories.forEachIndexed { index, gitRepository ->
                                    a {
                                        style = "margin-left: 24px"
                                        href = "git/$index/"
                                        val suffix = if (gitRepository.name.isNullOrEmpty()) "" else " (${gitRepository.name})"
                                        text("Git History" + suffix)
                                    }
                                }
                                workspace.uploads.associateWith { findGitRepo(manager.getUploadFolder(it)) }
                                    .filter { it.value != null }.forEach { upload ->
                                        a {
                                            style = "margin-left: 24px"
                                            href = "git/u${upload.key}/"
                                            text("Git History")
                                        }
                                    }
                            }
                            br()
                            div {
                                style = "display: flex"
                                div {
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
                                }
                                div {
                                    style = "display: inline-block"
                                    ul {
                                        li {
                                            b { +"name" }
                                            +": Is just shown to the user in the workspace list."
                                        }
                                        li {
                                            b { +"mpsVersion" }
                                            +": This is experimental."
                                            +" The workspace will be executed using a docker image from a Modelix release for a different MPS version."
                                        }
                                        li {
                                            b { +"modelRepositories" }
                                            +": Currently not used. A separate repository on the model server is created for each workspace."
                                            +" The ID of the repository for this workspace is "
                                            i { +"workspace_${workspace.id}" }
                                            +"."
                                        }
                                        li {
                                            b { +"gitRepositories" }
                                            +": Git repository containing an MPS project. No build script is required."
                                            +" Modelix will build all languages including their dependencies after cloning the repository."
                                            +" If this repository is not public, credentials can be specified."
                                            +" Alternatively, a project can be uploaded as a .zip file. (see below)"
                                            ul {
                                                li {
                                                    b { +"url" }
                                                    +": Address of the Git repository."
                                                }
                                                li {
                                                    b { +"name" }
                                                    +": Currently not used."
                                                }
                                                li {
                                                    b { +"branch" }
                                                    +": If no commitHash is specified, the latest commit from this branch is used."
                                                }
                                                li {
                                                    b { +"commitHash" }
                                                    +": A Git commit hash can be specified to ensure that always the same version is used."
                                                }
                                                li {
                                                    b { +"paths" }
                                                    +": If this repository contains additional modules that you don't want to use in Modelix,"
                                                    +" you can specify a list of folders that you want to include."
                                                }
                                                li {
                                                    b { +"credentials" }
                                                    +": The credentials are encrypted before they are stored."
                                                    ul {
                                                        li { b { +"user" } }
                                                        li { b { +"password" } }
                                                    }
                                                }
                                            }
                                        }
                                        li {
                                            b { +"mavenRepositories" }
                                            +": Some artifacts are bundled with Modelix."
                                            +" If you additional ones, here you can specify maven repositories that contain them."
                                            ul {
                                                li {
                                                    b { +"url" }
                                                    +": You probably want to use this one: "
                                                    i { +"https://projects.itemis.de/nexus/content/repositories/mbeddr/" }
                                                }
                                            }
                                        }
                                        li {
                                            b { +"mavenDependencies" }
                                            +": Maven coordinates to a .zip file containing MPS modules/plugins."
                                            +" Example: "
                                            i { +"de.itemis.mps:extensions:2020.3.2179.1ee9c94:zip" }
                                            +". You can also add one of the bundled artifacts by clicking on it (see below)"
                                        }
                                        li {
                                            b { +"uploads" }
                                            +": There is a special section for managing uploads. Directly editing this list is not required."
                                        }
                                        li {
                                            b { +"ignoredModules" }
                                            +": A list of MPS module IDs that should be excluding from generation."
                                            +" Also missing dependencies that should be ignored can be listed here."
                                            +" This section is usually used when the generation fails and editing the project is not possible."
                                        }
                                    }
                                }
                            }
                            br()
                            div {
                                style = "border: 1px solid black; padding: 10px;"

                                div { text("Uploads:") }
                                val allUploads = manager.getExistingUploads().associateBy { it.name }
                                val uploadContent: (Map.Entry<String, File?>)->String = { uploads ->
                                    val fileNames: List<File> = (uploads.value?.listFiles()?.toList() ?: listOf())
                                    fileNames.joinToString(", ") { it.name }
                                }
                                table {
                                    for (upload in allUploads.toSortedMap()) {
                                        tr {
                                            td { +upload.key }
                                            td { +uploadContent(upload) }
                                            td {
                                                if (workspace.uploads.contains(upload.key)) {
                                                    form {
                                                        action = "./remove-upload"
                                                        method = FormMethod.post
                                                        input {
                                                            type = InputType.hidden
                                                            name = "uploadId"
                                                            value = upload.key
                                                        }
                                                        input {
                                                            type = InputType.submit
                                                            value = "Remove"
                                                        }
                                                    }
                                                } else {
                                                    form {
                                                        action = "./use-upload"
                                                        method = FormMethod.post
                                                        input {
                                                            type = InputType.hidden
                                                            name = "uploadId"
                                                            value = upload.key
                                                        }
                                                        input {
                                                            type = InputType.submit
                                                            value = "Add"
                                                        }
                                                    }
                                                }
                                            }
                                            td {
                                                form {
                                                    action = "./delete-upload"
                                                    method = FormMethod.post
                                                    hiddenInput {
                                                        name = "uploadId"
                                                        value = upload.key
                                                    }
                                                    submitInput {
                                                        style = "background-color: red"
                                                        value = "Delete"
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                br()
                                br()
                                div { text("Upload new file or directory (max ~200 MB):") }
                                form {
                                    action = "./upload"
                                    method = FormMethod.post
                                    encType = FormEncType.multipartFormData
                                    div {
                                        text("Choose File(s): ")
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

                post("update") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
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

                post("add-maven-dependency") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
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

                post("upload") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
                    val workspaceId = call.parameters["workspaceId"]!!
                    call.checkPermission(workspaceId.workspaceIdAsResource(), KeycloakScope.WRITE)
                    val workspaceAndHash = manager.getWorkspaceForId(workspaceId)
                    if (workspaceAndHash == null) {
                        call.respondText("Workspace $workspaceId not found", ContentType.Text.Plain, HttpStatusCode.NotFound)
                        return@post
                    }

                    val outputFolder = manager.newUploadFolder()
                    KeycloakUtils.grantPermission(call.jwt()!!, WORKSPACE_UPLOAD.createInstance(outputFolder.name), WORKSPACE_UPLOAD.scopes)

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

                post("use-upload") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
                    val workspaceId = call.parameters["workspaceId"]!!
                    val uploadId = call.receiveParameters()["uploadId"]!!
                    call.checkPermission(WORKSPACE_UPLOAD.createInstance(uploadId), KeycloakScope.READ)
                    val workspace = manager.getWorkspaceForId(workspaceId)?.first!!
                    workspace.uploads += uploadId
                    manager.update(workspace)
                    call.respondRedirect("./edit")
                }

                post("remove-upload") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
                    val workspaceId = call.parameters["workspaceId"]!!
                    val uploadId = call.receiveParameters()["uploadId"]!!
                    val workspace = manager.getWorkspaceForId(workspaceId)?.first!!
                    workspace.uploads -= uploadId
                    manager.update(workspace)
                    call.respondRedirect("./edit")
                }

                post("delete-upload") {
                    call.checkPermission(call.parameters["workspaceId"]!!.workspaceIdAsResource(), KeycloakScope.WRITE)
                    val uploadId = call.receiveParameters()["uploadId"]!!
                    call.checkPermission(WORKSPACE_UPLOAD.createInstance(uploadId), KeycloakScope.DELETE)
                    val allWorkspaces = manager.getWorkspaceIds().mapNotNull { manager.getWorkspaceForId(it)?.first }
                    for (workspace in allWorkspaces.filter { it.uploads.contains(uploadId) }) {
                        workspace.uploads -= uploadId
                        manager.update(workspace)
                    }
                    manager.deleteUpload(uploadId)
                    call.respondRedirect("./edit")
                }
            }

            route("{workspaceHash}") {
                intercept(ApplicationCallPipeline.Call) {
                    val workspaceHash = WorkspaceHash(call.parameters["workspaceHash"]!!)
                    val workspace = manager.getWorkspaceForHash(workspaceHash)
                    if (workspace != null) {
                        call.checkPermission(workspace.asResource(), KeycloakScope.READ)
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
            }

            post("/remove-workspace") {
                val workspaceId = call.receiveParameters()["workspaceId"]!!
                call.checkPermission(workspaceId.workspaceIdAsResource(), KeycloakScope.DELETE)
                manager.removeWorkspace(workspaceId)
                call.respondRedirect(".")
            }
        }

        get("/health") {
            call.respondText("healthy", ContentType.Text.Plain, HttpStatusCode.OK)
        }

    }

    install(CORS) {
        anyHost()
        allowHeader(HttpHeaders.ContentType)
        allowMethod(HttpMethod.Options)
        allowMethod(HttpMethod.Get)
        allowMethod(HttpMethod.Put)
        allowMethod(HttpMethod.Post)
    }
}

private fun findGitRepo(folder: File): File? {
    if (!folder.exists()) return null
    if (folder.name == ".git") return folder.parentFile
    if (folder.resolve(".git").exists()) return folder.resolve(".git")
    val children = (folder.listFiles() ?: emptyArray())
    if (children.size == 1) {
        return findGitRepo(children[0])
    }
    return null
}

fun Workspace.asResource() = id.workspaceIdAsResource()
fun String.workspaceIdAsResource() = KeycloakResourceType.WORKSPACE.createInstance(this)

/**
 * respondHtml fails to respond anything if an exception is thrown in the body and an error handler is installed
 * that tries to respond an error page.
 */
suspend fun ApplicationCall.respondHtmlSafe(status: HttpStatusCode = HttpStatusCode.OK, block: HTML.() -> Unit) {
    val htmlText = createHTML().html {
        block()
    }
    respondText(htmlText, ContentType.Text.Html, status)
}
