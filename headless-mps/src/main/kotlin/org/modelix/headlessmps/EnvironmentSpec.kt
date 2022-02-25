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
package org.modelix.headlessmps

import kotlinx.serialization.Serializable

@Serializable
data class EnvironmentSpec(
    val mpsHome: String,
    val plugins: List<PluginSpec>,
    val libraries: List<LibrarySpec>,
    val projects: List<ProjectSpec>,
    val classPath: List<String>
    ) {
    fun debugString() = """
        mpsHome: $mpsHome
        plugins:
        ${plugins.joinToString("\n") { with(it) { "            id: $id, name: $name, path: $path" } }}
        libraries:
        ${libraries.joinToString("\n") { with(it) { "            $path" } }}
        classPath:
        ${classPath.joinToString("\n") { "            $it" }}
    """.trimIndent()
}

@Serializable
data class PluginSpec(val path: String, val id: String, val name: String)

@Serializable
data class LibrarySpec(val path: String)

@Serializable
data class ProjectSpec(val path: String, val name: String?)
