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

import io.kubernetes.client.openapi.models.V1Event
import org.apache.commons.lang.StringEscapeUtils
import org.apache.log4j.Logger
import org.eclipse.jetty.server.Request
import org.eclipse.jetty.server.handler.AbstractHandler
import org.joda.time.DateTime
import org.joda.time.Duration
import org.joda.time.ReadableDuration
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

class DeploymentManagingHandler : AbstractHandler() {
    override fun handle(target: String, baseRequest: Request, request: HttpServletRequest, response: HttpServletResponse) {
        try {
            val deploymentManager: DeploymentManager = DeploymentManager.Companion.INSTANCE
            val redirectedURL = deploymentManager.redirect(baseRequest, request) ?: return
            val personalDeploymentName = redirectedURL.personalDeploymentName ?: return

            if (DeploymentManager.INSTANCE.isInstanceDisabled(personalDeploymentName)) {
                baseRequest.isHandled = true
                response.contentType = "text/html"
                response.status = HttpServletResponse.SC_OK
                response.writer.append("""<html><body>Instance is disabled. (<a href="/instances-manager/" target="_blank">Manage Instances</a>)</body></html>""")
                return
            }

            DeploymentTimeouts.INSTANCE.update(personalDeploymentName)
            val deployment = deploymentManager.getDeployment(personalDeploymentName, 3)
                ?: throw RuntimeException("Failed to create deployment " + personalDeploymentName + " for user " + redirectedURL.userId)
            val readyReplicas = if (deployment.status != null) deployment.status!!.readyReplicas else null
            if (readyReplicas == null || readyReplicas == 0) {
                baseRequest.isHandled = true
                response.contentType = "text/html"
                response.status = HttpServletResponse.SC_OK
                val podLogs = deploymentManager.getPodLogs(personalDeploymentName)
                val events = deploymentManager.getEvents(personalDeploymentName)
                val eventTime: (V1Event)-> DateTime? = {
                    listOfNotNull(
                        it.eventTime,
                        it.lastTimestamp,
                        it.firstTimestamp
                    ).firstOrNull()
                }
                response.writer.append("""
                        <html>
                        <head>
                            <meta http-equiv="refresh" content="5">
                            <style>
                                table {
                                    border-collapse: collapse;
                                }
                                td {
                                    border: 1px solid #aaa;
                                    padding: 0px 6px;
                                }
                            </style>
                        </head>
                        <body>
                            <div>Starting MPS ... (<a href="/instances-manager/" target="_blank">Manage Instances</a>)</div>
                    """.trimIndent())
                if (events.isNotEmpty()) {
                    response.writer.append("<br/><hr/><br/><table>")
                    for (event in events.sortedBy(eventTime)) {
                        response.writer.append("<tr>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, eventTime(event)?.toLocalTime()?.toString("HH:mm:ss") ?: "---")
                        response.writer.append("</td>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.type)
                        response.writer.append("</td>")
                        response.writer.append("<td>")
                        StringEscapeUtils.escapeHtml(response.writer, event.reason)
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