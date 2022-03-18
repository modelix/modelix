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
package org.modelix.buildtools

import java.io.ByteArrayInputStream
import java.io.File
import java.io.FileInputStream
import java.io.StringReader
import java.net.URI
import java.nio.file.FileSystems
import java.nio.file.Path
import java.util.regex.Matcher
import java.util.regex.Pattern
import java.util.zip.ZipInputStream
import kotlin.io.path.readLines

/**
 * Modules packaged as an IDEA plugin containing a META-INF/plugin.xml file.
 */
class PluginModuleOwner(path: ModulePath, val pluginId: String, val name: String?, val pluginDependencies: Set<String>) : ModuleOwner(path) {
    val libraries: MutableSet<LibraryModuleOwner> = HashSet()

    fun getModuleJarFolders(): List<File> {
        try {
            val pluginFolder = path.getLocalAbsolutePath().normalize().toFile()
            val pluginXml = pluginFolder.resolve("META-INF").resolve("plugin.xml")
            val xml = readXmlFile(pluginXml)
            val folders = xml.documentElement.childElements("extensions").flatMap { it.childElements() }
                .asSequence()
                .filter { it.tagName.endsWith("LanguageLibrary") }
                .map { it.getAttribute("dir") }
                .map { it.trimStart('/', '\\')  }
                .map { pluginFolder.resolve(it).normalize() }
                .minus(pluginFolder)
                .distinct()
                .toList()
            return folders.ifEmpty { allSubFolders() }
        } catch (e: Exception) {
            println(e.message)
            return allSubFolders()
        }
    }

    private fun allSubFolders() = (path.getLocalAbsolutePath().toFile().listFiles() ?: arrayOf()).toList()

    companion object {
        fun fromPluginFolder(path: ModulePath): PluginModuleOwner {
            val pluginPath = path.getLocalAbsolutePath().toFile()
            val lines = if (pluginPath.isFile && pluginPath.extension == "jar") {
                val uri = URI("jar", pluginPath.toURI().toString(), null)
                FileSystems.newFileSystem(uri, mapOf<String, Any>(), null).use {
                    it.getPath("META-INF", "plugin.xml").readLines()
                }
            } else {
                path.getLocalAbsolutePath().resolve("META-INF").resolve("Plugin.xml").readLines()
            }
            return fromPluginDescriptor(path, lines)
        }

        private fun fromPluginDescriptor(path: ModulePath, lines: List<String>): PluginModuleOwner {
            var pluginId: String? = null
            var name: String? = null
            val pluginDependencies: MutableSet<String> = HashSet()
            for (line in lines) {
                if (pluginId == null) {
                    val idMatch = Regex(""".*<id>(.+)</id>.*""").matchEntire(line)
                    if (idMatch != null) pluginId = idMatch.groupValues[1]
                }
                if (name == null) {
                    val nameMatch = Regex(""".*<name>(.+)</name>.*""").matchEntire(line)
                    if (nameMatch != null) name = nameMatch.groupValues[1]
                }
                val depends = Regex(""".*<depends>(.+)</depends>.*""").matchEntire(line)
                if (depends != null) pluginDependencies += depends.groupValues[1]
            }

            if (pluginId == null) {
                throw RuntimeException("Plugin has no ID: ${path.getLocalAbsolutePath()}")
            }
            return PluginModuleOwner(path, pluginId, name, pluginDependencies)
        }
    }
}