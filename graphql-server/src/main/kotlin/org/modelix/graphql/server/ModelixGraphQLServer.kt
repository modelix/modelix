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

import com.expediagroup.graphql.server.extensions.toGraphQLError
import com.expediagroup.graphql.server.extensions.toGraphQLKotlinType
import com.expediagroup.graphql.server.extensions.toGraphQLResponse
import com.expediagroup.graphql.server.types.*
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import graphql.ExecutionInput
import graphql.GraphQL
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import kotlinx.coroutines.future.await
import org.modelix.model.api.ITree
import org.modelix.model.client.ReplicatedRepository
import org.modelix.model.client.RestWebModelClient
import org.modelix.model.lazy.RepositoryId
import java.io.IOException

class ModelixGraphQLServer {

    private val mapper = jacksonObjectMapper()
    private val modelClient = RestWebModelClient("http://localhost:32631/model/")
    private val repository = ReplicatedRepository(modelClient, RepositoryId("default"), "master", { "GraphQL" })

    suspend fun handle(applicationCall: ApplicationCall) {
        val tree = repository.branch.computeReadT { it.tree }

        val request = parseRequest(applicationCall.request)

        val result: GraphQLServerResponse? = when (request) {
            is GraphQLRequest -> handleGQLRequest(request, tree)
            is GraphQLBatchRequest -> GraphQLBatchResponse(
                request.requests.map {
                    handleGQLRequest(it, tree)
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

    suspend fun handleGQLRequest(request: GraphQLRequest, tree: ITree): GraphQLResponse<*> {
        val executionInput = toExecutionInput(request)
        val schema = ModelixSchemaGenerator(tree).generate()
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
}
