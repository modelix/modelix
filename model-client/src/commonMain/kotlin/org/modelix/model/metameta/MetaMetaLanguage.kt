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
package org.modelix.model.metameta

import org.modelix.model.api.*

object MetaMetaLanguage {
    val language_metameta = SimpleLanguage("modelix.metameta")

    val property_IHasUID_uid = SimpleProperty("uid")
    val concept_IHasUID = SimpleConcept("IHasUID", true, listOf())
        .addProperty(property_IHasUID_uid)

    val property_Language_name = SimpleProperty("name")
    val concept_Language = SimpleConcept("Language", false, listOf(concept_IHasUID))
        .addProperty(property_Language_name)

    val property_Concept_name = SimpleProperty("name")
    val property_Concept_abstract = SimpleProperty("abstract")
    val concept_Concept = SimpleConcept("Concept", false, listOf(concept_IHasUID))
        .addProperty(property_Concept_name)
        .addProperty(property_Concept_abstract)

    val property_Property_name = SimpleProperty("name")
    val concept_Property = SimpleConcept("Property", false, listOf(concept_IHasUID))
        .addProperty(property_Property_name)

    val property_ChildLink_name = SimpleProperty("name")
    val property_ChildLink_multiple = SimpleProperty("multiple")
    val property_ChildLink_optional = SimpleProperty("optional")
    val referenceLink_ChildLink_childConcept = SimpleReferenceLink("childConcept", false, concept_Concept)
    val concept_ChildLink = SimpleConcept("ChildLink", false, listOf(concept_IHasUID))
        .addProperty(property_ChildLink_name)
        .addProperty(property_ChildLink_multiple)
        .addProperty(property_ChildLink_optional)
        .addReferenceLink(referenceLink_ChildLink_childConcept)

    val referenceLink_ConceptReference_concept = SimpleReferenceLink("concept", false, concept_Concept)
    val concept_ConceptReference = SimpleConcept("ConceptReference", false, listOf(concept_IHasUID))
        .addReferenceLink(referenceLink_ConceptReference_concept)

    val property_ReferenceLink_name = SimpleProperty("name")
    val property_ReferenceLink_optional = SimpleProperty("optional")
    val referenceLink_ReferenceLink_targetConcept = SimpleReferenceLink("targetConcept", false, concept_Concept)
    val concept_ReferenceLink = SimpleConcept("ReferenceLink", false, listOf(concept_IHasUID))
        .addProperty(property_ReferenceLink_name)
        .addProperty(property_ReferenceLink_optional)
        .addReferenceLink(referenceLink_ReferenceLink_targetConcept)

    val childLink_Concept_properties = SimpleChildLink("properties", true, true, concept_Property)
    val childLink_Concept_childLinks = SimpleChildLink("childLinks", true, true, concept_ChildLink)
    val childLink_Concept_referenceLinks = SimpleChildLink("referenceLinks", true, true, concept_ReferenceLink)
    val childLink_Concept_superConcepts = SimpleChildLink("superConcepts", true, true, concept_ConceptReference)
    val childLink_Language_concepts = SimpleChildLink("concepts", true, true, concept_Concept)

    init {
        concept_Concept.addChildLink(childLink_Concept_properties)
        concept_Concept.addChildLink(childLink_Concept_childLinks)
        concept_Concept.addChildLink(childLink_Concept_referenceLinks)
        concept_Concept.addChildLink(childLink_Concept_superConcepts)
        concept_Language.addChildLink(childLink_Language_concepts)

        language_metameta.addConcept(concept_Language)
        language_metameta.addConcept(concept_Concept)
        language_metameta.addConcept(concept_ConceptReference)
        language_metameta.addConcept(concept_Property)
        language_metameta.addConcept(concept_ChildLink)
        language_metameta.addConcept(concept_ReferenceLink)
    }
}
