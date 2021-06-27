/*
 * Copyright 2003-2021 JetBrains s.r.o.
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
package org.modelix.model.lazy

import org.modelix.model.api.IConcept
import org.modelix.model.api.SimpleConcept
import org.modelix.model.api.SimpleLanguage

class BootstrapConceptSerializer(languages: List<SimpleLanguage>) : IConceptReferenceSerializer {
    private val languages: Set<SimpleLanguage> = languages.toHashSet()
    private val concepts: Map<String, SimpleConcept> = languages.flatMap { it.getConcepts() }.associateBy { it.getLongName() }

    override fun serialize(concept: IConcept): String? {
        if (concept is SimpleConcept && languages.contains(concept.language)) {
            return concept.getLongName()
        }
        return null
    }

    override fun deserialize(serialized: String): IConcept? {
        return concepts[serialized]
    }
}