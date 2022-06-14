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

import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.testing.*
import kotlinx.serialization.json.buildJsonObject
import org.json.JSONArray
import org.json.JSONObject
import org.modelix.model.api.ITree
import org.modelix.model.server.*
import kotlin.test.*

class JsonAPITest {
    private fun runTest(block: suspend ApplicationTestBuilder.() -> Unit) = testApplication {
        application {
            JsonModelServer(LocalModelClient(InMemoryStoreClient())).init(this)
        }
        block()
    }
    val repoId = "myrepo"

    @Test
    fun createNewRepo() = runTest {
        val response = client.post("/json/$repoId/init")
        assertEquals(HttpStatusCode.OK, response.status)
        assertEmptyVersion(JSONObject(response.bodyAsText()))
    }

    private fun assertEmptyVersion(json: JSONObject) {
        assertEquals(json.getJSONObject("root").getLong("nodeId"), 1L)
        assertEquals(json.getString("repositoryId"), repoId)
        assertNotNull(json.optString("versionHash"), "versionHash missing")
    }

    @Test
    fun getByVersionHash() = runTest {
        val versionHash = JSONObject(client.post("/json/$repoId/init").bodyAsText()).getString("versionHash")
        val response = client.get("/json/$repoId/$versionHash/")
        assertEquals(HttpStatusCode.OK, response.status)
        assertEmptyVersion(JSONObject(response.bodyAsText()))
    }

    @Test
    fun generateIds() = runTest {
        val quantity = 100
        val response = client.post("/json/generate-ids?quantity=$quantity")
        assertEquals(HttpStatusCode.OK, response.status)
        val jsonRanges = JSONArray(response.bodyAsText())
        val ranges = jsonRanges.map { it as JSONObject }
            .map { LongRange(it.getLong("first"), it.getLong("last")) }
        assertEquals(quantity, ranges.sumOf { it.count() })
    }

    @Test
    fun generateIdsAsList() = runTest {
        val quantity = 100
        val response = client.post("/json/generate-ids?quantity=$quantity&format=list")
        assertEquals(HttpStatusCode.OK, response.status)
        val ids = JSONArray(response.bodyAsText())
        assertEquals(quantity, ids.length())
    }

    @Test
    fun createNodes() = runTest {
        val versionHash = JSONObject(client.post("/json/$repoId/init").bodyAsText()).getString("versionHash")
        val ids = JSONArray(client.post("/json/generate-ids?quantity=10&format=list").bodyAsText())
            .asLongList().toMutableList()
        val response = client.post("/json/$repoId/$versionHash/update") {
            contentType(ContentType.Application.Json)
            setBody(buildJSONArray(
                buildJSONObject {
                    put("nodeId", ids.removeFirst())
                    put("parentId", ITree.ROOT_ID)
                    put("role", "entities")
                    put("properties", buildJSONObject {
                        put("name", "EntityA")
                    })
                }
            ).toString(2))
        }
        val bodyAsText = response.bodyAsText()
        println(bodyAsText)
        assertEquals(HttpStatusCode.OK, response.status)
        assertEmptyVersion(JSONObject(bodyAsText))
    }

}