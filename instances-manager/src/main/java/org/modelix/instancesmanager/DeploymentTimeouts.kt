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

import org.modelix.instancesmanager.DeploymentManager
import java.lang.InterruptedException
import java.util.concurrent.atomic.AtomicLong
import java.util.concurrent.atomic.AtomicBoolean
import org.modelix.model.client.RestWebModelClient
import io.kubernetes.client.openapi.apis.AppsV1Api
import io.kubernetes.client.openapi.models.V1DeploymentList
import io.kubernetes.client.openapi.models.V1Deployment
import io.kubernetes.client.openapi.models.V1ObjectMeta
import io.kubernetes.client.openapi.ApiException
import javax.servlet.http.HttpServletRequest
import java.io.IOException
import java.lang.RuntimeException
import io.kubernetes.client.openapi.apis.CoreV1Api
import io.kubernetes.client.openapi.models.V1PodList
import io.kubernetes.client.openapi.models.V1Pod
import io.kubernetes.client.openapi.models.V1EnvVar
import io.kubernetes.client.openapi.models.V1ServiceList
import io.kubernetes.client.openapi.models.V1Service
import io.kubernetes.client.openapi.models.V1ServicePort
import io.kubernetes.client.openapi.models.V1Container
import io.kubernetes.client.openapi.models.V1ResourceRequirements
import org.apache.commons.collections4.map.HashedMap
import org.modelix.instancesmanager.DeploymentTimeouts
import java.lang.NumberFormatException
import javax.servlet.http.HttpServletResponse
import org.modelix.instancesmanager.ProxyServletWithWebsocketSupport
import java.net.URISyntaxException
import javax.servlet.ServletException
import org.eclipse.jetty.proxy.ProxyServlet
import java.util.*
import javax.servlet.ServletContext

class DeploymentTimeouts {
    private val timeouts = Collections.synchronizedMap(HashedMap<String?, Long>())
    fun update(deploymentName: String?) {
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

    fun isTimedOut(deploymentName: String?): Boolean {
        synchronized(timeouts) {
            val timeout = timeouts[deploymentName] ?: return true
            if (timeout > System.currentTimeMillis()) return false
            timeouts.remove(deploymentName)
            return true
        }
    }

    companion object {
        val INSTANCE = DeploymentTimeouts()
    }
}