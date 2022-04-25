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

import org.apache.commons.lang.StringEscapeUtils
import org.apache.log4j.Logger
import org.eclipse.jetty.server.Request
import org.eclipse.jetty.server.handler.AbstractHandler
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

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
                val events = deploymentManager.getEvents(redirectedURL.personalDeploymentName)
                response.writer
                    .append("<html>")
                    .append("<head>")
                    .append("<meta http-equiv=\"refresh\" content=\"5\">")
                    .append("</head>")
                    .append("<body>")
                    .append("<div>Starting MPS ...</div>")
                if (events.isNotEmpty()) {
                    response.writer.append("<br/><hr/><br/><table>")
                    for (event in events) {
                        response.writer.append("<tr>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.type)
                        response.writer.append("</td>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.reason)
                        response.writer.append("</td>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.eventTime?.toString() ?: "")
                        response.writer.append("</td>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.message)
                        response.writer.append("</td>")
                        response.writer.append("</tr>")
                    }
                    response.writer.append("</table>")
                }
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