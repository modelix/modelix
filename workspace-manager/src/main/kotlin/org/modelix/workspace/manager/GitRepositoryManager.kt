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
import org.eclipse.jgit.api.GitCommand
import org.eclipse.jgit.api.TransportCommand
import org.eclipse.jgit.errors.RepositoryNotFoundException
import org.eclipse.jgit.transport.UsernamePasswordCredentialsProvider
import org.modelix.model.persistent.HashUtil
import java.io.*
import java.lang.IllegalArgumentException
import java.util.zip.ZipOutputStream

class GitRepositoryManager(val config: GitRepository, val encryptedCredentials: Credentials?, val workspaceDirectory: File) {
    private val repoDirectory = File(workspaceDirectory, "git-" + toValidFileName(config.url))

    fun toValidFileName(text: String): String {
        val allowed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-., ".toSet()
        return text.map { if (allowed.contains(it)) it else '_' }.joinToString("")
    }

    fun updateRepo(): String {
        val existed = repoDirectory.exists()
        val git = openRepo()
        if (existed) {
            git.checkout().setName(config.commitHash ?: config.branch).call()
            if (config.commitHash == null) {
                applyCredentials(git.pull()).call()
            }
        }
        return git.repository.exactRef("HEAD").objectId.name
    }

    private fun openRepo(): Git {
        if (repoDirectory.exists()) {
            try {
                return Git.open(repoDirectory)
            } catch (e: RepositoryNotFoundException) {
                return cloneRepo()
            }
        } else {
            return cloneRepo()
        }
    }

    private fun <C : GitCommand<T>, T, E : TransportCommand<C, T>> applyCredentials(cmd: E): E {
        if (encryptedCredentials != null) {
            val decrypted = encryptedCredentials.decrypt()
            cmd.setCredentialsProvider(UsernamePasswordCredentialsProvider(decrypted.user, decrypted.password))
        }
        return cmd
    }

    private fun cloneRepo(): Git {
        val cmd = Git.cloneRepository()
        applyCredentials(cmd)
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