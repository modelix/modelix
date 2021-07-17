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

class MetaModelSynchronizer(val branch: IBranch) {
    private var cachedIndex: MetaModelIndex? = null

    fun getIndex(): MetaModelIndex {
        val tree = branch.transaction.tree
        var idx = cachedIndex
        if (idx == null) {
            idx = MetaModelIndex.fromTree(tree)
        } else if (idx.tree == tree) {
            return idx
        } else {
            // Don't use ITree.visitChanges at all and just read the whole meta model
            // On large models this is faster, because the meta model part is very small compared
            // to the potentially large changes

            // idx = MetaModelIndex.incremental(idx, tree)
            idx = MetaModelIndex.fromTree(tree)
        }
        cachedIndex = idx
        return idx
    }

    fun getLanguageId(lang: ILanguage): Long {
        var id: Long?
        val outdatedIndex = cachedIndex
        if (outdatedIndex != null) {
            // Performance optimization. The ID doesn't change after creation.
            // Avoid the expensive ITree.visitChanges during index update.
            id = outdatedIndex.getLanguageId(lang)
            if (id != null) return id
        }
        id = getIndex().getLanguageId(lang)
        if (id != null) return id
        val pendingReferences: MutableList<(MetaModelIndex)->Unit> = ArrayList()
        id = storeLanguage(lang, pendingReferences)
        processPendingReferences(getIndex(), pendingReferences)
        return id
    }

    fun getConceptId(concept: IConcept): Long {
        var id: Long?
        val outdatedIndex = cachedIndex
        if (outdatedIndex != null) {
            // Performance optimization. The ID doesn't change after creation.
            // Avoid the expensive ITree.visitChanges during index update.
            id = outdatedIndex.getConceptId(concept)
            if (id != null) return id
        }
        id = getIndex().getConceptId(concept)
        if (id != null) return id
        val pendingReferences: MutableList<(MetaModelIndex)->Unit> = ArrayList()
        id = storeConcept(getLanguageId(concept.language!!), concept, pendingReferences)
        processPendingReferences(getIndex(), pendingReferences)
        return id
    }

    fun getPropertyId(property: IProperty): Long {
        var id: Long?
        val outdatedIndex = cachedIndex
        if (outdatedIndex != null) {
            // Performance optimization. The ID doesn't change after creation.
            // Avoid the expensive ITree.visitChanges during index update.
            id = outdatedIndex.getPropertyId(property)
            if (id != null) return id
        }
        id = getIndex().getPropertyId(property)
        if (id != null) return id
        val pendingReferences: MutableList<(MetaModelIndex)->Unit> = ArrayList()
        id = storeProperty(getConceptId(property.getConcept()), property, pendingReferences)
        processPendingReferences(getIndex(), pendingReferences)
        return id
    }

    fun getChildLinkId(link: IChildLink): Long {
        var id: Long?
        val outdatedIndex = cachedIndex
        if (outdatedIndex != null) {
            // Performance optimization. The ID doesn't change after creation.
            // Avoid the expensive ITree.visitChanges during index update.
            id = outdatedIndex.getChildLinkId(link)
            if (id != null) return id
        }
        id = getIndex().getChildLinkId(link)
        if (id != null) return id
        val pendingReferences: MutableList<(MetaModelIndex)->Unit> = ArrayList()
        id = storeChildLink(getConceptId(link.getConcept()), link, pendingReferences)
        processPendingReferences(getIndex(), pendingReferences)
        return id
    }

    fun getReferenceLinkId(link: IReferenceLink): Long {
        var id: Long?
        val outdatedIndex = cachedIndex
        if (outdatedIndex != null) {
            // Performance optimization. The ID doesn't change after creation.
            // Avoid the expensive ITree.visitChanges during index update.
            id = outdatedIndex.getReferenceLinkId(link)
            if (id != null) return id
        }
        id = getIndex().getReferenceLinkId(link)
        if (id != null) return id
        val pendingReferences: MutableList<(MetaModelIndex)->Unit> = ArrayList()
        id = storeReferenceLink(getConceptId(link.getConcept()), link, pendingReferences)
        processPendingReferences(getIndex(), pendingReferences)
        return id
    }

    private fun processPendingReferences(index: MetaModelIndex, pendingReferences: List<(MetaModelIndex)->Unit>) {
        pendingReferences.forEach { it(index) }
    }

    private fun storeLanguage(lang: ILanguage, pendingReferences: MutableList<(MetaModelIndex)->Unit>): Long {
        val t = branch.transaction
        var id = t.getChildren(ITree.ROOT_ID, MetaModelIndex.LANGUAGES_ROLE)
            .find { t.getProperty(it, MetaMetaLanguage.property_IHasUID_uid.name) == lang.getUID() }
        if (id != null) return id
        if (!branch.canWrite()) throw RuntimeException("language ${lang.getName()} not found and not in a write transaction to create it")
        val wt = branch.writeTransaction
        id = wt.addNewChild(ITree.ROOT_ID, MetaModelIndex.LANGUAGES_ROLE, -1, MetaMetaLanguage.concept_Language)
        wt.setProperty(id, MetaMetaLanguage.property_IHasUID_uid.name, lang.getUID())
        wt.setProperty(id, MetaMetaLanguage.property_Language_name.name, lang.getName())

        for (concept in lang.getConcepts()) storeConcept(id, concept, pendingReferences)

        return id
    }

    private fun storeConcept(languageId: Long, concept: IConcept, pendingReferences: MutableList<(MetaModelIndex)->Unit>): Long {
        val t = branch.transaction
        var id = t.getChildren(languageId, MetaMetaLanguage.childLink_Language_concepts.name)
            .find { t.getProperty(it, MetaMetaLanguage.property_IHasUID_uid.name) == concept.getUID() }
        if (id != null) return id
        if (!branch.canWrite()) throw RuntimeException("concept ${concept.getLongName()} not found and not in a write transaction to create it")
        val wt = branch.writeTransaction
        id = wt.addNewChild(languageId, MetaMetaLanguage.childLink_Language_concepts.name, -1, MetaMetaLanguage.concept_Concept)
        wt.setProperty(id, MetaMetaLanguage.property_IHasUID_uid.name, concept.getUID())
        wt.setProperty(id, MetaMetaLanguage.property_Concept_name.name, concept.getShortName())
        wt.setProperty(id, MetaMetaLanguage.property_Concept_abstract.name, concept.isAbstract().toString())

        for (property in concept.getOwnProperties()) {
            storeProperty(id, property, pendingReferences)
        }

        for (childLink in concept.getOwnChildLinks()) {
            storeChildLink(id, childLink, pendingReferences)
        }

        for (referenceLink in concept.getOwnReferenceLinks()) {
            storeReferenceLink(id, referenceLink, pendingReferences)
        }

        return id
    }

    private fun storeProperty(conceptId: Long, property: IProperty, pendingReferences: MutableList<(MetaModelIndex)->Unit>): Long {
        val t = branch.transaction
        var id = t.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_properties.name)
            .find { t.getProperty(it, MetaMetaLanguage.property_IHasUID_uid.name) == property.getUID() }
        if (id != null) return id
        if (!branch.canWrite()) throw RuntimeException("property ${property.getConcept().getLongName()}.${property.name} not found and not in a write transaction to create it")
        val wt = branch.writeTransaction
        id = wt.addNewChild(conceptId, MetaMetaLanguage.childLink_Concept_properties.name, -1, MetaMetaLanguage.concept_Property)
        wt.setProperty(id, MetaMetaLanguage.property_IHasUID_uid.name, property.getUID())
        wt.setProperty(id, MetaMetaLanguage.property_Property_name.name, property.name)
        return id
    }

    private fun storeChildLink(conceptId: Long, link: IChildLink, pendingReferences: MutableList<(MetaModelIndex)->Unit>): Long {
        val t = branch.transaction
        var id = t.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_childLinks.name)
            .find { t.getProperty(it, MetaMetaLanguage.property_IHasUID_uid.name) == link.getUID() }
        if (id != null) return id
        if (!branch.canWrite()) throw RuntimeException("child link ${link.getConcept().getLongName()}.${link.name} not found and not in a write transaction to create it")
        val wt = branch.writeTransaction
        id = wt.addNewChild(conceptId, MetaMetaLanguage.childLink_Concept_childLinks.name, -1, MetaMetaLanguage.concept_ChildLink)
        wt.setProperty(id, MetaMetaLanguage.property_IHasUID_uid.name, link.getUID())
        wt.setProperty(id, MetaMetaLanguage.property_ChildLink_name.name, link.name)
        wt.setProperty(id, MetaMetaLanguage.property_ChildLink_multiple.name, link.isMultiple.toString())
        wt.setProperty(id, MetaMetaLanguage.property_ChildLink_optional.name, link.isOptional.toString())

        pendingReferences.add { index: MetaModelIndex ->
            val childConceptId = index.getConceptId(link.childConcept)
            if (childConceptId != null) {
                wt.setReferenceTarget(
                    id,
                    MetaMetaLanguage.referenceLink_ChildLink_childConcept.name,
                    PNodeAdapter(childConceptId, branch).reference
                )
            }
        }

        return id
    }

    private fun storeReferenceLink(conceptId: Long, link: IReferenceLink, pendingReferences: MutableList<(MetaModelIndex)->Unit>): Long {
        val t = branch.transaction
        var id = t.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_referenceLinks.name)
            .find { t.getProperty(it, MetaMetaLanguage.property_IHasUID_uid.name) == link.getUID() }
        if (id != null) return id
        if (!branch.canWrite()) throw RuntimeException("reference link ${link.getConcept().getLongName()}.${link.name} not found and not in a write transaction to create it")
        val wt = branch.writeTransaction
        id = wt.addNewChild(conceptId, MetaMetaLanguage.childLink_Concept_referenceLinks.name, -1, MetaMetaLanguage.concept_ReferenceLink)
        wt.setProperty(id, MetaMetaLanguage.property_IHasUID_uid.name, link.getUID())
        wt.setProperty(id, MetaMetaLanguage.property_ReferenceLink_name.name, link.name)
        wt.setProperty(id, MetaMetaLanguage.property_ReferenceLink_optional.name, link.isOptional.toString())

        pendingReferences.add { index: MetaModelIndex ->
            val targetConceptId = index.getConceptId(link.targetConcept)
            if (targetConceptId != null) {
                wt.setReferenceTarget(
                    id,
                    MetaMetaLanguage.referenceLink_ChildLink_childConcept.name,
                    PNodeAdapter(targetConceptId, branch).reference
                )
            }
        }

        return id
    }
}
