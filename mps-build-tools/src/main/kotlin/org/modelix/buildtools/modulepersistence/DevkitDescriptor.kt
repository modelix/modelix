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
package org.modelix.buildtools.modulepersistence

import org.modelix.buildtools.ModuleIdAndName
import org.modelix.buildtools.childElements
import org.modelix.buildtools.findTag
import org.modelix.buildtools.getAttributeOrNull
import org.w3c.dom.Element

class DevkitDescriptor(xml: Element): ModuleDescriptor(xml) {
    val exportedLanguages: List<ModuleIdAndName>
    val exportedSolutions: List<ModuleIdAndName>
    val extendedDevkits: List<ModuleIdAndName>
    private val generationPlanModel: String?

    init {
        exportedLanguages = xml.childElements("exported-language")
            .map { ModuleIdAndName.fromReference(it.getAttribute("name")) }
        exportedSolutions = xml.childElements("exported-solutions")
            .flatMap { it.childElements("exported-solution") }
            .map { ModuleIdAndName.fromReference(it.textContent) }
        extendedDevkits = xml.childElements("extendedDevKits")
            .flatMap { it.childElements("extendedDevKit") }
            .map { ModuleIdAndName.fromReference(it.textContent) }
        generationPlanModel = xml.findTag("generation-plan")?.getAttributeOrNull("model")
    }
}