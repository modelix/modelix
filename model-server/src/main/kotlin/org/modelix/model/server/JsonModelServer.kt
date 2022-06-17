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
import io.ktor.network.sockets.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.html.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.websocket.*
import io.ktor.websocket.*
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.html.body
import kotlinx.html.table
import kotlinx.html.td
import kotlinx.html.tr
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.authorization.AuthenticatedUser
import org.modelix.authorization.EPermissionType
import org.modelix.authorization.PermissionId
import org.modelix.authorization.ktor.getJWT
import org.modelix.authorization.ktor.getUser
import org.modelix.authorization.ktor.requiresPermission
import org.modelix.model.IKeyListener
import org.modelix.model.VersionMerger
import org.modelix.model.api.*
import org.modelix.model.client.IdGenerator
import org.modelix.model.lazy.CLTree
import org.modelix.model.lazy.CLVersion
import org.modelix.model.lazy.RepositoryId
import org.modelix.model.operations.OTBranch
import org.modelix.model.persistent.CPVersion
import java.util.*

class JsonModelServer(val client: LocalModelClient) {

    fun getStore() = client.storeCache!!

    fun init(application: Application) {
        application.apply {
            install(WebSockets)
            routing {
                requiresPermission(PermissionId("model-json"), EPermissionType.READ) {
                    route("/json") {
                        initRouting()
                    }
                    get("/user") {
                        val jwt = call.getJWT()
                        if (jwt == null) {
                            call.respondText("No token available")
                        } else {
                            call.respondText(jwt.claims.map { "${it.key}: ${it.value}" }.joinToString("\n"))
                        }
                    }
                }
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
                            td { +"GET /{repositoryId}/{versionHash}/poll" }
                            td { + "" }
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
        get("/{repositoryId}/{versionHash}/poll") {
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val versionHash = call.parameters["versionHash"]!!
            pollEntry(client.store, repositoryId.getBranchKey(), versionHash) { newValue ->
                val version = CLVersion.loadFromHash(newValue!!, getStore())
                val oldVersion = CLVersion.loadFromHash(versionHash, getStore())
                respondVersion(version, oldVersion)
            }
        }
        webSocket("/{repositoryId}/ws") {
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val userId = call.getUser().userIds.firstOrNull()

            var lastVersion: CLVersion? = null
            val deltaMutex = Mutex()
            val sendDelta: suspend (CLVersion)->Unit = { newVersion ->
                if (newVersion.hash != lastVersion?.hash) {
                    deltaMutex.withLock {
                        send(versionAsJson(newVersion, lastVersion).toString())
                        lastVersion = newVersion
                    }
                }
            }

            val listener = object : IKeyListener {
                override fun changed(key: String, value: String?) {
                    if (value == null) return
                    launch {
                        val newVersion = CLVersion.loadFromHash(value, client.storeCache)
                        sendDelta(newVersion)
                    }
                }
            }

            client.listen(repositoryId.getBranchKey(), listener)
            try {
                sendDelta(getCurrentVersion(repositoryId))
                for (frame in incoming) {
                    when (frame) {
                        is Frame.Text -> {
                            val updateData = JSONArray(frame.readText())
                            val mergedVersion = applyUpdate(lastVersion!!, updateData, repositoryId, userId)
                            sendDelta(mergedVersion)
                        }
                        else -> {}
                    }
                }
            } finally {
                client.removeListener(repositoryId.getBranchKey(), listener)
            }
        }
        post("/{repositoryId}/init") {
            // TODO error if it already exists
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val newTree = CLTree(repositoryId, getStore())
            val userId = call.getUser().userIds.firstOrNull()
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
            val repositoryId = RepositoryId(call.parameters["repositoryId"]!!)
            val userId = getUser().userIds.firstOrNull()
            val baseVersionHash = call.parameters["versionHash"]!!
            val baseVersionData = getStore().get(baseVersionHash, { CPVersion.deserialize(it) })
            if (baseVersionData == null) {
                call.respond(HttpStatusCode.NotFound, "version not found: $baseVersionHash")
                return@post
            }
            val baseVersion = CLVersion(baseVersionData, getStore())
            val mergedVersion = applyUpdate(baseVersion, updateData, repositoryId, userId)
            respondVersion(mergedVersion, baseVersion)

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

    private fun applyUpdate(
        baseVersion: CLVersion,
        updateData: JSONArray,
        repositoryId: RepositoryId,
        userId: String?
    ): CLVersion {
        val branch = OTBranch(PBranch(baseVersion.tree, client.idGenerator), client.idGenerator, client.storeCache!!)
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
        // TODO handle concurrent write to the branchKey, otherwise versions might get lost. See ReplicatedRepository.
        return mergedVersion
    }

    private fun updateNode(nodeData: JSONObject, containmentData: ContainmentData?, t: IWriteTransaction): Long {
        var containmentData = containmentData
        val nodeId = nodeData.getString("nodeId").toLong()
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

    private suspend fun CallContext.respondVersion(version: CLVersion, oldVersion: CLVersion? = null) {
        val json = versionAsJson(version, oldVersion)
        respondJson(json)
    }

    private fun versionAsJson(
        version: CLVersion,
        oldVersion: CLVersion?
    ): JSONObject {
        val branch = TreePointer(version.tree)
        val rootNode = PNodeAdapter(ITree.ROOT_ID, branch)
        val json = JSONObject()
        json.put("repositoryId", version.tree.getId())
        json.put("versionHash", version.hash)
        if (oldVersion == null) {
            json.put("root", node2json(rootNode, true))
        } else {
            val nodesToInclude = HashSet<Long>()
            version.tree.visitChanges(oldVersion.tree, object : ITreeChangeVisitorEx {
                override fun childrenChanged(nodeId: Long, role: String?) {
                    nodesToInclude += nodeId
                }

                override fun containmentChanged(nodeId: Long) {}

                override fun propertyChanged(nodeId: Long, role: String) {
                    nodesToInclude += nodeId
                }

                override fun referenceChanged(nodeId: Long, role: String) {
                    nodesToInclude += nodeId
                }

                override fun nodeAdded(nodeId: Long) {
                    nodesToInclude += nodeId
                }

                override fun nodeRemoved(nodeId: Long) {}
            })
            val changedNodes = nodesToInclude.map { node2json(PNodeAdapter(it, branch), false) }.toJsonArray()
            json.put("nodes", changedNodes)
            version.tree
        }
        return json
    }

    private suspend fun CallContext.respondJson(json: JSONObject) {
        call.respondText(json.toString(2), ContentType.Application.Json)
    }
    private suspend fun CallContext.respondJson(json: JSONArray) {
        call.respondText(json.toString(2), ContentType.Application.Json)
    }

    private fun node2json(node: INode, includeDescendants: Boolean): JSONObject {
        val json = JSONObject()
        if (node is PNodeAdapter) {
            json.put("nodeId", node.nodeId.toString())
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
                jsonReferences.put(role, target.nodeId.toString())
            }
        }
        for (children in node.allChildren.groupBy { it.roleInParent }) {
            if (includeDescendants) {
                jsonChildren.put(children.key ?: "null", children.value.map { node2json(it, includeDescendants) })
            } else {
                jsonChildren.put(children.key ?: "null", children.value.map { (it as PNodeAdapter).nodeId.toString() })
            }
        }
        return json
    }
}

private class ContainmentData(val parent: Long, val role: String?, val index: Int)