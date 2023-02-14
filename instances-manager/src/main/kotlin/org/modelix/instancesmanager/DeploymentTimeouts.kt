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
package org.modelix.instancesmanager

import org.apache.commons.collections4.map.HashedMap
import java.util.*

object DeploymentTimeouts {
    private val timeouts = Collections.synchronizedMap(HashedMap<InstanceName, Long>())
    fun update(deploymentName: InstanceName) {
        var timeoutStr = System.getProperty("DEPLOYMENT_USER_COPY_TIMEOUT")
        if (timeoutStr == null) timeoutStr = System.getenv("DEPLOYMENT_USER_COPY_TIMEOUT")
        var timeout: Long = 60
        if (timeoutStr != null && timeoutStr.length > 0) {
            try {
                timeout = timeoutStr.toLong()
            } catch (ex: NumberFormatException) {
            }
        }
        timeouts[deploymentName] = System.currentTimeMillis() + timeout * 60L * 1000L
    }

    fun isTimedOut(deploymentName: InstanceName): Boolean {
        synchronized(timeouts) {
            val timeout = timeouts[deploymentName] ?: return true
            if (timeout > System.currentTimeMillis()) return false
            timeouts.remove(deploymentName)
            return true
        }
    }
}