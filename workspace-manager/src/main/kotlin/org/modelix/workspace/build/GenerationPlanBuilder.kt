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

class GenerationPlanBuilder(val availableModules: Map<ModuleId, FoundModule>) {
    val plan: GenerationPlan = GenerationPlan()
    val processedModules: MutableSet<ModuleId> = HashSet()

    fun build(modules: Iterable<FoundModule>) {
        modules.forEach { build(it) }
    }

    fun build(module: FoundModule) {
        if (processedModules.contains(module.moduleId)) return
        processedModules += module.moduleId

        module.dependsOnModuleId.mapNotNull { availableModules[it] }.forEach { build(it) }
        val index = plan.getHighestChunkIndex(module.dependsOnModuleId) + 1
        plan.insertAt(index, module)
    }
}