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
package org.modelix.gradle.mpsbuild

import org.modelix.buildtools.Macros
import java.nio.file.Path
import java.util.ArrayList
import java.util.HashMap
import java.util.HashSet
import java.util.stream.Collectors

open class MPSBuildSettings {
    var mpsHome: String? = null
    private val modules: MutableList<String> = ArrayList()
    private val includedPaths: MutableList<String> = ArrayList()
    private val includedModuleNames: MutableSet<String> = HashSet()
    private val macros: MutableMap<String, String> = HashMap()
    var generatorHeapSize: String = "2G"

    fun usingExistingMps(): Boolean {
        return mpsHome != null
    }

    fun validate() {
        // nothing to check at the moment
    }

    fun search(path: String) {
        modules.add(path)
    }

    fun include(pathToInclude: String) {
        includePath(pathToInclude)
    }

    fun includePath(pathToInclude: String) {
        includedPaths.add(pathToInclude)
    }

    fun includeModule(moduleName: String) {
        includedModuleNames.add(moduleName)
    }

    fun getIncludedModuleNames(): Set<String>? {
        return if (includedModuleNames.isEmpty()) null else includedModuleNames
    }

    fun macro(name: String, value: String) {
        macros[name] = value
    }

    fun resolveModulePaths(workdir: Path): List<Path> {
        return if (modules.isEmpty()) listOf(workdir) else modules.stream().map { path: String? -> workdir.resolve(path).normalize() }.distinct().collect(Collectors.toList())
    }

    fun resolveIncludedModules(workdir: Path): List<Path>? {
        return if (includedPaths.isEmpty()) null else includedPaths.stream().map { path: String? -> workdir.resolve(path).toAbsolutePath().normalize() }.distinct().collect(Collectors.toList())
    }

    fun getMacros(workdir: Path): Macros {
        val resolvedMacros: MutableMap<String, Path> = HashMap()
        for ((key, value) in macros) {
            resolvedMacros[key] = workdir.resolve(value).toAbsolutePath().normalize()
        }
        return Macros(resolvedMacros)
    }
}