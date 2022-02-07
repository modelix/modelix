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

import kotlinx.serialization.Serializable

@Serializable
data class Workspace(var id: String,
                     val mpsVersion: String? = null,
                     val modelRepositories: List<ModelRepository> = listOf(),
                     val gitRepositories: List<GitRepository> = listOf(),
                     val mavenRepositories: List<MavenRepository> = listOf(),
                     val mavenDependencies: List<String> = listOf(),
                     val uploads: MutableList<String> = ArrayList())

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
                         val credentialsRef: String? = null)

@Serializable
data class Credentials(val user: String, val password: String)

@Serializable
data class MavenRepository(val url: String)