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

import org.modelix.buildtools.findTag
import org.modelix.buildtools.readXmlFile
import java.io.File

object LocalMavenDependenciesExplorer {
    private var cached: List<MavenCoordinates>? = null

    @Synchronized
    fun getAvailableDependencies(): List<MavenCoordinates> {
        var result: List<MavenCoordinates>? = cached
        if (result == null) {
            result = findAvailableDependencies()
            cached = result
        }
        return result
    }

    private fun findAvailableDependencies(): List<MavenCoordinates> {
        val result = ArrayList<MavenCoordinates>()
        val userHome = File(System.getProperty("user.home"))
        val localRepoDir = File(userHome, ".m2")
        for (file in localRepoDir.walk()) {
            if (file.extension == "pom") {
                val xml = try {
                    readXmlFile(file)
                } catch (e: Exception) {
                    continue
                }
                val groupId = xml.documentElement.findTag("groupId")?.textContent ?: continue
                val artifactId = xml.documentElement.findTag("artifactId")?.textContent ?: continue
                val version = xml.documentElement.findTag("version")?.textContent ?: continue
                val packaging = xml.documentElement.findTag("packaging")?.textContent
                var coordinates = "$groupId:$artifactId:$version"
                if (packaging != null) coordinates += ":$packaging"
                result += MavenCoordinates(groupId, artifactId, version, packaging)
            }
        }
        return result
            .asSequence()
            .filter { it.packaging == "zip" }
            .sortedBy(MavenCoordinates::packaging)
            .sortedBy(MavenCoordinates::version)
            .sortedBy(MavenCoordinates::artifactId)
            .sortedBy(MavenCoordinates::groupId)
            .toList()
    }
}

data class MavenCoordinates(val groupId: String,
                               val artifactId: String,
                               val version: String,
                               val packaging: String?) {
    override fun toString(): String {
        var coordinates = "$groupId:$artifactId:$version"
        if (packaging != null) coordinates += ":$packaging"
        return coordinates
    }
}