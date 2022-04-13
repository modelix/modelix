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

package org.modelix.gitui

import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.application.install
import io.ktor.features.*
import io.ktor.html.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.response.*
import io.ktor.routing.*
import kotlinx.html.*
import java.io.File

fun Application.gituiModule() {

    install(Routing)

    val repositoryFolders = listOf(File("/Users/slisson/mps/mps203/modelix"))
    val repositories = repositoryFolders.map { GitRepository(it) }.associateBy { it.id }

    routing {
        get("/") {
            call.respondHtml(HttpStatusCode.OK) {
                head {
                    title("Git Repositories")
                }
                body {
                    h1 { text("Git Repositories") }
                    ul {
                        repositories.values.forEach { repo ->
                            li {
                                a {
                                    href = repo.id
                                    +repo.name
                                }
                            }
                        }
                    }
                }
            }
        }

        get("{repositoryId}") {
            val repositoryId = call.parameters["repositoryId"]
            val repo = repositories[repositoryId]
            if (repo == null) {
                call.respondText(ContentType.Text.Plain, HttpStatusCode.NotFound) { "Repository $repositoryId not found" }
                return@get
            }
            call.respondHtml(HttpStatusCode.OK) {
                head {
                    title("Git Repository: ${repo.name}")
                    script {
                        src = "static/gitui.js"
                    }
                }
                body {
                    h1 { +"Branches" }
                    div {
                        button {
                            id = "showDiffButton"
                            onClick = "openBranchDiff()"
                            disabled = true
                            +"Show Diff"
                        }
                    }
                    repo.branches().forEach { branch ->
                        div {
                            checkBoxInput {
                                onClick = """branchCheckboxClick(this, "${branch.shortName}", "${branch.commitHash}")"""
                                value = branch.commitHash
                                classes = setOf("branchCheckbox")
                                +"${branch.shortName}: ${branch.commitHash}"
                            }
                        }
                    }
/*
                    h1 { +"Commits" }
                    table {
                        thead {
                            tr {
                                th { +"ID" }
                                th { +"Author" }
                                th { +"Committer" }
                                th { +"Message" }
                            }
                        }
                        tbody {
                            repo.history().forEach { commit ->
                                tr {
                                    td { +commit.id.name.toString() }
                                    td {
                                        +commit.authorIdent.name.toString()
                                        br {  }
                                        +commit.authorIdent.`when`.toString()
                                    }
                                    td {
                                        +commit.committerIdent.name.toString()
                                        br {  }
                                        +commit.committerIdent.`when`.toString()
                                    }
                                    td {
                                        pre {
                                            +commit.fullMessage.toString()
                                        }
                                    }
                                }
                            }
                        }
                    }
 */
                }
            }
        }

        get("/health") {
            call.respondText("healthy", ContentType.Text.Plain, HttpStatusCode.OK)
        }

        static("static") {
            resources("static")
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
