package org.modelix.model

import com.google.common.base.Charsets
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader
import java.net.ConnectException
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse
import java.util.stream.Collectors

class ModelServerManager {
    private val VERBOSE_SERVER = true
    private val VERBOSE_CONNECTION = false
    private var p: Process? = null
    fun kill() {
        if (p != null) {
            p!!.destroy()
            p = null
            try {
                Thread.sleep(1000)
            } catch (e: InterruptedException) {
            }
        }
    }

    fun isUp(): Boolean {
        return try {
            httpRequest("GET", "/")
            true
        } catch (e: ConnectException) {
            false
        }
    }

    fun waitItIsUp() {
        httpRequest("GET", "/")
    }

    private fun httpRequest(method: String, path: String, nRetries: Int = 10) {
        try {
            val client = HttpClient.newHttpClient()
            val request = HttpRequest.newBuilder(URI.create("http://localhost:28101$path"))
                .method(method, HttpRequest.BodyPublishers.noBody())
                .header("accept", "application/json")
                .build()
            client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8))
        } catch (e: ConnectException) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    println(
                        "  (connection failed, retrying in a bit. nRetries=$nRetries)"
                    )
                }
                try {
                    Thread.sleep(1000)
                } catch (e2: InterruptedException) {
                }
                httpRequest(method, path, nRetries - 1)
            } else {
                throw e
            }
        } catch (e: IOException) {
            e.printStackTrace()
        } catch (e: InterruptedException) {
            e.printStackTrace()
        }
    }

    fun startServerInMemory(presetValues: Map<String, String>) {
        try {
            val argsToSetValues = presetValues.entries.stream()
                .map { e: Map.Entry<String, String> -> " -set " + e.key + " " + e.value }
                .collect(Collectors.joining())
            val commandLine = (
                "${System.getProperty("java.home")}/bin/java -jar ../model-server/build/libs/model-server-latest-all.jar -inmemory" +
                    argsToSetValues
                )
            println("commandLine " + commandLine)
            p = Runtime.getRuntime().exec(commandLine)
            val stdInput = BufferedReader(InputStreamReader(p!!.inputStream))
            val stdError = BufferedReader(InputStreamReader(p!!.errorStream))
            Thread {
                try {
                    var s: String?
                    while (stdInput.readLine().also { s = it } != null) {
                        if (VERBOSE_SERVER) {
                            println("SERVER OUT $s")
                        }
                    }
                    while (stdError.readLine().also { s = it } != null) {
                        if (VERBOSE_SERVER) {
                            println("SERVER ERR $s")
                        }
                    }
                } catch (e: IOException) {
                    // this may happen when closing
                }
            }
                .start()
            try {
                Thread.sleep(1000)
            } catch (e: InterruptedException) {
            }
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }
}
