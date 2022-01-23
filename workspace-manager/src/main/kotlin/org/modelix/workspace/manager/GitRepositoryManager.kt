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
import java.io.*
import java.lang.IllegalArgumentException
import java.nio.file.Files
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import kotlin.io.path.Path
import kotlin.io.path.isDirectory

class GitRepositoryManager(val url: String, val credentials: Credentials?, val branch: String?, val workspaceDirectory: File) {
    private val repoDirectory = File(workspaceDirectory, "git-" + HashUtil.sha256("$url $branch").replace("*", ""))

    fun cloneRepo() {
        if (repoDirectory.exists()) return

        val cmd = Git.cloneRepository()
        if (credentials != null) {
            cmd.setCredentialsProvider(UsernamePasswordCredentialsProvider(credentials.user, credentials.password))
        }
        cmd.setURI(url)
        if (branch != null) {
            cmd.setBranch(branch)
        }
        val directory = repoDirectory
        directory.mkdirs()
        cmd.setDirectory(directory)
        cmd.call()
    }

    fun zip(roots: List<File>, outputStream: OutputStream) {
        if (outputStream is ZipOutputStream) throw IllegalArgumentException()
        ZipOutputStream(outputStream).use { output ->
            zip(roots, output)
        }
    }

    fun zip(subfolders: List<String>?, output: ZipOutputStream) {
        cloneRepo()
        val roots: List<File> = if (subfolders == null || subfolders.isEmpty()) {
            listOf(repoDirectory)
        } else {
            subfolders.map { File(repoDirectory, it) }
        }
        val gitDir = File(repoDirectory, ".git").toPath()
        roots.forEach { root ->
            Files.walk(root.toPath()).filter { !it.isDirectory() && !it.startsWith(gitDir) }.forEach { inputFile ->
                FileInputStream(inputFile.toFile()).use { input ->
                    BufferedInputStream(input).use { origin ->
                        println("adding file $inputFile")
                        val entry = ZipEntry(workspaceDirectory.toPath().relativize(inputFile).toString())
                        output.putNextEntry(entry)
                        origin.copyTo(output, 1024)
                    }
                }
            }
        }
    }
}