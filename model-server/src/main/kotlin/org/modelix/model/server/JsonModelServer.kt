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
package org.modelix.model.server

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.util.pipeline.*
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.authorization.AuthenticatedUser
import org.modelix.model.api.INode
import org.modelix.model.api.ITree
import org.modelix.model.api.PNodeAdapter
import org.modelix.model.api.TreePointer
import org.modelix.model.client.IModelClient
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId
import org.modelix.model.server.CallContext
import java.util.Date

class JsonModelServer(val client: IModelClient) {

    fun getStore() = client.storeCache!!

    fun init(application: Application) {
        application.routing {
            route("/json") {
                initRouting()
            }
        }
    }

    private fun Route.initRouting() {
        get("/{repositoryId}/{versionHash}/") {
            val versionHash = call.parameters["versionHash"]!!
            // TODO 404 if it doesn't exist
            val version = CLVersion.loadFromHash(versionHash, getStore())
            respondVersion(version)
        }
        post("/{repositoryId}/init") {
            // TODO error if it already exists
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val newTree = CLTree(repositoryId, getStore())
            val userId = call.principal<AuthenticatedUser>()?.userIds?.firstOrNull()
            val newVersion = CLVersion.createRegularVersion(
                client.idGenerator.generate(),
                Date().toString(),
                userId,
                newTree,
                null,
                emptyArray()
            )
            client.asyncStore!!.put(repositoryId.getBranchKey(), newVersion.hash)
            respondVersion(newVersion)
        }
        post("/generate-ids") {
            val quantity = call.request.queryParameters["quantity"]?.toInt() ?: 1000
            val ranges = ArrayList<Array<Long>>()
            val firstId = client.idGenerator.generate()
            var currentRange = arrayOf(firstId, firstId)
            ranges += currentRange
            var count = 1
            while (count < quantity) {
                // TODO add a method IIdGenerator.generate(quantity: Int): LongRange
                val id = client.idGenerator.generate()
                if (id == currentRange[1] + 1) {
                    currentRange[1] = id
                } else {
                    currentRange = arrayOf(id, id)
                    ranges += currentRange
                }
                count++
            }

            val json = JSONArray()
            ranges.forEach { range ->
                json.put(JSONObject().apply {
                    put("first", range[0])
                    put("last", range[1])
                })
            }
            respondJson(json)
        }
    }

    private suspend fun CallContext.respondVersion(version: CLVersion) {
        val rootNode = PNodeAdapter(ITree.ROOT_ID, TreePointer(version.tree))
        val json = JSONObject()
        json.put("repositoryId", version.tree.getId())
        json.put("versionHash", version.hash)
        json.put("root", node2json(rootNode))
        respondJson(json)
    }

    private suspend fun CallContext.respondJson(json: JSONObject) {
        call.respondText(json.toString(2), ContentType.Application.Json)
    }
    private suspend fun CallContext.respondJson(json: JSONArray) {
        call.respondText(json.toString(2), ContentType.Application.Json)
    }

    private fun node2json(node: INode): JSONObject {
        val json = JSONObject()
        if (node is PNodeAdapter) {
            json.put("modelixId", node.nodeId)
        }
        for (role in node.getPropertyRoles()) {
            json.put(role, node.getPropertyValue(role))
        }
        for (role in node.getReferenceRoles()) {
            val target = node.getReferenceTarget(role)
            if (target is PNodeAdapter) {
                json.put(role, target.nodeId)
            }
        }
        for (children in node.allChildren.groupBy { it.roleInParent }) {
            json.put(children.key ?: "null", children.value.map { node2json(it) })
        }
        return json
    }
}