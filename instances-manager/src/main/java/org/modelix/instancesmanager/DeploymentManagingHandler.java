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
package org.modelix.instancesmanager;

import io.kubernetes.client.openapi.ApiException;
import io.kubernetes.client.openapi.Configuration;
import io.kubernetes.client.openapi.apis.AppsV1Api;
import io.kubernetes.client.openapi.apis.CoreV1Api;
import io.kubernetes.client.openapi.models.V1Deployment;
import io.kubernetes.client.openapi.models.V1DeploymentList;
import io.kubernetes.client.openapi.models.V1Pod;
import io.kubernetes.client.openapi.models.V1PodList;
import io.kubernetes.client.openapi.models.V1Service;
import io.kubernetes.client.openapi.models.V1ServiceList;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Yaml;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.AbstractHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

public class DeploymentManagingHandler extends AbstractHandler {
    private static final Logger LOG = Logger.getLogger(DeploymentManagingHandler.class);

    public DeploymentManagingHandler() {

    }

    @Override
    public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) {
        try {
            DeploymentManager deploymentManager = DeploymentManager.INSTANCE;
            RedirectedURL redirectedURL = deploymentManager.redirect(baseRequest, request);
            if (redirectedURL == null) return;
            if (redirectedURL.personalDeploymentName == null) return;
            DeploymentTimeouts.INSTANCE.update(redirectedURL.personalDeploymentName);

            V1Deployment deployment = deploymentManager.getDeployment(redirectedURL.personalDeploymentName, 3);
            if (deployment == null) throw new RuntimeException("Failed to create deployment " + redirectedURL.personalDeploymentName + " for user " + redirectedURL.userId);

            Integer readyReplicas = deployment.getStatus() != null ? deployment.getStatus().getReadyReplicas() : null;
            if (readyReplicas == null || readyReplicas == 0) {
                baseRequest.setHandled(true);
                response.setContentType("text/html");
                response.setStatus(HttpServletResponse.SC_OK);
                String podLogs = deploymentManager.getPodLogs(redirectedURL.personalDeploymentName);

                response.getWriter()
                        .append("<html>")
                        .append("<head>")
                        .append("<meta http-equiv=\"refresh\" content=\"5\">")
                        .append("</head>")
                        .append("<body>")
                        .append("<div>Starting MPS ...</div>");

                if (podLogs != null) {
                    response.getWriter().append("<br/><hr/><br/><pre>");
                    StringEscapeUtils.escapeHtml(response.getWriter(), podLogs);
                    response.getWriter().append("</pre>");
                }

                response.getWriter()
                        .append("</body>")
                        .append("</html>");
            }
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

}
