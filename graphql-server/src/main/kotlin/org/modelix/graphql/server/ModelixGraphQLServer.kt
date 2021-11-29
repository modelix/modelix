/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.modelix.graphql.server

import com.expediagroup.graphql.generator.extensions.deepName
import com.expediagroup.graphql.server.execution.GraphQLRequestParser
import com.expediagroup.graphql.server.extensions.toGraphQLError
import com.expediagroup.graphql.server.extensions.toGraphQLKotlinType
import com.expediagroup.graphql.server.extensions.toGraphQLResponse
import com.expediagroup.graphql.server.types.*
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import graphql.ExecutionInput
import graphql.GraphQL
import graphql.Scalars
import graphql.schema.*
import io.ktor.application.*
import io.ktor.http.*
import io.ktor.request.*
import io.ktor.response.*
import kotlinx.coroutines.future.await
import java.io.IOException

class ModelixGraphQLServer {

    private val mapper = jacksonObjectMapper()

    suspend fun handle(applicationCall: ApplicationCall) {
        val request = parseRequest(applicationCall.request)

        val result: GraphQLServerResponse? = when (request) {
            is GraphQLRequest -> handleGQLRequest(request)
            is GraphQLBatchRequest -> GraphQLBatchResponse(
                request.requests.map {
                    handleGQLRequest(it)
                }
            )
            else -> null
        }

        if (result != null) {
            val json = mapper.writeValueAsString(result)
            applicationCall.response.call.respond(json)
        } else {
            applicationCall.response.call.respond(HttpStatusCode.BadRequest, "Invalid request")
        }
    }

    suspend fun parseRequest(request: ApplicationRequest): GraphQLServerRequest = try {
        val rawRequest = request.call.receiveText()
        mapper.readValue(rawRequest, GraphQLServerRequest::class.java)
    } catch (e: IOException) {
        throw IOException("Unable to parse GraphQL payload.")
    }

    suspend fun handleGQLRequest(request: GraphQLRequest): GraphQLResponse<*> {
        val executionInput = toExecutionInput(request)
        val schema = buildSchema()
        val graphQL = GraphQL.newGraphQL(schema).build()
        return try {
            graphQL.executeAsync(executionInput).await().toGraphQLResponse()
        } catch (exception: Exception) {
            val error = exception.toGraphQLError()
            GraphQLResponse<Any?>(errors = listOf(error.toGraphQLKotlinType()))
        }
    }

    fun toExecutionInput(request: GraphQLRequest): ExecutionInput {
        return ExecutionInput.newExecutionInput()
            .query(request.query)
            .operationName(request.operationName)
            .variables(request.variables ?: emptyMap())
            .build()
    }

    fun load(fieldName: String): String {
        return "value for $fieldName"
    }

    fun buildSchema(): GraphQLSchema {
        val customer = GraphQLObjectType.newObject()
            .name("Customer")
            .field { it.name("name").type(Scalars.GraphQLString) }
            .build()

        val fetcher: DataFetcher<Any> = DataFetcher{ env ->
            if (env.field.name == "customers") listOf("customer A", "customer B")
            else when (env.fieldType) {
                Scalars.GraphQLString -> "field: ${env.field.name}: ${env.fieldType.deepName}"
                customer -> "Customer: " + env.parentType.toString()
                else -> null
            }
        }
        val fetcherFactory: DataFetcherFactory<Any> = DataFetcherFactory{ env ->
            if (env.fieldDefinition.type == Scalars.GraphQLString || env.fieldDefinition.name == "customers") fetcher else PropertyDataFetcher.fetching<Any>(env.fieldDefinition.name)
        }



        return GraphQLSchema.newSchema()
            .query(GraphQLObjectType.newObject()
                .name("Query")
                .field { it.name("customers").type(GraphQLList.list(customer)) })
            .codeRegistry(GraphQLCodeRegistry.newCodeRegistry().defaultDataFetcher(fetcherFactory).build())
            .build()
    }
}
