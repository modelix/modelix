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

class FoundModules {
    private val modules: MutableMap<ModuleId, FoundModule> = LinkedHashMap()
    var mpsHome: File? = null
    val projects: MutableList<FoundProject> = ArrayList()
    val plugins: MutableMap<String, PluginModuleOwner> = LinkedHashMap()

    fun getPlugin(id: String): PluginModuleOwner? {
        return plugins[id]
    }

    fun getPluginWithDependencies(pluginId: String, result: MutableMap<String, PluginModuleOwner>) {
        if (result.containsKey(pluginId)) return
        val plugin = getPlugin(pluginId)
        if (plugin == null) {
            if (pluginId.startsWith("com.intellij")) {
                return
            } else {
                throw RuntimeException("plugin not found: $pluginId")
            }
        }
        result += pluginId to plugin
        for (dependency in plugin.pluginDependencies) {
            try {
                getPluginWithDependencies(dependency, result)
            } catch (e: RuntimeException) {
                throw RuntimeException("Failed to resolve dependencies for plugin $pluginId in ${plugin.path.getLocalAbsolutePath()}", e)
            }
        }
    }

    fun getModules(): Map<ModuleId, FoundModule> = modules

    fun addPlugin(plugin: PluginModuleOwner) {
        val pluginId = plugin.pluginId
        if (pluginId != null) {
            val existing = plugins[pluginId]
            require(existing == null) {
                "Duplicate plugin $pluginId in ${existing!!.path.getLocalAbsolutePath()} and ${plugin.path.getLocalAbsolutePath()}"
            }
            plugins += pluginId to plugin
        }
    }

    fun addModule(module: FoundModule) {
        if (module.moduleId.id.isNotEmpty()) {
            val existing = getModules()[module.moduleId]
            if (existing == module) return
            if (existing != null) {
                if (existing.owner != module.owner) {
                    println("""
                        Duplicate module ${module.moduleId}
                            in  ${module.owner.path.getLocalAbsolutePath()} (ignored)
                            and ${existing.owner.path.getLocalAbsolutePath()}
                    """.trimIndent())
                    // throw RuntimeException("Module ${module.moduleId} (${module.name}) already exists")
                }
                //existing.dependencies += module.dependencies
            } else {
                modules[module.moduleId] = module
                if (module.owner is PluginModuleOwner) {
                    val pluginId = module.owner.pluginId
                    if (pluginId != null) plugins += pluginId to module.owner
                }
            }

        }
    }

//    private fun getWithDependencies(rootModules: Set<ModuleId>): Set<FoundModule> {
//        val result = HashMap<ModuleId, FoundModule>()
//        rootModules.forEach { collectDeps(it, result) }
//        return result.values.toSet()
//    }
//
//    private fun collectDeps(moduleId: ModuleId, result: MutableMap<ModuleId, FoundModule>) {
//        if (result.containsKey(moduleId)) return
//        val module = modules[moduleId] ?: return
//        result[moduleId] = module
//        for (dependency in module.dependencies) {
//            collectDeps(dependency.id, result)
//        }
//    }
}