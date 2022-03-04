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

import kotlin.math.max

class GenerationPlanBuilder(val availableModules: FoundModules, val ignoredModules: Set<ModuleId>) {
    val plan: GenerationPlan = GenerationPlan()
    private val processedNodes: MutableSet<DependencyGraph.DependencyNode> = HashSet()
    private val chunkIndexes: MutableMap<DependencyGraph.DependencyNode, Int> = HashMap()

    fun build(modules: Iterable<FoundModule>): DependencyGraph {
        val dependencyGraph = DependencyGraph(ModuleResolver(availableModules, ignoredModules))
        dependencyGraph.load(modules)
        dependencyGraph.getRoots().forEach { build(it) }
        return dependencyGraph
    }

    private fun build(node: DependencyGraph.DependencyNode) {
        if (processedNodes.contains(node)) return
        processedNodes += node

        node.getDependencies().forEach { build(it) }
        var chunkIndex = -1
        node.getDependencies().mapNotNull { chunkIndexes[it] }
            .forEach { chunkIndex = max(it, chunkIndex) }
        chunkIndex++
        // Too large chunks require too much memory
        while (plan.chunkSize(chunkIndex) > 20) {
            chunkIndex++
        }

        // a chunk without any models (e.g. only devkits) makes the generator fail ('Build aborted: nothing to do')
        val hasNoModels = node.modules.none { it.moduleType != ModuleType.Devkit }
        if (hasNoModels && chunkIndex > 0) {
            // a devkit is not generated and therefor doesn't require its dependencies to be generated
            chunkIndex--
        }

        val plugins: MutableMap<String, PluginModuleOwner> = LinkedHashMap()

        for (module in node.modules) {
            when (val moduleOwner = module.owner) {
                is SourceModuleOwner -> {
                    var moduleToGenerate = module
                    if (module.moduleType == ModuleType.Generator) {
                        val owningLanguage = module.owner.modules.values.find { it.moduleType == ModuleType.Language }
                        if (owningLanguage != null) moduleToGenerate = owningLanguage
                    }
                    if (!plan.contains(moduleToGenerate.moduleId)) {
                        plan.insertAt(chunkIndex, moduleToGenerate)
                        chunkIndexes[node] = chunkIndex
                    }
                }
                is LibraryModuleOwner -> plan.addLibrary(moduleOwner)
                is PluginModuleOwner -> availableModules.getPluginWithDependencies(moduleOwner.pluginId, plugins)
                else -> throw RuntimeException("Unknown owner: $moduleOwner")
            }
        }

        plugins.values.forEach { plan.addPlugin(it) }
    }
}