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

class GeneratorDependencyGraph(val moduleResolver: ModuleResolver) : DependencyGraph<FoundModule, ModuleId>() {
    override fun getKey(element: FoundModule): ModuleId {
        return element.moduleId
    }

    override fun getDependencies(element: FoundModule): Iterable<FoundModule> {
        return element.getGenerationDependencies(moduleResolver)
    }

    fun mergeGeneratorsAndLanguages() {
        val moduleOwners = moduleResolver.availableModules.getModules().values.map { it.owner }
            .filterIsInstance<SourceModuleOwner>().filter { it.modules.size > 1 }
        for (moduleOwner in moduleOwners) {
            val nodesToMerge = moduleOwner.modules.keys.mapNotNull { getNode(it) }.distinct()
            if (nodesToMerge.size < 2) continue
            for (source in nodesToMerge.drop(1)) {
                mergeNodes(source, nodesToMerge.first())
            }
        }
    }

    override fun postprocess() {
        mergeGeneratorsAndLanguages()
        super.postprocess()
    }

    override fun cycleBeforeMerge(cycle: Set<DependencyNode>) {
        val modules = cycle.flatMap { it.modules }
            .filter { it.moduleType == ModuleType.Language || it.moduleType == ModuleType.Solution }
        if (!modules.any { it.owner is SourceModuleOwner }) return
        if (modules.size > 1) {
            println("Dependency cycle: " + modules.joinToString(" -> ") { it.name })
        }
    }
}