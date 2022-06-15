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
import io.ktor.server.html.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import kotlinx.html.*
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.authorization.AuthenticatedUser
import org.modelix.model.VersionMerger
import org.modelix.model.api.*
import org.modelix.model.client.IModelClient
import org.modelix.model.client.IdGenerator
import org.modelix.model.client.ReplicatedRepository
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId
import org.modelix.model.metameta.PersistedConcept
import org.modelix.model.operations.OTBranch
import org.modelix.model.persistent.CPVersion
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

    private fun getCurrentVersion(repositoryId: RepositoryId): CLVersion {
        val versionHash = client.asyncStore?.get(repositoryId.getBranchKey())!!
        return CLVersion.loadFromHash(versionHash, getStore())
    }

    private fun Route.initRouting() {
        get("/") {
            call.respondHtml(HttpStatusCode.OK) {
                body {
                    table {
                        tr {
                            td { +"GET /{repositoryId}/" }
                            td { + "Returns the model content of the latest version on the master branch." }
                        }
                        tr {
                            td { +"GET /{repositoryId}/{versionHash}/" }
                            td { + "Returns the model content of the specified version on the master branch." }
                        }
                        tr {
                            td { +"POST /{repositoryId}/init" }
                            td { + "Initializes a new repository." }
                        }
                        tr {
                            td { +"POST /{repositoryId}/{versionHash}/update" }
                            td {
                                + "Applies the delta to the specified version of the model and merges"
                                +" it into the master branch. Return the model content after the merge."
                            }
                        }
                    }
                }
            }
        }
        get("/{repositoryId}/") {
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val versionHash = client.asyncStore?.get(repositoryId.getBranchKey())!!
            // TODO 404 if it doesn't exist
            val version = CLVersion.loadFromHash(versionHash, getStore())
            respondVersion(version)
        }
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
        post("/{repositoryId}/{versionHash}/update") {
            val updateData = JSONArray(call.receiveText())
            val baseVersionHash = call.parameters["versionHash"]!!
            val baseVersionData = getStore().get(baseVersionHash, { CPVersion.deserialize(it) })
            if (baseVersionData == null) {
                call.respond(HttpStatusCode.NotFound, "version not found: $baseVersionHash")
                return@post
            }
            val baseVersion = CLVersion(baseVersionData, getStore())
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val branch = OTBranch(PBranch(baseVersion.tree, client.idGenerator), client.idGenerator, client.storeCache!!)
            val userId = (call.principal<AuthenticatedUser>() ?: AuthenticatedUser.ANONYMOUS_USER).userIds.firstOrNull()
            branch.computeWriteT { t ->
                for (nodeData in (0 until updateData.length()).map { updateData.getJSONObject(it) }) {
                    updateNode(nodeData, containmentData = null, t)
                }
            }

            val operationsAndTree = branch.operationsAndTree
            val newVersion = CLVersion.createRegularVersion(
                client.idGenerator.generate(),
                Date().toString(),
                userId,
                operationsAndTree.second as CLTree,
                baseVersion,
                operationsAndTree.first.map { it.getOriginalOp() }.toTypedArray()
            )
            repositoryId.getBranchKey()
            val mergedVersion = VersionMerger(client.storeCache!!, client.idGenerator)
                .mergeChange(getCurrentVersion(repositoryId), newVersion)
            client.asyncStore!!.put(repositoryId.getBranchKey(), mergedVersion.hash)
            respondVersion(mergedVersion)

        }
        post("/generate-ids") {
            val quantity = call.request.queryParameters["quantity"]?.toInt() ?: 1000
            val ids = (client.idGenerator as IdGenerator).generate(quantity)
            respondJson(buildJSONObject {
                put("first", ids.first)
                put("last", ids.last)
            })
        }
    }

    private fun updateNode(nodeData: JSONObject, containmentData: ContainmentData?, t: IWriteTransaction): Long {
        var containmentData = containmentData
        val nodeId = nodeData.getLong("nodeId")
        if (!t.containsNode(nodeId)) {
            if (containmentData == null) {
                containmentData = ContainmentData(nodeData.optLong("parent", ITree.ROOT_ID), nodeData.optString("role", null), nodeData.optInt("index", -1))
            }
            t.addNewChild(
                containmentData.parent,
                containmentData.role,
                containmentData.index,
                nodeId,
                null as IConcept?
            )
        }
        nodeData.optJSONObject("properties")?.stringEntries()?.forEach { (role, newValue) ->
            if (t.getProperty(nodeId, role) != newValue) {
                t.setProperty(nodeId, role, newValue)
            }
        }
        nodeData.optJSONObject("references")?.longEntries()?.forEach { (role, newTargetId) ->
            val currentTarget = t.getReferenceTarget(nodeId, role)
            val currentTargetId: Long? = when (currentTarget) {
                is LocalPNodeReference -> currentTarget.id
                is PNodeReference -> if (currentTarget.branchId == t.tree.getId()) currentTarget.id else null
                else -> null
            }
            if (newTargetId != currentTargetId) {
                val newTarget = if (newTargetId == null) null else LocalPNodeReference(newTargetId)
                t.setReferenceTarget(nodeId, role, newTarget)
            }
        }
        nodeData.optJSONObject("children")?.arrayEntries()?.forEach { (role, childDataArray) ->
            val expectedChildren = childDataArray.mapIndexed { index, child ->
                when (child) {
                    is Number -> child.toLong()
                    is JSONObject -> updateNode(child, ContainmentData(nodeId, role, index), t)
                    else -> throw RuntimeException("Unsupported child data: $child")
                }
            }
            val unexpected = (t.getChildren(nodeId, role).toSet() - expectedChildren.toSet())
            if (unexpected.isNotEmpty()) {
                unexpected.forEach { child ->
                    t.moveChild(ITree.ROOT_ID, ITree.DETACHED_NODES_ROLE, -1, child)
                }

            }
            val actualChildren = t.getChildren(nodeId, role)
            if (actualChildren != expectedChildren) {
                expectedChildren.forEachIndexed { index, child ->
                    t.moveChild(nodeId, role, index, child)
                }
            }
        }
        return nodeId
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
            json.put("nodeId", node.nodeId)
        }
        val jsonProperties = JSONObject()
        val jsonReferences = JSONObject()
        val jsonChildren = JSONObject()
        json.put("properties", jsonProperties)
        json.put("references", jsonReferences)
        json.put("children", jsonChildren)

        for (role in node.getPropertyRoles()) {
            jsonProperties.put(role, node.getPropertyValue(role))
        }
        for (role in node.getReferenceRoles()) {
            val target = node.getReferenceTarget(role)
            if (target is PNodeAdapter) {
                jsonReferences.put(role, target.nodeId)
            }
        }
        for (children in node.allChildren.groupBy { it.roleInParent }) {
            jsonChildren.put(children.key ?: "null", children.value.map { node2json(it) })
        }
        return json
    }
}

private class ContainmentData(val parent: Long, val role: String?, val index: Int)