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
package org.modelix.graphql.server

import graphql.Scalars
import graphql.schema.*
import org.modelix.model.api.INodeReference
import org.modelix.model.api.ITree
import org.modelix.model.api.PNodeReference
import org.modelix.model.api.SimpleConcept
import org.modelix.model.metameta.MetaMetaLanguage
import org.modelix.model.metameta.MetaModelIndex
import org.modelix.model.metameta.PersistedConcept

class ModelixSchemaGenerator(val tree: ITree) {
    private val conceptTypes = HashMap<Long, GraphQLObjectType>()
    private val baseConcept = GraphQLObjectType.newObject()
        .name("BaseConcept")
        .field { it.name("_modelix_id").type(Scalars.GraphQLString) }
        .build()

    fun generate(): GraphQLSchema {
        for (languageId in tree.getChildren(ITree.ROOT_ID, MetaModelIndex.LANGUAGES_ROLE)) {
            for (conceptId in tree.getChildren(languageId, MetaMetaLanguage.childLink_Language_concepts.name)) {
                val fqName = getConceptFqName(conceptId)
                conceptTypes[conceptId] = GraphQLObjectType.newObject()
                    .name(fqName)
                    .field { it.name("_modelix_id").type(Scalars.GraphQLString) }
                    .field { it
                        .name("role")
                        .type(Scalars.GraphQLString)
                        .dataFetcher { env -> tree.getRole(env.getSource()) }
                    }
                    .apply {
                        for (superConcept in collectSuperConcepts(conceptId)) {
                            for (property in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_properties.name)) {
                                field { it.name(tree.getProperty(property, MetaMetaLanguage.property_Property_name.name)).type(Scalars.GraphQLString) }
                            }
                            for (childLink in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_childLinks.name)) {
                                field(generateField(
                                    tree.getProperty(childLink, MetaMetaLanguage.property_ChildLink_name.name),
                                    tree.getReferenceTarget(childLink, MetaMetaLanguage.referenceLink_ChildLink_childConcept.name)
                                ))
                            }
                            for (referenceLink in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_referenceLinks.name)) {
                                field(generateField(
                                    tree.getProperty(referenceLink, MetaMetaLanguage.property_ReferenceLink_name.name),
                                    tree.getReferenceTarget(referenceLink, MetaMetaLanguage.referenceLink_ReferenceLink_targetConcept.name)
                                ))
                            }
                        }
                    }
                    .build()
            }
        }

        val anyType = GraphQLUnionType.newUnionType()
            .name("Any")
            .also { union -> conceptTypes.values.sortedBy { it.name }.forEach { union.possibleType(it) }}
            .build()


//        val fetcher: DataFetcher<Any> = DataFetcher{ env ->
//            if (env.field.name == "customers") listOf("customer A", "customer B")
//            else when (env.fieldType) {
//                Scalars.GraphQLString -> "field: ${env.field.name}: ${env.fieldType.deepName}"
//                customer -> "Customer: " + env.parentType.toString()
//                else -> null
//            }
//        }
//        val fetcherFactory: DataFetcherFactory<Any> = DataFetcherFactory{ env ->
//            if (env.fieldDefinition.type == Scalars.GraphQLString || env.fieldDefinition.name == "customers") fetcher else PropertyDataFetcher.fetching<Any>(env.fieldDefinition.name)
//        }

        return GraphQLSchema.newSchema()
            .query(GraphQLObjectType.newObject()
                .name("Query")
                .field { it
                    .name("roots")
                    .type(GraphQLList.list(anyType))
                    .dataFetcher { env -> tree.getAllChildren(ITree.ROOT_ID).filter { tree.getConcept(it) !is SimpleConcept } }
                })
            .also { schemaBuilder -> conceptTypes.values.sortedBy { it.name }.forEach { schemaBuilder.additionalType(it) } }
            .additionalType(anyType)
            .codeRegistry(GraphQLCodeRegistry.newCodeRegistry()
//                .defaultDataFetcher(fetcherFactory)
                .typeResolver("Any") { env ->
                    val nodeId = env.getObject() as Long
                    val concept = tree.getConcept(nodeId) as PersistedConcept
                    conceptTypes[concept.id]
                }
                .build())
            .build()
    }

    fun getConceptFqName(conceptId: Long): String {
        val conceptName = tree.getProperty(conceptId, MetaMetaLanguage.property_Concept_name.name)
        val languageId = tree.getParent(conceptId)
        val languageName = tree.getProperty(languageId, MetaMetaLanguage.property_Language_name.name)
        return toValidName("$languageName.$conceptName")
    }

    fun toValidName(name: String) = name.replace("[^_0-9A-Za-z]".toRegex(), "_")

    fun generateField(name: String?, targetConcept: INodeReference?): GraphQLFieldDefinition {
        val targetType = if (targetConcept is PNodeReference) {
            GraphQLTypeReference.typeRef(getConceptFqName(targetConcept.id))
        } else {
            baseConcept
        }
        return GraphQLFieldDefinition.newFieldDefinition()
            .name(name)
            .type(targetType)
            .build()
    }

    fun collectSuperConcepts(conceptId: Long, acc: MutableSet<Long> = HashSet()): Set<Long> {
        if (acc.contains(conceptId)) return acc;
        acc += conceptId;

        for (superConceptRef in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_superConcepts.name)) {
            val superConcept = tree.getReferenceTarget(superConceptRef, MetaMetaLanguage.referenceLink_ConceptReference_concept.name)
            if (superConcept is PNodeReference) {
                collectSuperConcepts(superConcept.id, acc)
            }
        }

        return acc
    }
}