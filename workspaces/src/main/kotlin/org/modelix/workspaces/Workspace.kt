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
package org.modelix.workspaces

import kotlinx.serialization.Serializable
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.jasypt.util.text.AES256TextEncryptor
import org.modelix.model.persistent.HashUtil
import java.io.File
import java.nio.charset.StandardCharsets
import java.security.SecureRandom
import java.util.*


@Serializable
data class Workspace(val id: String,
                     val name: String? = null,
                     val mpsVersion: String? = null,
                     val memoryLimit: String = "2.0Gi",
                     val modelRepositories: List<ModelRepository> = listOf(),
                     val gitRepositories: List<GitRepository> = listOf(),
                     val mavenRepositories: List<MavenRepository> = listOf(),
                     val mavenDependencies: List<String> = listOf(),
                     val uploads: List<String> = ArrayList(),
                     val ignoredModules: List<String> = ArrayList(),
                     val additionalGenerationDependencies: List<GenerationDependency> = ArrayList(),
                     val loadUsedModulesOnly: Boolean = true,
                     val sharedInstances: List<SharedInstance> = emptyList()
) {
    fun uploadIds() = uploads.map { UploadId(it) }
}

/**
 * The value of Workspace.hash() depends on the JSON serialization, which is not guaranteed to be always the same.
 * If the workspace data was loaded by using the hash then this original hash should be used instead of recomputing it.
 * There was an issue in the communication between the workspace-job and the workspace-manager,
 * because of a hash mismatch.
 */
data class WorkspaceAndHash(val workspace: Workspace, private val hash: WorkspaceHash) {
    fun hash(): WorkspaceHash = hash
    fun uploadIds() = workspace.uploadIds()

    val id = workspace.id
    val name = workspace.name
    val mpsVersion = workspace.mpsVersion
    val memoryLimit = workspace.memoryLimit
    val modelRepositories = workspace.modelRepositories
    val gitRepositories = workspace.gitRepositories
    val mavenRepositories = workspace.mavenRepositories
    val mavenDependencies = workspace.mavenDependencies
    val uploads = workspace.uploads
    val ignoredModules = workspace.ignoredModules
    val additionalGenerationDependencies = workspace.additionalGenerationDependencies
    val loadUsedModulesOnly = workspace.loadUsedModulesOnly
    val sharedInstances = workspace.sharedInstances
}

fun Workspace.withHash(hash: WorkspaceHash) = WorkspaceAndHash(this, hash)
fun Workspace.withHash() = WorkspaceAndHash(this, WorkspaceHash(HashUtil.sha256(Json.encodeToString(this))))

@Serializable
data class GenerationDependency(val from: String, val to: String)

@JvmInline
value class WorkspaceHash(val hash: String) {
    init {
        require(HashUtil.isSha256(hash)) { "Not a hash: $hash" }
    }
    override fun toString(): String {
        return hash
    }
}

@Serializable
data class ModelRepository(val id: String,
                           val bindings: List<Binding> = listOf())

@Serializable
data class Binding(val project: String? = null,
                   val module: String? = null)

@Serializable
data class GitRepository(val url: String,
                         val name: String? = null,
                         val branch: String = "master",
                         var commitHash: String? = null,
                         val paths: List<String> = listOf(),
                         var credentials: Credentials? = null)

@Serializable
data class Credentials(val user: String, val password: String) {
    fun decrypt(): Credentials {
        return Credentials(decrypt(user), decrypt(password))
    }

    fun encrypt(): Credentials {
        return Credentials(encrypt(user), encrypt(password))
    }

    private fun encrypt(input: String): String {
        return if (input.startsWith(ENCRYPTED_PREFIX)) {
            input
        } else {
            ENCRYPTED_PREFIX + credentialsEncryptor.encrypt(input)
        }
    }

    private fun decrypt(input: String): String {
        return if (input.startsWith(ENCRYPTED_PREFIX)) {
            credentialsEncryptor.decrypt(input.drop(ENCRYPTED_PREFIX.length))
        } else {
            input
        }
    }
}

@Serializable
data class MavenRepository(val url: String)

@Serializable
data class SharedInstance(val name: String = "shared", val allowWrite: Boolean = false)

private const val ENCRYPTED_PREFIX = "encrypted:"
private val credentialsEncryptor = run {
    val encryptor = AES256TextEncryptor()
    val key = try {
        val kubernetesSecretFile = File("/secrets/workspacesecret/workspace-credentials-key.txt")
        if (kubernetesSecretFile.exists()) {
            kubernetesSecretFile.readLines().first()
        } else {
            println("${kubernetesSecretFile.absolutePath} doesn't exist")
            val localSecretFile = File("../kubernetes/secrets/workspace-credentials-key.txt")
            if (localSecretFile.exists()) {
                localSecretFile.readLines().first()
            } else {
                val rand = SecureRandom()
                val k = (1..200).map { rand.nextInt(10) }.joinToString("") { it.toString() }
                localSecretFile.writeText(k, StandardCharsets.UTF_8)
                k
            }
        }
    } catch (e: Exception) {
        "g5Mu5trXweUQmijZtZrmjCel81O64FyVxbNFFXgOfsaUYdJ5oZ89BIN8TQy20nQskDOHK0fzJ3bnkqZLUeO6Jng2WR2WJY1V8ef86pyWj6HO5c"
    }
    encryptor.setPassword(key)
    encryptor
}