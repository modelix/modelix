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

import java.io.File

/**
 * Modules packaged as .jar-Files but without an IDEA plugin such as the ones in the MPS.HOME/languages folder
 */
class LibraryModuleOwner(path: ModulePath, val parentPlugin: PluginModuleOwner? = null) : ModuleOwner(path) {
    override fun getRootOwner(): ModuleOwner {
        return parentPlugin?.getRootOwner() ?: this
    }

    fun getPrimaryAndGeneratorJars(): List<File> = listOf(getPrimaryJar()) + getGeneratorJars()

    fun getPrimaryJar(): File {
        return path.getLocalAbsolutePath().toFile()
    }

    fun getSourceJar(): File? {
        val primaryJar = getPrimaryJar()
        return primaryJar.parentFile
            .resolve(primaryJar.nameWithoutExtension + "-src." + primaryJar.extension)
            .takeIf { it.exists() }
    }

    fun getGeneratorJars(): List<File> {
        val primaryJar = getPrimaryJar()
        val folder = primaryJar.parentFile
        val baseName = primaryJar.nameWithoutExtension
        val extension = primaryJar.extension
        return modules.values
            .filter { it.moduleType == ModuleType.Generator }
            .mapIndexed { index, generator ->
                val indexPart = if (index == 0) "" else "-$index"
                folder.resolve(baseName + "$indexPart-generator." + extension)
            }
            .filter { it.exists() }
    }
}