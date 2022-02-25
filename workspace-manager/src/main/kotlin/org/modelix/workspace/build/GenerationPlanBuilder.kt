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
package org.modelix.workspace.build

import org.modelix.headlessmps.PluginSpec

class GenerationPlanBuilder(val availableModules: FoundModules) {
    val plan: GenerationPlan = GenerationPlan()
    private val processedModules: MutableSet<ModuleId> = HashSet()
    private val currentProcessingModules: MutableList<ModuleId> = ArrayList()
    private val forcedChunkIndex: MutableMap<ModuleId, Int> = HashMap()

    fun build(modules: Iterable<FoundModule>) {
        modules.forEach { build(it) }
    }

    fun build(module: FoundModule) {
        if (processedModules.contains(module.moduleId)) return
        processedModules += module.moduleId

        currentProcessingModules += module.moduleId
        try {
            var cycleIds: List<ModuleId>? = null
            for (dependency in module.dependencies.mapNotNull { resolveModule(it, module) }) {
                if (module.owner is SourceModuleOwner) {
                    val cycleStart = currentProcessingModules.indexOf(dependency.moduleId)
                    if (cycleStart != -1) {
                        cycleIds = currentProcessingModules.drop(cycleStart) + dependency.moduleId
                        println("Dependency cycle detected: " + cycleIds.map { availableModules.getModules()[it]?.name }.joinToString(" -> "))
                        val chunkIndex = plan.getHighestChunkIndex(cycleIds).coerceAtLeast(0)
                        cycleIds.forEach { forcedChunkIndex[it] = chunkIndex }
                    }
                }
                build(dependency)
            }

            val plugins: MutableMap<String, PluginModuleOwner> = LinkedHashMap()

            when (val moduleOwner = module.owner) {
                is SourceModuleOwner -> {
                    val index = currentProcessingModules.firstNotNullOfOrNull { forcedChunkIndex[module.moduleId] }
                        ?: (plan.getHighestChunkIndex(module.dependencies.filter { it.type == DependencyType.Generator }.map { it.id }) + 1)
                    cycleIds?.forEach { forcedChunkIndex[it] = index }
                    plan.insertAt(index, module)
                }
                is LibraryModuleOwner -> plan.addLibrary(moduleOwner)
                is PluginModuleOwner -> availableModules.getPluginWithDependencies(moduleOwner.pluginId, plugins)
                else -> throw RuntimeException("Unknown owner: $moduleOwner")
            }

            plugins.values.forEach { plan.addPlugin(it) }
        } finally {
            currentProcessingModules.removeLast()
        }
    }

    fun resolveModule(dep: ModuleDependency, usedBy: FoundModule): FoundModule? {
        // jetbrains.mps.lang.docComment doesn't exist (referenced in jetbrains.mps.lang.text)
//        if (dep.id.id == "261403cf-60c1-4995-856b-0bc032f24218") return null
        val resolved = availableModules.getModules()[dep.id]
        if (resolved == null && !dep.ignoreIfMissing) {
            throw RuntimeException("Dependency ${dep.id} not found (used by ${usedBy.name})")
        }
        return resolved
    }
}