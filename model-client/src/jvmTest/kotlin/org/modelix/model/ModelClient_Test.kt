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
import org.junit.Test
import org.modelix.model.client.RestWebModelClient
import java.util.*
import kotlin.test.fail

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
    @Test
    fun test_t1() {
        val numClients = 3 * Runtime.getRuntime().availableProcessors() // tests were failing on the CI server, but not locally
        val numListenersPerClient = 3
        val numKeys = numListenersPerClient * 2

        val rand = Random(67845)
        val url = "http://localhost:28101/"
        val clients = (0 until numClients).map { RestWebModelClient(url) }
        val listeners: MutableList<Listener> = ArrayList()
        val expected: MutableMap<String, String> = HashMap()
        for (client in clients.withIndex()) {
            for (i in 0 until numListenersPerClient) {
                println("Phase A: client $client i=$i of ${clients.size}")
//                Thread.sleep(50)
                val key = "test_$i"
                val l = Listener(key, client.value, client.index, i)
                client.value.listen(key, l)
                listeners.add(l)
            }
        }
        Thread.sleep(2000)
        for (i in (1..2).flatMap { 0 until numKeys }) {
            println("Phase B: i=$i of $numKeys")
            if (!modelServer.isUp()) {
                throw IllegalStateException("The model-server is not up")
            }
            val key = "test_$i"
            val value = rand.nextLong().toString()
            expected[key] = value
            println(" put $key = $value")
            val writingClientIndex = rand.nextInt(clients.size)
            println(" client is $writingClientIndex")
            try {
                clients[writingClientIndex].put(key, value)
            } catch (e: Exception) {
                System.err.println(e.message)
                e.printStackTrace(System.err)
                throw e
            }
            println(" put to client $writingClientIndex")
            for (client in clients) {
                Assert.assertEquals(expected[key], client.get(key))
            }
            println(" verified")
            for (timeout in 0..3000) {
                if (listeners.all { expected[it.key] == it.lastValue }) {
                    println("All changes received after $timeout ms")
                    break
                }
                Thread.sleep(1)
            }
            val unsuccessfulListeners = listeners.filter { expected[it.key] != it.lastValue }
            if (unsuccessfulListeners.isNotEmpty()) {
                fail("change not received by listeners: $unsuccessfulListeners")
            }
            println(" verified also on listeners")
        }
        for (client in clients) {
            client.dispose()
        }
    }

    inner class Listener(var key: String, private val client: RestWebModelClient, val clientIndex: Int, val listenerIndex: Int) : IKeyListener {
        var lastValue: String? = null
        override fun changed(key: String, value: String?) {
            lastValue = value
            println("+change " + this + " / " + this.key + " / " + key + " = " + value)
        }
        override fun toString() = "$clientIndex.$listenerIndex:$key"
    }
}
