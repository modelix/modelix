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

import org.eclipse.jgit.api.Git
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider
import org.modelix.model.persistent.HashUtil
import org.modelix.workspace.build.BuildScriptGenerator
import java.io.*
import java.lang.IllegalArgumentException
import java.util.zip.ZipOutputStream

class GitRepositoryManager(val config: GitRepository, val credentials: Credentials?, val workspaceDirectory: File) {
    private val repoDirectory = File(workspaceDirectory, "git-" + HashUtil.sha256("${config.url} ${config.branch}").replace("*", ""))

    fun updateRepo(): String {
        val existed = repoDirectory.exists()
        val git = openRepo()
        if (existed) {
            git.checkout().setName(config.commitHash ?: config.branch).call()
            if (config.commitHash == null) {
                git.pull().call()
            }
        }
        return git.repository.exactRef("HEAD").objectId.name
    }

    private fun openRepo() = if (repoDirectory.exists()) Git.open(repoDirectory) else cloneRepo()

    private fun cloneRepo(): Git {
        val cmd = Git.cloneRepository()
        if (credentials != null) {
            cmd.setCredentialsProvider(UsernamePasswordCredentialsProvider(credentials.user, credentials.password))
        }
        cmd.setURI(config.url)
        if (config.branch != null) {
            cmd.setBranch(config.branch)
        }
        val directory = repoDirectory
        directory.mkdirs()
        cmd.setDirectory(directory)
        return cmd.call()
    }

    fun zip(roots: List<File>, outputStream: OutputStream) {
        if (outputStream is ZipOutputStream) throw IllegalArgumentException()
        ZipOutputStream(outputStream).use { output ->
            zip(roots, output)
        }
    }


    fun zip(subfolders: List<String>?, output: ZipOutputStream) {
        updateRepo()
        val roots: List<File> = getRootFolders(subfolders)
        val gitDir = File(repoDirectory, ".git").toPath()
        roots.filter { it.exists() }.forEach { root ->
            output.copyFiles(
                inputDir = root,
                filter = { !it.startsWith(gitDir) },
                mapPath = { workspaceDirectory.toPath().relativize(it) },
                extractZipFiles = false
            )
        }
    }

    fun getRootFolders(subfolders: List<String>?) =
        if (subfolders == null || subfolders.isEmpty()) {
            listOf(repoDirectory)
        } else {
            subfolders.map { File(repoDirectory, it) }
        }
}