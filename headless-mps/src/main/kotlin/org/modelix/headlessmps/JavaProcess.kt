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
import kotlin.reflect.KClass

class JavaProcess(val mainClass: KClass<*>): ProcessExecutor() {
    val jvmArgs: MutableList<String> = ArrayList()
    val args: MutableList<String> = ArrayList()
    val classpath: MutableList<String> = System.getProperty("java.class.path").split(File.pathSeparator).toMutableList()

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
        if (classpath.isNotEmpty()) {
            command += "-cp"
            command += classpath.joinToString(File.pathSeparator)
        }
        command += className
        command += args

        exec(command)
    }
}