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
import kotlin.reflect.KClass

class JavaProcess(val mainClass: KClass<*>) {
    val jvmArgs: MutableList<String> = ArrayList()
    val args: MutableList<String> = ArrayList()
    val classpath: MutableList<String> = System.getProperty("java.class.path").split(File.pathSeparator).toMutableList()
    var timeoutSeconds: Int = 120
    var outputHandler: (String)->Unit = { println(it) }

    @Throws(IOException::class, InterruptedException::class)
    fun exec() {
        //jvmArgs += "-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=*:5094"
        val javaHome = System.getProperty("java.home")
        val separator = File.separator
        val javaBin = "$javaHome${separator}bin${separator}java"
        outputHandler("Classpath:")
        classpath.forEach { outputHandler("  $it") }
        val className = mainClass.qualifiedName ?: throw RuntimeException("mainClass has no qualifiedName")
        val command: MutableList<String> = ArrayList()
        command += javaBin
        command += jvmArgs
        command += "-cp"
        command += classpath.joinToString(File.pathSeparator)
        command += className
        command += args

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
                throw RuntimeException("Java process timed out")
            }
        }
        val exitValue = process.exitValue()
        if (exitValue != 0) throw RuntimeException("Java process failed with exit value $exitValue")
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