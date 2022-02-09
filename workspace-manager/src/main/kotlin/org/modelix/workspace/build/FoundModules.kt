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

import java.io.File

class FoundModules {
    val modules: MutableMap<ModuleId, FoundModule> = LinkedHashMap()
    var mpsHome: File? = null

    fun addModule(module: FoundModule) {
        if (module.moduleId.id.isNotEmpty()) {
            val existing = modules[module.moduleId]
            if (existing != null) {
                if (existing.owner != module.owner) {
                    println("Duplicate module ${module.moduleId} in ${module.owner.path.getLocalAbsolutePath()} and ${existing.owner.path.getLocalAbsolutePath()}")
                    // throw RuntimeException("Module ${module.moduleId} (${module.name}) already exists")
                }
                existing.dependencies += module.dependencies
            } else {
                modules[module.moduleId] = module
            }

        }
    }
}