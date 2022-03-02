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

class ModuleResolver(val availableModules: FoundModules, val ignoredModules: Set<ModuleId>) {
    fun resolveModule(dep: ModuleDependency, usedBy: FoundModule): FoundModule? {
        // jetbrains.mps.lang.docComment doesn't exist (referenced in jetbrains.mps.lang.text)
//        if (dep.id.id == "261403cf-60c1-4995-856b-0bc032f24218") return null
        val resolved = availableModules.getModules()[dep.id]
        if (resolved == null && !(dep.ignoreIfMissing || ignoredModules.contains(dep.id))) {
            throw RuntimeException("Dependency ${dep.id}(${dep.moduleName}) not found (used by ${usedBy.name}(${usedBy.moduleId}))")
        }
        return resolved
    }
}