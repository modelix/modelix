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

import org.modelix.buildtools.modulepersistence.*
import java.io.File
import kotlin.io.path.pathString

abstract class ModuleOwner(val path: ModulePath) {
    val modules: MutableMap<ModuleId, FoundModule> = LinkedHashMap()

    open fun getRootOwner(): ModuleOwner = this

    fun getOrCreateModule(descriptor: ModuleDescriptor): FoundModule {
        val type: ModuleType = when (descriptor) {
            is SolutionDescriptor -> ModuleType.Solution
            is LanguageDescriptor -> ModuleType.Language
            is GeneratorDescriptor -> ModuleType.Generator
            is DevkitDescriptor -> ModuleType.Devkit
            else -> throw RuntimeException("Unknown descriptor type: $descriptor")
        }
        return getOrCreateModule(descriptor.id, type).apply {
            moduleDescriptor = descriptor
        }
    }

    fun getOrCreateModule(descriptor: DeploymentDescriptor): FoundModule {
        return getOrCreateModule(descriptor.id, descriptor.type).apply {
            deploymentDescriptor = descriptor
        }
    }

    fun getOrCreateModule(id: ModuleId, type: ModuleType): FoundModule {
        return modules[id] ?: FoundModule(id, this, type)
    }

    fun getWorkspaceRelativePath(): String {
        return "\$MODELIX_WORKSPACE\$/" + path.getWorkspaceRelativePath().pathString
    }
}