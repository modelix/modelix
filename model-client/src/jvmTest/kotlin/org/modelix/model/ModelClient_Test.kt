/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model

import org.glassfish.jersey.client.ClientConfig
import org.glassfish.jersey.client.ClientProperties
import org.junit.After
import org.junit.Assert
import org.junit.Before
import org.junit.Test
import org.modelix.model.client.RestWebModelClient
import java.util.*


class ModelClient_Test {

    private var modelServer = ModelServerManager()

    @Before
    fun prepare() {
        if (modelServer.isUp()) {
            throw IllegalStateException("The model-server is already up")
        }
        modelServer.startServerInMemory(emptyMap())
        modelServer.waitItIsUp()
    }

    @After
    fun cleaning() {
        modelServer.kill()
    }

    // This test requires a running model server
    @Test
    fun test_t1() {
        val rand = Random(67845)
        val url = "http://localhost:28101/"
        val clients = listOf(RestWebModelClient(url), RestWebModelClient(url), RestWebModelClient(url))
        val listeners: MutableList<Listener> = ArrayList()
        val expected: MutableMap<String, String> = HashMap()
        for (client in clients) {
            for (i in 0..9) {
                println("Phase A: client $client i=$i of 10")
                Thread.sleep(1000)
                val key = "test_$i"
                val l = Listener(key, client)
                client.listen(key, l)
                listeners.add(l)
            }
        }
        for (i in 0..99) {
            println("Phase B: i=$i of 100")
            //Thread.sleep(400)
            Thread.sleep(200)
            val key = "test_" + rand.nextInt(10)
            val value = rand.nextLong().toString()
            expected[key] = value
            println(" put $key = $value")
            val client = rand.nextInt(clients.size)
            println(" client is $client")
            clients[client].put(key, value)
            println(" put to client $client")
            for (client in clients) {
                Assert.assertEquals(expected[key], client[key])
            }
            println(" verified")
            Thread.sleep(100)
            for (l in listeners) {
                Assert.assertEquals(expected[l.key], l.lastValue)
            }
            println(" verified also on listeners")
        }
        for (client in clients) {
            client.dispose()
        }
    }

    inner class Listener(var key: String, private val client: RestWebModelClient) : IKeyListener {
        var lastValue: String? = null
        override fun changed(key: String, value: String?) {
            lastValue = value
            println("+change " + client + " / " + this.key + " / " + key + " = " + value)
        }
    }
}
