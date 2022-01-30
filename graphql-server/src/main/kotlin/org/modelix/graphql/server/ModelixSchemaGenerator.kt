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
package org.modelix.graphql.server

import graphql.Scalars
import graphql.TypeResolutionEnvironment
import graphql.schema.*
import org.modelix.model.api.*
import org.modelix.model.metameta.MetaMetaLanguage
import org.modelix.model.metameta.MetaModelIndex
import org.modelix.model.metameta.PersistedConcept

val I_BASE_CONCEPT_NAME = "I_BaseConcept"

class ModelixSchemaGenerator(val tree: ITree) {
    private val conceptTypes = HashMap<Long, GraphQLObjectType>()
    private val interfaceTypes = HashMap<Long, GraphQLInterfaceType>()
    private val iBaseConcept = GraphQLInterfaceType.newInterface()
        .name(I_BASE_CONCEPT_NAME)
        .apply { generateGenericFields { field(it) } }
        .build()
    private val baseConcept = GraphQLObjectType.newObject()
        .name("BaseConcept")
        .withInterface(iBaseConcept)
        .apply { generateGenericFields { field(it) } }
        .build()

    fun generate(): GraphQLSchema {
        for (languageId in tree.getChildren(ITree.ROOT_ID, MetaModelIndex.LANGUAGES_ROLE)) {
            for (conceptId in tree.getChildren(languageId, MetaMetaLanguage.childLink_Language_concepts.name)) {
                val fqName = getConceptFqName(conceptId)

                interfaceTypes[conceptId] = GraphQLInterfaceType.newInterface()
                    .name("I_$fqName")
//                    .apply {
//                        for (superConcept in collectSuperConcepts(conceptId)) {
//                            if (superConcept == conceptId) continue
//                            withInterface(GraphQLTypeReference("I_" + getConceptFqName(superConcept)))
//                        }
//                    }
                    .apply {
                        generateFields(conceptId) { field(it) }
                    }
                    .build()

                conceptTypes[conceptId] = GraphQLObjectType.newObject()
                    .name(fqName)
                    .apply {
                        for (superConcept in collectSuperConcepts(conceptId)) {
                            withInterface(GraphQLTypeReference("I_" + getConceptFqName(superConcept)))
                        }
                    }
                    .withInterface(iBaseConcept)
                    .apply {
                        generateFields(conceptId) { field(it) }
                    }
                    .build()
            }
        }

//        val anyType = GraphQLUnionType.newUnionType()
//            .name("Any")
//            .also { union -> conceptTypes.values.sortedBy { it.name }.forEach { union.possibleType(it) }}
//            .build()


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

        val conceptResolver = { env: TypeResolutionEnvironment ->
            val nodeId = env.getObject() as Long
            val concept = tree.getConcept(nodeId) as PersistedConcept
            conceptTypes[concept.id]
        }
        return GraphQLSchema.newSchema()
            .query(GraphQLObjectType.newObject()
                .name("Query")
                .field { it
                    .name("roots")
                    .type(GraphQLList.list(iBaseConcept))
                    .dataFetcher { env -> tree.getAllChildren(ITree.ROOT_ID).filter { tree.getConcept(it) !is SimpleConcept } }
                })
            .also { schemaBuilder -> conceptTypes.values.sortedBy { it.name }.forEach { schemaBuilder.additionalType(it) } }
            .also { schemaBuilder -> interfaceTypes.values.sortedBy { it.name }.forEach { schemaBuilder.additionalType(it) } }
//            .additionalType(anyType)
            .codeRegistry(GraphQLCodeRegistry.newCodeRegistry()
//                .defaultDataFetcher(fetcherFactory)
//                .typeResolver(anyType) { env ->
//                    val nodeId = env.getObject() as Long
//                    val concept = tree.getConcept(nodeId) as PersistedConcept
//                    conceptTypes[concept.id]
//                }
                .typeResolver(iBaseConcept, conceptResolver)
                .apply {
                    for (interfaceType in interfaceTypes) {
                        typeResolver(interfaceType.value, conceptResolver)
                    }
                }
                .build())
            .build()
    }

    private fun generateFields(conceptId: Long, field: (GraphQLFieldDefinition) -> Unit) {
        generateGenericFields(field)
        for (superConcept in collectSuperConcepts(conceptId)) {
            for (property in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_properties.name)) {
                field(GraphQLFieldDefinition.newFieldDefinition().name(tree.getProperty(property, MetaMetaLanguage.property_Property_name.name)).type(Scalars.GraphQLString).build())
            }
            for (childLink in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_childLinks.name)) {
                val multiple = tree.getProperty(childLink, MetaMetaLanguage.property_ChildLink_multiple.name) == "true"
                val linkName = tree.getProperty(childLink, MetaMetaLanguage.property_ChildLink_name.name)
                field(generateField(
                    linkName,
                    tree.getReferenceTarget(childLink, MetaMetaLanguage.referenceLink_ChildLink_childConcept.name),
                    multiple
                ) { env ->
                    tree.getChildren(env.getSource(), linkName).let {
                        if (multiple) it.toList()
                        else it.firstOrNull()
                    }
                })
            }
            for (referenceLink in tree.getChildren(superConcept, MetaMetaLanguage.childLink_Concept_referenceLinks.name)) {
                val linkName = tree.getProperty(referenceLink, MetaMetaLanguage.property_ReferenceLink_name.name)
                    ?: continue
                field(generateField(
                    linkName,
                    tree.getReferenceTarget(referenceLink, MetaMetaLanguage.referenceLink_ReferenceLink_targetConcept.name),
                    false
                ) { env ->
                    tree.getReferenceTarget(env.getSource(), linkName)?.let {
                        if (it is LocalPNodeReference) it.id else null
                    }
                })

            }
        }
    }

    private fun generateGenericFields(field: (GraphQLFieldDefinition) -> Unit) {
        field(GraphQLFieldDefinition.newFieldDefinition().name("_modelix_id")
            .type(Scalars.GraphQLID)
            .dataFetcher { env -> java.lang.Long.toHexString(env.getSource()) }.build())
        field(GraphQLFieldDefinition.newFieldDefinition().name("_role")
            .type(Scalars.GraphQLString)
            .dataFetcher { env -> tree.getRole(env.getSource()) }.build())
        field(GraphQLFieldDefinition.newFieldDefinition().name("_getProperty")
            .type(Scalars.GraphQLString)
            .argument { it.name("name").type(Scalars.GraphQLString) }
            .dataFetcher { env -> tree.getProperty(env.getSource(), env.getArgument("name")) }.build())
        field(GraphQLFieldDefinition.newFieldDefinition().name("_getChildren")
            .type(GraphQLList.list(GraphQLNonNull.nonNull(GraphQLTypeReference.typeRef(I_BASE_CONCEPT_NAME))))
            .argument { it.name("role").type(Scalars.GraphQLString) }
            .dataFetcher { env -> tree.getChildren(env.getSource(), env.getArgument("role")) }.build())
        field(GraphQLFieldDefinition.newFieldDefinition().name("_getAllChildren")
            .type(GraphQLList.list(GraphQLNonNull.nonNull(GraphQLTypeReference.typeRef(I_BASE_CONCEPT_NAME))))
            .dataFetcher { env -> tree.getAllChildren(env.getSource()) }.build())
        field(GraphQLFieldDefinition.newFieldDefinition().name("_getReferenceTarget")
            .type(GraphQLTypeReference.typeRef(I_BASE_CONCEPT_NAME))
            .argument { it.name("role").type(Scalars.GraphQLString) }
            .dataFetcher { env -> val referenceTarget = tree.getReferenceTarget(env.getSource(), env.getArgument("role"))
                if (referenceTarget is PNodeReference) referenceTarget.id else null
            }.build())
    }

    fun getConceptFqName(conceptId: Long): String {
        val conceptName = tree.getProperty(conceptId, MetaMetaLanguage.property_Concept_name.name)
        val languageId = tree.getParent(conceptId)
        val languageName = tree.getProperty(languageId, MetaMetaLanguage.property_Language_name.name)
        return toValidName("$languageName.$conceptName")
    }

    fun toValidName(name: String) = name.replace("[^_0-9A-Za-z]".toRegex(), "_")

    fun generateField(name: String?, targetConcept: INodeReference?, multiple: Boolean, fetcher: DataFetcher<*>): GraphQLFieldDefinition {
        val targetType = if (targetConcept is PNodeReference) {
            GraphQLTypeReference.typeRef( "I_" + getConceptFqName(targetConcept.id))
        } else {
            iBaseConcept
        }
        val fieldType = if (multiple) GraphQLList.list(GraphQLNonNull.nonNull(targetType)) else targetType

        return GraphQLFieldDefinition.newFieldDefinition()
            .name(name)
            .type(fieldType)
            .dataFetcher(fetcher)
            .build()
    }

    fun collectSuperConcepts(conceptId: Long, acc: MutableSet<Long> = HashSet()): Set<Long> {
        if (acc.contains(conceptId)) return acc;
        acc += conceptId;

        directSuperConcepts(conceptId).forEach { collectSuperConcepts(it, acc) }

        return acc
    }

    fun directSuperConcepts(conceptId: Long): List<Long> {
        return tree.getChildren(conceptId, MetaMetaLanguage.childLink_Concept_superConcepts.name)
            .map { tree.getReferenceTarget(it, MetaMetaLanguage.referenceLink_ConceptReference_concept.name) }
            .filterIsInstance<PNodeReference>()
            .map { it.id }
    }
}