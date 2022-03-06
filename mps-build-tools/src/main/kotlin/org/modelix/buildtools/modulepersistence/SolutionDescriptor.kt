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

import org.modelix.buildtools.findTag
import org.modelix.buildtools.getAttribute
import org.modelix.buildtools.getAttributeOrNull
import org.w3c.dom.Element

class SolutionDescriptor(xml: Element): ModuleDescriptor(xml) {
    val pluginKind: SolutionKind?
    val compileInMps: Boolean
    val compileInIdea: Boolean
    val readOnlyStubs: Boolean

    init {
        pluginKind = xml.getAttributeOrNull("pluginKind")?.let { SolutionKind.valueOf(it) }
        compileInMps = xml.getAttribute("compileInMPS", "false").toBoolean()
        compileInIdea = xml.findTag("compileInIDEA") != null
        readOnlyStubs = xml.findTag("readOnlyStubs") != null

    }
}