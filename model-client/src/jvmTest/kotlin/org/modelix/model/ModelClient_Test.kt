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

import org.junit.After
import org.junit.Assert
import org.junit.Before
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

        Runtime.getRuntime()
            .addShutdownHook(
                Thread(
                    Runnable {
                        try {
                            modelServer.kill()
                        } catch (ex: Exception) {
                            System.err.println("Exception: " + ex.message)
                            ex.printStackTrace()
                        }
                    }
                )
            )
    }

    @After
    fun cleaning() {
        modelServer.kill()
    }

    // This test requires a running model server
    // It should be marked as a slow test and run separately from unit tests
    // @Test
    // disabled because it fails sometimes but not always on the CI server
    fun test_t1() {
        val rand = Random(67845)
        val url = "http://localhost:28101/"
        val clients = listOf(RestWebModelClient(url), RestWebModelClient(url), RestWebModelClient(url))
        val listeners: MutableList<Listener> = ArrayList()
        val expected: MutableMap<String, String> = HashMap()
        for (client in clients) {
            for (i in 1..3) {
                println("Phase A: client $client i=$i of 3")
//                Thread.sleep(50)
                val key = "test_$i"
                val l = Listener(key, client)
                client.listen(key, l)
                listeners.add(l)
            }
        }
        Thread.sleep(1000)
        for (i in 1..10) {
            println("Phase B: i=$i of 10")
            if (!modelServer.isUp()) {
                throw IllegalStateException("The model-server is not up")
            }
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
            for (timeout in 0..1000) {
                if (listeners.all { expected[it.key] == it.lastValue }) {
                    println("All changes received after $timeout ms")
                    break
                }
                Thread.sleep(1)
            }
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
