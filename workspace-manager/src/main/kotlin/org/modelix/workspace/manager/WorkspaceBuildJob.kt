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
package org.modelix.workspace.manager

import org.modelix.workspaces.Workspace
import java.io.File

class WorkspaceBuildJob(val workspace: Workspace, val downloadFile: File) {
    var status: WorkspaceBuildStatus = WorkspaceBuildStatus.New
    var output: List<String> = ArrayList()
    val outputHandler: (String)->Unit = { append(it) }
    var lastOutput: Long = 0

    fun appendException(e: Throwable) {
        append(e::class.qualifiedName + ": " + e.message)
        e.stackTrace.map { "  $it" }.forEach { append(it) }
    }

    inline fun runSafely(statusOnException: WorkspaceBuildStatus? = null, block: () -> Unit) {
        try {
            block()
        } catch (e: Exception) {
            appendException(e)
            if (statusOnException != null) status = statusOnException
        }
    }

    fun append(text: String) {
        output += text
        lastOutput = System.currentTimeMillis()
    }
}

