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
    public static final String KUBERNETES_NAMESPACE = "default";

    private Thread cleanupThread = new Thread() {
        @Override
        public void run() {
            while (true) {
                try {
                    cleanupDeployments();
                } catch (Exception ex) {
                    LOG.error("", ex);
                }
                try {
                    Thread.sleep(10_000);
                } catch (InterruptedException e) {
                    return;
                }
            }
        }
    };

    public DeploymentManagingHandler() {
        try {
            Configuration.setDefaultApiClient(ClientBuilder.cluster().build());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        cleanupThread.start();
    }

    @Override
    public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) {
        try {
            RedirectedURL redirectedURL = RedirectedURL.redirect(baseRequest, request);
            if (redirectedURL == null) return;
            if (redirectedURL.personalDeploymentName == null) return;
            DeploymentTimeouts.INSTANCE.update(redirectedURL.personalDeploymentName);
            boolean deploymentCreated = createDeployment(redirectedURL.originalDeploymentName, redirectedURL.personalDeploymentName);
            if (!deploymentCreated) throw new RuntimeException("Deployment doesn't exist: " + redirectedURL.originalDeploymentName);

            V1Deployment deployment = getDeployment(redirectedURL.personalDeploymentName);
            if (deployment == null) throw new RuntimeException("Failed to create deployment");

            Integer readyReplicas = deployment.getStatus() != null ? deployment.getStatus().getReadyReplicas() : null;
            if (readyReplicas == null || readyReplicas == 0) {
                baseRequest.setHandled(true);
                response.setContentType("text/html");
                response.setStatus(HttpServletResponse.SC_OK);
                String podLogs = getPodLogs(redirectedURL.personalDeploymentName);

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

            cleanupDeployments();
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    private final Object cleanupLock = new Object();
    private void cleanupDeployments() {
        // TODO doesn't work with multiple instances of this proxy
        synchronized (cleanupLock) {
            try {
                AppsV1Api appsApi = new AppsV1Api();
                CoreV1Api coreApi = new CoreV1Api();
                V1DeploymentList deployments = null;
                deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
                for (V1Deployment deployment : deployments.getItems()) {
                    String name = deployment.getMetadata().getName();
                    if (!name.startsWith(RedirectedURL.PERSONAL_DEPLOYMENT_PREFIX)) continue;
                    if (DeploymentTimeouts.INSTANCE.isTimedOut(name)) {
                        appsApi.deleteNamespacedDeployment(name, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                        coreApi.deleteNamespacedService(name, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                    }
                }
            } catch (ApiException e) {
                LOG.error("Deployment cleanup failed", e);
            }
        }
    }

    private V1Deployment getDeployment(String name) throws ApiException {
        AppsV1Api appsApi = new AppsV1Api();
        V1DeploymentList deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
        for (V1Deployment deployment : deployments.getItems()) {
            if (name.equals(deployment.getMetadata().getName())) return deployment;
        }
        return null;
    }

    private String getPodLogs(String deploymentName) {
        try {
            CoreV1Api coreApi = new CoreV1Api();
            V1PodList pods = coreApi.listNamespacedPod(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
            for (V1Pod pod : pods.getItems()) {
                if (!pod.getMetadata().getName().startsWith(deploymentName)) continue;
                return coreApi.readNamespacedPodLog(
                        pod.getMetadata().getName(),
                        KUBERNETES_NAMESPACE,
                        pod.getSpec().getContainers().get(0).getName(),
                        null, null, "true", null, null, 10_000, null);
            }
        } catch (Exception e) {
            LOG.error("", e);
            return null;
        }

        return null;
    }

    private boolean createDeployment(String originalDeploymentName, String personalDeploymentName) throws IOException, ApiException {
        AppsV1Api appsApi = new AppsV1Api();

        V1DeploymentList deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false);
        boolean deploymentExists = deployments.getItems().stream().anyMatch(d -> personalDeploymentName.equals(d.getMetadata().getName()));
        if (!deploymentExists) {
//            long numExisting = deployments.getItems().stream().filter(d -> d.getMetadata().getName().startsWith(personalDeploymentPrefix)).count();
//            if (numExisting > 10) throw new RuntimeException("Too many existing deployments");

            V1Deployment deployment = appsApi.readNamespacedDeployment(originalDeploymentName, KUBERNETES_NAMESPACE, null, null, null);
            deployment.getMetadata().creationTimestamp(null);
            deployment.getMetadata().setManagedFields(null);
            deployment.getMetadata().setUid(null);
            deployment.getMetadata().resourceVersion(null);
            deployment.setStatus(null);
            deployment.getMetadata().putAnnotationsItem("kubectl.kubernetes.io/last-applied-configuration", null);

            deployment.getMetadata().name(personalDeploymentName);
            deployment.getMetadata().putLabelsItem("app", personalDeploymentName);
            deployment.getSpec().getSelector().putMatchLabelsItem("app", personalDeploymentName);
            deployment.getSpec().getTemplate().getMetadata().putLabelsItem("app", personalDeploymentName);

            System.out.println("Creating deployment: ");
            System.out.println(Yaml.dump(deployment));
            appsApi.createNamespacedDeployment(KUBERNETES_NAMESPACE, deployment, null, null, null);
        }

        CoreV1Api coreApi = new CoreV1Api();
        V1ServiceList services = coreApi.listNamespacedService(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false);
        boolean serviceExists = services.getItems().stream().anyMatch(s -> personalDeploymentName.equals(s.getMetadata().getName()));
        if (!serviceExists) {
            V1Service service = coreApi.readNamespacedService(originalDeploymentName, KUBERNETES_NAMESPACE, null, null, null);
            service.getMetadata().putAnnotationsItem("kubectl.kubernetes.io/last-applied-configuration", null);
            service.getMetadata().setManagedFields(null);
            service.getMetadata().setUid(null);
            service.getMetadata().resourceVersion(null);
            service.getSpec().setClusterIP(null);
            service.getSpec().getPorts().forEach(p -> p.nodePort(null));
            service.setStatus(null);

            service.getMetadata().name(personalDeploymentName);
            service.getMetadata().putLabelsItem("app", personalDeploymentName);
            service.getMetadata().name(personalDeploymentName);
            service.getSpec().putSelectorItem("app", personalDeploymentName);


            System.out.println("Creating service: ");
            System.out.println(Yaml.dump(service));

            coreApi.createNamespacedService(KUBERNETES_NAMESPACE, service, null, null, null);
        }

        return true;
    }
}
