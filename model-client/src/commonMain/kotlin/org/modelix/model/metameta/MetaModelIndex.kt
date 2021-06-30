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

class MetaModelIndex private constructor(val tree: ITree) {
    companion object {
        const val LANGUAGES_ROLE = "languages"

        fun fromTree(tree: ITree): MetaModelIndex {
            val index = MetaModelIndex(tree)
            index.loadLanguages()
            return index
        }

        fun incremental(oldIndex: MetaModelIndex, newTree: ITree): MetaModelIndex {
            val index = MetaModelIndex(newTree)
            index.languagesMap.putAll(oldIndex.languagesMap)
            index.conceptsMap.putAll(oldIndex.conceptsMap)
            index.propertiesMap.putAll(oldIndex.propertiesMap)
            index.childLinksMap.putAll(oldIndex.childLinksMap)
            index.referenceLinksMap.putAll(oldIndex.referenceLinksMap)

            newTree.visitChanges(
                oldIndex.tree,
                object : ITreeChangeVisitor {
                    override fun childrenChanged(nodeId: Long, role: String?) {
                        if (nodeId == ITree.ROOT_ID && role == LANGUAGES_ROLE) {
                            index.loadLanguages()
                        } else {
                            when (newTree.getConcept(nodeId)) {
                                MetaMetaLanguage.concept_Concept -> index.loadConcept(nodeId)
                                MetaMetaLanguage.concept_Language -> index.loadLanguage(nodeId)
                                MetaMetaLanguage.concept_Property -> index.loadProperty(nodeId)
                                MetaMetaLanguage.concept_ChildLink -> index.loadChildLink(nodeId)
                                MetaMetaLanguage.concept_ReferenceLink -> index.loadReferenceLink(nodeId)
                            }
                        }
                    }

                    override fun propertyChanged(nodeId: Long, role: String) {
                        if (role == MetaMetaLanguage.property_IHasUID_uid.name) {
                            when (newTree.getConcept(nodeId)) {
                                MetaMetaLanguage.concept_Concept -> index.loadConcept(nodeId)
                                MetaMetaLanguage.concept_Language -> index.loadLanguage(nodeId)
                                MetaMetaLanguage.concept_Property -> index.loadProperty(nodeId)
                                MetaMetaLanguage.concept_ChildLink -> index.loadChildLink(nodeId)
                                MetaMetaLanguage.concept_ReferenceLink -> index.loadReferenceLink(nodeId)
                            }
                        }
                    }

                    override fun referenceChanged(nodeId: Long, role: String) {}
                    override fun containmentChanged(nodeId: Long) {}
                    override fun nodeAdded(nodeId: Long) {}
                    override fun nodeRemoved(nodeId: Long) {}
                }
            )

            return index
        }
    }

    private val languagesMap: MutableMap<String, Long> = HashMap()
    private val conceptsMap: MutableMap<String, Long> = HashMap()
    private val propertiesMap: MutableMap<String, Long> = HashMap()
    private val childLinksMap: MutableMap<String, Long> = HashMap()
    private val referenceLinksMap: MutableMap<String, Long> = HashMap()

    private fun loadLanguages() {
        for (langId in tree.getChildren(ITree.ROOT_ID, LANGUAGES_ROLE)) {
            loadLanguage(langId)
        }
    }

    private fun loadLanguage(langId: Long) {
        val uid = tree.getProperty(langId, MetaMetaLanguage.property_IHasUID_uid.name)
        if (uid == null) return
        languagesMap[uid] = langId
        for (conceptId in tree.getChildren(langId, MetaMetaLanguage.childLink_Language_concepts.name)) {
            loadConcept(conceptId)
        }
    }

    private fun loadConcept(conceptId: Long) {
        val uid = tree.getProperty(conceptId, MetaMetaLanguage.property_IHasUID_uid.name)
        if (uid == null) return
        conceptsMap[uid] = conceptId
        for (propertyId in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_properties.name)) {
            loadProperty(propertyId)
        }
        for (referencelink in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_referenceLinks.name)) {
            loadReferenceLink(referencelink)
        }
        for (childLink in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_childLinks.name)) {
            loadChildLink(childLink)
        }
    }

    private fun loadChildLink(childLink: Long) {
        val uid = tree.getProperty(childLink, MetaMetaLanguage.property_IHasUID_uid.name)
        if (uid == null) return
        childLinksMap[uid] = childLink
    }

    private fun loadReferenceLink(referenceLink: Long) {
        val uid = tree.getProperty(referenceLink, MetaMetaLanguage.property_IHasUID_uid.name)
        if (uid == null) return
        referenceLinksMap[uid] = referenceLink
    }

    private fun loadProperty(propertyId: Long) {
        val uid = tree.getProperty(propertyId, MetaMetaLanguage.property_IHasUID_uid.name)
        if (uid == null) return
        propertiesMap[uid] = propertyId
    }

    fun getLanguageId(lang: ILanguage): Long? = languagesMap[lang.getUID()]

    fun getConceptId(concept: IConcept): Long? = conceptsMap[concept.getUID()]

    fun getPropertyId(property: IProperty): Long? = propertiesMap[property.getUID()]

    fun getChildLinkId(link: IChildLink): Long? = childLinksMap[link.getUID()]

    fun getReferenceLinkId(link: IReferenceLink): Long? = referenceLinksMap[link.getUID()]
}
