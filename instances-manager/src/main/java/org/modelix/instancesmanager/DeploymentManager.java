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

import io.kubernetes.client.custom.Quantity;
import io.kubernetes.client.openapi.ApiException;
import io.kubernetes.client.openapi.Configuration;
import io.kubernetes.client.openapi.apis.AppsV1Api;
import io.kubernetes.client.openapi.apis.CoreV1Api;
import io.kubernetes.client.openapi.models.V1Deployment;
import io.kubernetes.client.openapi.models.V1DeploymentList;
import io.kubernetes.client.openapi.models.V1EnvVar;
import io.kubernetes.client.openapi.models.V1ObjectMeta;
import io.kubernetes.client.openapi.models.V1Pod;
import io.kubernetes.client.openapi.models.V1PodList;
import io.kubernetes.client.openapi.models.V1ResourceRequirements;
import io.kubernetes.client.openapi.models.V1Service;
import io.kubernetes.client.openapi.models.V1ServiceList;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Yaml;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Request;
import org.json.JSONObject;
import org.modelix.model.client.RestWebModelClient;

import javax.annotation.Nullable;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class DeploymentManager {
    private static final Logger LOG = Logger.getLogger(DeploymentManager.class);
    public static final String KUBERNETES_NAMESPACE = "default";
    public static final DeploymentManager INSTANCE = new DeploymentManager();
    public static final String INSTANCE_PER_USER_ANNOTATION_KEY = "instance-per-user";
    public static final String MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY = "max-unassigned-instances";
    public static final String PERSONAL_DEPLOYMENT_PREFIX = "user-copy-";
    public static final Pattern WORKSPACE_PATTERN = Pattern.compile("workspace-([a-f0-9]+)-([a-zA-Z0-9\\-_\\*]+)");

    private Thread cleanupThread = new Thread() {
        @Override
        public void run() {
            while (true) {
                try {
                    reconcileDeployments();
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

    private final String managerId = Long.toHexString(System.currentTimeMillis() / 1000);
    private final AtomicLong deploymentSuffixSequence = new AtomicLong(0xf);
    private final Map<String, Assignments> assignments = Collections.synchronizedMap(new HashMap<>());
    private final AtomicBoolean dirty = new AtomicBoolean(true);
    private RestWebModelClient modelClient = new RestWebModelClient(System.getenv("model_server_url"));

    public DeploymentManager() {
        try {
            Configuration.setDefaultApiClient(ClientBuilder.cluster().build());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        init();
        reconcileDeployments();
        cleanupThread.start();
    }

    private Assignments getAssignments(String originalDeploymentName) {
        return assignments.computeIfAbsent(originalDeploymentName, Assignments::new);
    }

    private String generatePersonalDeploymentName(String originalDeploymentName) {
        String cleanName = originalDeploymentName.toLowerCase().replaceAll("[^a-z0-9-]", "");
        String deploymentName = PERSONAL_DEPLOYMENT_PREFIX + managerId + "-" + cleanName;
        String suffix = "-" + Long.toHexString(deploymentSuffixSequence.incrementAndGet());
        int charsToRemove = deploymentName.length() + suffix.length() - (63 - 16);
        if (charsToRemove > 0) deploymentName = deploymentName.substring(0, deploymentName.length() - charsToRemove);
        return deploymentName + suffix;
    }

    private void init() {
        AppsV1Api appsApi = new AppsV1Api();
        V1DeploymentList deployments = null;
        try {
            deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
            for (V1Deployment deployment : deployments.getItems()) {
                V1ObjectMeta metadata = deployment.getMetadata();
                if (metadata == null) continue;
                Map<String, String> annotations = metadata.getAnnotations();
                if (annotations == null) continue;
                if ("true".equals(annotations.get(INSTANCE_PER_USER_ANNOTATION_KEY))) {
                    getAssignments(metadata.getName()).setNumberOfUnassigned(deployment);
                }
            }
        } catch (ApiException e) {
            LOG.error("", e);
        }
    }

    public RedirectedURL redirect(@Nullable Request baseRequest, HttpServletRequest request) {
        RedirectedURL redirected = RedirectedURL.redirect(baseRequest, request);
        if (redirected == null) return null;
        if (redirected.userId == null) return redirected;

        String originalDeploymentName = redirected.originalDeploymentName;
        String assignmentKey = originalDeploymentName;
        if (WORKSPACE_PATTERN.matcher(originalDeploymentName).matches()) {
            originalDeploymentName = "workspace-client";
        }

        try {
            V1Deployment originalDeployment = getDeployment(originalDeploymentName, 3);
            V1ObjectMeta metadata = originalDeployment.getMetadata();
            Map<String, String> annotations = metadata != null ? metadata.getAnnotations() : null;
            boolean isInstancePerUser = annotations != null && "true".equals(annotations.get(INSTANCE_PER_USER_ANNOTATION_KEY));
            if (!isInstancePerUser) {
                return null;
            } else {
                Assignments assignments = getAssignments(assignmentKey);
                redirected.personalDeploymentName = assignments.getOrCreate(redirected.userId);
                assignments.setNumberOfUnassigned(originalDeployment);

                reconcileIfDirty();
            }
        } catch (ApiException e) {
            LOG.error("Failed to get deployment " + originalDeploymentName, e);
        }

        return redirected;
    }

    private final Object reconcileLock = new Object();
    private void reconcileDeployments() {
        // TODO doesn't work with multiple instances of this proxy
        synchronized (reconcileLock) {
            try {
                Map<String, String> expectedDeployments = new HashMap<>();
                Set<String> existingDeployments = new HashSet<>();
                synchronized (assignments) {
                    for (Assignments assignment : assignments.values()) {
                        assignment.removeTimedOut();
                        for (String deployment : assignment.getAllDeploymentNames()) {
                            expectedDeployments.put(deployment, assignment.originalDeploymentName);
                        }
                    }
                }

                AppsV1Api appsApi = new AppsV1Api();
                CoreV1Api coreApi = new CoreV1Api();
                V1DeploymentList deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
                for (V1Deployment deployment : deployments.getItems()) {
                    String name = deployment.getMetadata().getName();
                    if (name.startsWith(PERSONAL_DEPLOYMENT_PREFIX)) {
                        existingDeployments.add(name);
                    }
                }

                List<String> toAdd = expectedDeployments.keySet().stream().filter(d -> !existingDeployments.contains(d)).collect(Collectors.toList());
                List<String> toRemove = existingDeployments.stream().filter(d -> !expectedDeployments.containsKey(d)).collect(Collectors.toList());

                for (String d : toRemove) {
                    appsApi.deleteNamespacedDeployment(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                    coreApi.deleteNamespacedService(d, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                }

                for (String d : toAdd) {
                    String originalDeploymentName = expectedDeployments.get(d);
                    try {
                        createDeployment(originalDeploymentName, d);
                    } catch (Exception e) {
                        LOG.error("Failed to create deployment " + originalDeploymentName + " / " + d, e);
                    }
                }
            } catch (ApiException e) {
                LOG.error("Deployment cleanup failed", e);
            }
        }
    }

    private void reconcileIfDirty() {
        if (dirty.getAndSet(false)) reconcileDeployments();
    }

    public V1Deployment getDeployment(String name, int attempts) throws ApiException {
        AppsV1Api appsApi = new AppsV1Api();
        V1Deployment deployment = null;
        for (int i = 0; i < attempts; i++) {
            try {
                deployment = appsApi.readNamespacedDeployment(name, KUBERNETES_NAMESPACE, null, null, null);
            } catch (ApiException ex) {
                LOG.error("Failed to read deployment: " + name, ex);
            }
            if (deployment != null) break;
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                return null;
            }
        }
        return deployment;
    }

    public String getPodLogs(String deploymentName) {
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

    public boolean createDeployment(String originalDeploymentName, String personalDeploymentName) throws IOException, ApiException {
        String workspaceId = null;
        String workspaceHash = null;
        Matcher matcher = WORKSPACE_PATTERN.matcher(originalDeploymentName);
        if (matcher.matches()) {
            workspaceId = matcher.group(1);
            workspaceHash = matcher.group(2);
            if (!workspaceHash.contains("*")) workspaceHash = workspaceHash.substring(0, 5) + "*" + workspaceHash.substring(5);
            originalDeploymentName = "workspace-client";
        }

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
            deployment.getMetadata().putAnnotationsItem(INSTANCE_PER_USER_ANNOTATION_KEY, null);
            deployment.getMetadata().putAnnotationsItem(MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY, null);

            deployment.getMetadata().name(personalDeploymentName);
            deployment.getMetadata().putLabelsItem("app", personalDeploymentName);
            deployment.getSpec().getSelector().putMatchLabelsItem("app", personalDeploymentName);
            deployment.getSpec().getTemplate().getMetadata().putLabelsItem("app", personalDeploymentName);
            deployment.getSpec().replicas(1);

            if (workspaceId != null) {
                deployment.getSpec().getTemplate().getSpec().getContainers().get(0)
                        .addEnvItem(new V1EnvVar().name("modelix_workspace_id").value(workspaceId));
                deployment.getSpec().getTemplate().getSpec().getContainers().get(0)
                        .addEnvItem(new V1EnvVar().name("REPOSITORY_ID").value("workspace_" + workspaceId));
            }
            if (workspaceHash != null) {
                deployment.getSpec().getTemplate().getSpec().getContainers().get(0)
                        .addEnvItem(new V1EnvVar().name("modelix_workspace_hash").value(workspaceHash));

                loadMemoryLimit(workspaceHash, deployment);
            }

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

    private void loadMemoryLimit(String workspaceHash, V1Deployment deployment) {
        try {
            String workspaceSpecString = modelClient.get(workspaceHash);
            if (workspaceSpecString == null) return;
            JSONObject workspaceSpec = new JSONObject(workspaceSpecString);
            V1ResourceRequirements resources = deployment.getSpec().getTemplate().getSpec().getContainers().get(0).getResources();
            if (resources == null) return;
            Quantity memoryLimit = Quantity.fromString(workspaceSpec.optString("memoryLimit", "2Gi"));
            Map<String, Quantity> limits = resources.getLimits();
            if (limits != null) limits.put("memory", memoryLimit);
            Map<String, Quantity> requests = resources.getRequests();
            if (requests != null) requests.put("memory", memoryLimit);
        } catch (Exception ex) {
            LOG.error("Failed to load memory limit from workspace " + workspaceHash, ex);
        }
    }

    private class Assignments {
        private final String originalDeploymentName;
        private final Map<String, String> userId2deployment = new HashMap<>();
        private final List<String> unassignedDeployments = new LinkedList<>();

        public Assignments(String originalDeploymentName) {
            this.originalDeploymentName = originalDeploymentName;
        }

        public synchronized String getOrCreate(String userId) {
            String personalDeployment = userId2deployment.get(userId);
            if (personalDeployment == null) {
                if (unassignedDeployments.isEmpty()) {
                    personalDeployment = generatePersonalDeploymentName(originalDeploymentName);
                } else {
                    personalDeployment = unassignedDeployments.remove(0);
                    unassignedDeployments.add(generatePersonalDeploymentName(originalDeploymentName));
                }
                userId2deployment.put(userId, personalDeployment);
                dirty.set(true);
            }
            DeploymentTimeouts.INSTANCE.update(personalDeployment);
            return personalDeployment;
        }

        public synchronized void setNumberOfUnassigned(int targetNumber) {
            while (unassignedDeployments.size() > targetNumber) {
                unassignedDeployments.remove(unassignedDeployments.size() - 1);
                dirty.set(true);
            }
            while (unassignedDeployments.size() < targetNumber) {
                unassignedDeployments.add(generatePersonalDeploymentName(originalDeploymentName));
                dirty.set(true);
            }
        }

        public void setNumberOfUnassigned(V1Deployment deployment) {
            int maxUnassignedInstances = 1;
            try {
                V1ObjectMeta metadata = deployment.getMetadata();
                if (metadata != null) {
                    Map<String, String> annotations = metadata.getAnnotations();
                    if (annotations != null) {
                        String maxUnassignedInstancesStr = annotations.get(MAX_UNASSIGNED_INSTANCES_ANNOTATION_KEY);
                        if (maxUnassignedInstancesStr != null) {
                            maxUnassignedInstances = Integer.parseInt(maxUnassignedInstancesStr);
                        }
                    }
                }
            } catch (NumberFormatException e) {}
            setNumberOfUnassigned(Math.max(0, maxUnassignedInstances));
        }

        public synchronized List<String> getAllDeploymentNames() {
            return Stream.concat(
                    userId2deployment.values().stream(),
                    unassignedDeployments.stream()
            ).collect(Collectors.toList());
        }

        public synchronized void removeTimedOut() {
            ArrayList<Map.Entry<String, String>> entries = new ArrayList<>(userId2deployment.entrySet());
            for (Map.Entry<String, String> entry : entries) {
                if (DeploymentTimeouts.INSTANCE.isTimedOut(entry.getValue())) {
                    userId2deployment.remove(entry.getKey(), entry.getValue());
                    dirty.set(true);
                }
            }
        }
    }
}
