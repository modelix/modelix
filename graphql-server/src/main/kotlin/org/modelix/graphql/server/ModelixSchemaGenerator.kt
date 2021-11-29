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

import com.expediagroup.graphql.generator.extensions.deepName
import graphql.Scalars
import graphql.schema.*
import org.modelix.model.api.ITree
import org.modelix.model.metameta.MetaMetaLanguage
import org.modelix.model.metameta.MetaModelIndex

class ModelixSchemaGenerator(val tree: ITree) {

    fun generate(): GraphQLSchema {
        val typeBuilders = HashMap<Long, GraphQLObjectType.Builder>()

        val baseConcept = GraphQLObjectType.newObject()
            .name("BaseConcept")
            .field { it.name("_modelix_id").type(Scalars.GraphQLString) }
            .build()

        for (languageId in tree.getChildren(ITree.ROOT_ID, MetaModelIndex.LANGUAGES_ROLE)) {
            for (conceptId in tree.getChildren(languageId, MetaMetaLanguage.childLink_Language_concepts.name)) {
                val fqName = getConceptFqName(conceptId, tree)
                val type = GraphQLObjectType.newObject()
                    .name(fqName)
                    .field { it.name("_modelix_id").type(Scalars.GraphQLString) }
                    .apply {
                        for (property in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_properties.name)) {
                            field { it.name(tree.getProperty(property, MetaMetaLanguage.property_Property_name.name)).type(Scalars.GraphQLString) }
                        }
                        for (childLink in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_childLinks.name)) {
                            field { it.name(tree.getProperty(childLink, MetaMetaLanguage.property_ChildLink_name.name)).type(baseConcept) }
                        }
                        for (referenceLink in tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_referenceLinks.name)) {
                            field { it.name(tree.getProperty(referenceLink, MetaMetaLanguage.property_ReferenceLink_name.name)).type(baseConcept) }
                        }
                    }
                typeBuilders[conceptId] = type
            }
        }



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
                .field { it.name("dummy").type(Scalars.GraphQLString) })
            .also { schemaBuilder -> typeBuilders.values.forEach { schemaBuilder.additionalType(it.build()) } }
//            .codeRegistry(GraphQLCodeRegistry.newCodeRegistry().defaultDataFetcher(fetcherFactory).build())
            .build()
    }

    fun getConceptFqName(conceptId: Long, tree: ITree): String {
        val conceptName = tree.getProperty(conceptId, MetaMetaLanguage.property_Concept_name.name)
        val languageId = tree.getParent(conceptId)
        val languageName = tree.getProperty(languageId, MetaMetaLanguage.property_Language_name.name)
        return toValidName("$languageName.$conceptName")
    }

    fun toValidName(name: String) = name.replace("[^_0-9A-Za-z]".toRegex(), "_")
}