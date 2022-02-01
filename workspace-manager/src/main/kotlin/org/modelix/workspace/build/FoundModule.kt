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

class FoundModule(val moduleId: ModuleId, val name: String, val owner: ModuleOwner) {
    val dependsOnModuleId: MutableSet<ModuleId> = LinkedHashSet()

    init {
        owner.modules += this
    }

    fun addDependency(moduleId: ModuleId) {
        if (moduleId.id.isNotEmpty()) {
            dependsOnModuleId += moduleId
        }
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as FoundModule

        if (moduleId != other.moduleId) return false
        if (name != other.name) return false
        if (owner != other.owner) return false
        if (dependsOnModuleId != other.dependsOnModuleId) return false

        return true
    }

    override fun hashCode(): Int {
        var result = moduleId.hashCode()
        result = 31 * result + name.hashCode()
        result = 31 * result + owner.hashCode()
        result = 31 * result + dependsOnModuleId.hashCode()
        return result
    }


}