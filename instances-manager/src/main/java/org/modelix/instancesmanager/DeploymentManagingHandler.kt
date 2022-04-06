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
import org.apache.commons.lang.StringEscapeUtils
import org.apache.log4j.Logger
import java.util.LinkedList
import org.modelix.instancesmanager.DeploymentTimeouts
import java.lang.NumberFormatException
import javax.servlet.http.HttpServletResponse
import org.modelix.instancesmanager.ProxyServletWithWebsocketSupport
import java.net.URISyntaxException
import javax.servlet.ServletException
import org.eclipse.jetty.proxy.ProxyServlet
import org.eclipse.jetty.server.Request
import org.eclipse.jetty.server.handler.AbstractHandler
import java.lang.Exception
import javax.servlet.ServletContext

class DeploymentManagingHandler : AbstractHandler() {
    override fun handle(target: String, baseRequest: Request, request: HttpServletRequest, response: HttpServletResponse) {
        try {
            val deploymentManager: DeploymentManager = DeploymentManager.Companion.INSTANCE
            val redirectedURL = deploymentManager.redirect(baseRequest, request) ?: return
            if (redirectedURL.personalDeploymentName == null) return
            DeploymentTimeouts.Companion.INSTANCE.update(redirectedURL.personalDeploymentName)
            val deployment = deploymentManager.getDeployment(redirectedURL.personalDeploymentName, 3)
                ?: throw RuntimeException("Failed to create deployment " + redirectedURL.personalDeploymentName + " for user " + redirectedURL.userId)
            val readyReplicas = if (deployment.status != null) deployment.status!!.readyReplicas else null
            if (readyReplicas == null || readyReplicas == 0) {
                baseRequest.isHandled = true
                response.contentType = "text/html"
                response.status = HttpServletResponse.SC_OK
                val podLogs = deploymentManager.getPodLogs(redirectedURL.personalDeploymentName)
                response.writer
                    .append("<html>")
                    .append("<head>")
                    .append("<meta http-equiv=\"refresh\" content=\"5\">")
                    .append("</head>")
                    .append("<body>")
                    .append("<div>Starting MPS ...</div>")
                if (podLogs != null) {
                    response.writer.append("<br/><hr/><br/><pre>")
                    StringEscapeUtils.escapeHtml(response.writer, podLogs)
                    response.writer.append("</pre>")
                }
                response.writer
                    .append("</body>")
                    .append("</html>")
            }
        } catch (ex: Exception) {
            throw RuntimeException(ex)
        }
    }

    companion object {
        private val LOG = Logger.getLogger(DeploymentManagingHandler::class.java)
    }
}