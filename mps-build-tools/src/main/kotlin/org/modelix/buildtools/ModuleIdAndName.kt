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

class ModuleIdAndName(val id: ModuleId, val name: String?) {
    companion object {
        fun fromString(text: String): ModuleIdAndName {
            return if (text.startsWith("l:")) fromLanguageRef(text) else fromReference(text)
        }

        fun fromReference(text: String): ModuleIdAndName {
            // 1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)
            val matchResult = Regex("""(~?.+)\((.+)\)""").matchEntire(text)
            if (matchResult == null) return ModuleIdAndName(ModuleId(text), null)
            return ModuleIdAndName(ModuleId(matchResult.groupValues[1]), matchResult.groupValues[2])
        }

        fun fromLanguageRef(text: String): ModuleIdAndName {
            // l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage
            val matchResult = Regex("""l:(.+):(.+)""").matchEntire(text)
            if (matchResult == null) return ModuleIdAndName(ModuleId(text), null)
            return ModuleIdAndName(ModuleId(matchResult.groupValues[1]), matchResult.groupValues[2])
        }
    }

    override fun toString(): String {
        return "$id($name)"
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as ModuleIdAndName

        if (id != other.id) return false

        return true
    }

    override fun hashCode(): Int {
        return id.hashCode()
    }
}