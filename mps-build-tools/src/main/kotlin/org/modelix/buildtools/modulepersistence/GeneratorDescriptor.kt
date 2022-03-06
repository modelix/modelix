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

import org.modelix.buildtools.*
import org.w3c.dom.Element

class GeneratorDescriptor(xml: Element, val languageDescriptor: LanguageDescriptor?) : ModuleDescriptor(xml) {
    val generateTemplates: Boolean
    val alias: String?
    val sourceLanguage: ModuleIdAndName?
    val dependsOnGenerators: List<ModuleIdAndName>
    val mappingPriorities: List<Element>

    init {
        generateTemplates = xml.getAttribute("generate-templates", "false").toBoolean()
        alias = xml.getAttributeOrNull("alias")
        sourceLanguage = xml.childElements("source-language")
            .map { ModuleIdAndName.fromReference(it.getAttribute("module")) }
            .firstOrNull()
        dependsOnGenerators = xml.childElements("external-templates")
            .flatMap { it.childElements("generator") }
            .map { ModuleIdAndName.fromReference(it.getAttribute("generatorUID")) }
        mappingPriorities = xml.childElements("mapping-priorities")
            .flatMap { it.childElements("mapping-priority-rule") }
    }

    fun getLanguage(): ModuleIdAndName? {
        return languageDescriptor?.let { ModuleIdAndName(it.id, it.name) }
            ?: sourceLanguage?.let { ModuleIdAndName(it.id, it.name) }
    }

    override fun getDefaultGeneratorOutputPath() = "generator/source_gen"
}