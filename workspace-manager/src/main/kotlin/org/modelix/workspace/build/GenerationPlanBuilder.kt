/*
 * Copyright 2003-2022 JetBrains s.r.o.
 *
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

class GenerationPlanBuilder(val availableModules: FoundModules) {
    val plan: GenerationPlan = GenerationPlan()
    val processedModules: MutableSet<ModuleId> = HashSet()

    fun build(modules: Iterable<FoundModule>) {
        modules.forEach { build(it) }
    }

    fun build(module: FoundModule) {
        if (processedModules.contains(module.moduleId)) return
        processedModules += module.moduleId

        for (dependency in module.dependsOnModuleId.mapNotNull { resolveModule(it, module) }) {
            build(dependency)
        }

        when (val moduleOwner = module.owner) {
            is SourceModuleOwner -> {
                val index = plan.getHighestChunkIndex(module.dependsOnModuleId) + 1
                plan.insertAt(index, module)
            }
            is LibraryModuleOwner -> plan.libraries += moduleOwner
            is PluginModuleOwner -> plan.plugins += moduleOwner
            else -> throw RuntimeException("Unknown owner: $moduleOwner")
        }
    }

    fun resolveModule(id: ModuleId, usedBy: FoundModule): FoundModule? {
        // jetbrains.mps.lang.docComment doesn't exist (referenced in jetbrains.mps.lang.text)
        if (id.id == "261403cf-60c1-4995-856b-0bc032f24218") return null
        return availableModules.modules[id] ?:
            throw RuntimeException("Dependency $id not found (used by ${usedBy.name})")
    }
}