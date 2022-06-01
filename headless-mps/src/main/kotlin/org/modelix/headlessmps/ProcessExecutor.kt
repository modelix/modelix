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
package org.modelix.headlessmps

import java.io.*
import java.util.concurrent.TimeUnit
import kotlin.math.max

open class ProcessExecutor() {
    var outputHandler: (String)->Unit = { println(it) }
    var timeoutSeconds: Int = 300

    @Throws(IOException::class, InterruptedException::class)
    fun exec(command: List<String>) {
        outputHandler("Running command: " + command.joinToString(" "))
        val process = ProcessBuilder(command).start()
        val outputThread = StreamCopyThread(process.inputStream)
        val errorOutputThread = StreamCopyThread(process.errorStream)
        outputThread.start()
        errorOutputThread.start()
        while (!process.waitFor(1, TimeUnit.SECONDS)) {
            val lastOutput = max(outputThread.lastOutput, errorOutputThread.lastOutput)
            if (System.currentTimeMillis() - lastOutput > timeoutSeconds * 1000) {
                process.destroy()
                process.waitFor(10, TimeUnit.SECONDS)
                if (process.isAlive) process.destroyForcibly()
                outputThread.interrupt()
                errorOutputThread.interrupt()
                throw RuntimeException("Process timed out")
            }
        }
        val exitValue = process.exitValue()
        if (exitValue != 0) throw RuntimeException("Process failed with exit value $exitValue")
    }

    inner class StreamCopyThread(private val stream: InputStream) : Thread() {
        var lastOutput: Long = System.currentTimeMillis()
        override fun run() {
            val reader = BufferedReader(InputStreamReader(stream))
            var line = reader.readLine()
            while (line != null) {
                lastOutput = System.currentTimeMillis()
                outputHandler(line)
                line = reader.readLine()
            }
        }
    }
}