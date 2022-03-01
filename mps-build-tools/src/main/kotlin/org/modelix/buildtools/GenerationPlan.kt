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

class GenerationPlan {
    private val plugins: MutableSet<PluginModuleOwner> = LinkedHashSet()
    private val libraries: MutableSet<LibraryModuleOwner> = LinkedHashSet()
    val chunks: MutableList<GenerationChunk> = ArrayList()
    val allModuleIds: MutableSet<ModuleId> = HashSet()

    fun addPlugin(plugin: PluginModuleOwner) {
        plugins += plugin
        allModuleIds += plugin.modules.keys
    }

    fun addLibrary(lib: LibraryModuleOwner) {
        libraries += lib
        allModuleIds += lib.modules.keys
    }

    fun getPlugins(): List<PluginModuleOwner> = plugins.toList()

    fun getLibraries(): List<LibraryModuleOwner> = libraries.toList()

    fun getHighestChunkIndex(moduleIds: Iterable<ModuleId>): Int {
        for (i in (0 until chunks.size).reversed()) {
            if (moduleIds.intersect(chunks[i].modules.map { it.moduleId }.toSet()).isNotEmpty()) {
                return i
            }
        }
        return -1
    }

    fun chunkSize(index: Int) = if (index < chunks.size) chunks[index].modules.size else 0

    fun insertAt(chunkIndex: Int, module: FoundModule) {
        while (chunks.size <= chunkIndex) chunks += GenerationChunk()
        chunks[chunkIndex].modules += module
        allModuleIds += module.moduleId
    }

    fun contains(id: ModuleId) = allModuleIds.contains(id)
}