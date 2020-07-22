package org.modelix.uiproxy;

import io.kubernetes.client.custom.Quantity;
import io.kubernetes.client.openapi.ApiException;
import io.kubernetes.client.openapi.Configuration;
import io.kubernetes.client.openapi.apis.AppsV1Api;
import io.kubernetes.client.openapi.apis.CoreV1Api;
import io.kubernetes.client.openapi.models.V1Deployment;
import io.kubernetes.client.openapi.models.V1DeploymentBuilder;
import io.kubernetes.client.openapi.models.V1DeploymentList;
import io.kubernetes.client.openapi.models.V1Pod;
import io.kubernetes.client.openapi.models.V1PodList;
import io.kubernetes.client.openapi.models.V1Service;
import io.kubernetes.client.openapi.models.V1ServiceBuilder;
import io.kubernetes.client.openapi.models.V1ServiceList;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Yaml;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.api.errors.GitAPIException;
import org.eclipse.jgit.lib.Ref;
import org.kohsuke.github.GHIssueState;
import org.kohsuke.github.GHPullRequest;
import org.kohsuke.github.GHRepository;
import org.kohsuke.github.GitHub;
import org.kohsuke.github.GitHubBuilder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

public class DeploymentManagingHandler extends AbstractHandler {
    private static final Logger LOG = Logger.getLogger(DeploymentManagingHandler.class);
    public static final String KUBERNETES_NAMESPACE = "default";

    private Map<String, Long> deploymentTimeouts = Collections.synchronizedMap(new HashedMap<>());
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
    public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            RedirectedURL redirectedURL = RedirectedURL.redirect(request);
            if (redirectedURL == null) return;

            if (redirectedURL.getRemainingPath() == null) {
                if (request.getRequestURI().endsWith("/")) {
                   response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                } else {
                    response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
                    response.addHeader("Location", request.getRequestURI() + "/");
                }
                baseRequest.setHandled(true);
                return;
            }

            if (redirectedURL.getCommitId() == null) {
                Collection<Ref> refs = null;
                try {
                    refs = Git.lsRemoteRepository()
                            .setRemote(redirectedURL.getRepositoryUrl())
                            .setTags(true)
                            .setHeads(true)
                            .call();
                } catch (GitAPIException e) {
                    throw new RuntimeException(e);
                }

                response.getWriter()
                        .append("<html>")
                        .append("<head>")
                        .append("</head>")
                        .append("<body>")
                        .append("<h1>Tags and Branches</h1>");

                for (Ref ref : refs) {
                    response.getWriter()
                            .append("<div><a href=\"commit/")
                            .append(ref.getObjectId().getName())
                            .append("/\">")
                            .append(ref.getName())
                            .append("</a></div>");
                }

                response.getWriter().append("<h1>Pull Requests</h1>");
                try {
                    GitHub github = new GitHubBuilder().build();
                    GHRepository ghRepo = github.getRepository(redirectedURL.getGithubRepositoryName());
                    List<GHPullRequest> pullRequests = ghRepo.getPullRequests(GHIssueState.ALL);
                    for (GHPullRequest pullRequest : pullRequests) {
                        boolean sameRepo = pullRequest.getHead().getRepository().getFullName().equals(
                                pullRequest.getBase().getRepository().getFullName());
                        response.getWriter()
                                .append("<div>");
                        if (sameRepo) response.getWriter()
                                .append("<a href=\"")
                                .append("commit/")
                                .append(pullRequest.getHead().getSha())
                                .append("/diff/")
                                .append(pullRequest.getBase().getSha())
                                .append("/")
                                .append(pullRequest.getHead().getSha())
                                .append("/")
                                .append("\">");
                        response.getWriter()
                                .append("#")
                                .append(Integer.toString(pullRequest.getNumber()))
                                .append(" - ")
                                .append(StringEscapeUtils.escapeHtml(pullRequest.getTitle()));
                        if (sameRepo) response.getWriter()
                                .append("</a>");
                        response.getWriter()
                                .append("</div>");
                    }
                } catch (Exception ex) {
                    response.getWriter().append("<div>").append(ex.getMessage()).append("</div");
                }

                response.getWriter()
                        .append("</body>")
                        .append("</html>");
                baseRequest.setHandled(true);
                response.setContentType("text/html");
                response.setStatus(HttpServletResponse.SC_OK);
                return;
            }

            deploymentTimeouts.put(redirectedURL.getDeploymentName(), System.currentTimeMillis() + 600_000);
            boolean deploymentCreated = createDeployment(redirectedURL, () -> {
                Collection<Ref> refs = null;
                try {
                    refs = Git.lsRemoteRepository()
                            .setRemote(redirectedURL.getRepositoryUrl())
                            .setTags(false)
                            .setHeads(true)
                            .call();
                } catch (GitAPIException e) {
                    LOG.error("", e);
                    return false;
                }
                for (Ref ref : refs) {
                    System.out.println("Ref: " + ref.getName() + " -> " + ref.getObjectId().getName());
                    if ("refs/heads/master".equals(ref.getName())) {
                        System.out.println("commit ID: " + ref.getObjectId().getName());
                        return true;
                    }
                }
                return false;
            });
            if (!deploymentCreated) throw new RuntimeException("Not git repository found at " + redirectedURL.getRepositoryUrl());

            V1Deployment deployment = getDeployment(redirectedURL.getDeploymentName());
            if (deployment == null) throw new RuntimeException("Failed to create deployment");

            Integer readyReplicas = deployment.getStatus() != null ? deployment.getStatus().getReadyReplicas() : null;
            if (readyReplicas == null || readyReplicas == 0) {
                baseRequest.setHandled(true);
                response.setContentType("text/html");
                response.setStatus(HttpServletResponse.SC_OK);
                String podLogs = getPodLogs(redirectedURL.getDeploymentName());

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
        // TODO doesn't work with multiple instances of UI proxy
        synchronized (cleanupLock) {
            try {
                AppsV1Api appsApi = new AppsV1Api();
                CoreV1Api coreApi = new CoreV1Api();
                V1DeploymentList deployments = null;
                deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, null, null);
                for (V1Deployment deployment : deployments.getItems()) {
                    String name = deployment.getMetadata().getName();
                    if (!name.startsWith(RedirectedURL.DEPLOYMENT_PREFIX)) continue;
                    Long timeout = deploymentTimeouts.get(name);
                    if (timeout != null && timeout > System.currentTimeMillis()) continue;
                    deploymentTimeouts.remove(name);
                    appsApi.deleteNamespacedDeployment(name, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                    coreApi.deleteNamespacedService(name, KUBERNETES_NAMESPACE, null, null, null, null, null, null);
                }
            } catch (ApiException e) {
                LOG.error("Deployment cleanup failed", e);
            }
        }
    }

    private boolean isDeploymentReady(String name) throws ApiException {
        V1Deployment deployment = getDeployment(name);
        if (deployment == null) return false;
        return deployment.getStatus().getReadyReplicas() > 0;
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

    private boolean createDeployment(RedirectedURL gitRepoUrl, Supplier<Boolean> urlValidator) throws IOException, ApiException {
        String name = gitRepoUrl.getDeploymentName();

        AppsV1Api appsApi = new AppsV1Api();

        V1DeploymentList deployments = appsApi.listNamespacedDeployment(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false);
        boolean deploymentExists = deployments.getItems().stream().anyMatch(d -> name.equals(d.getMetadata().getName()));
        if (!deploymentExists) {
            long numExisting = deployments.getItems().stream().filter(d -> d.getMetadata().getName().startsWith(RedirectedURL.DEPLOYMENT_PREFIX)).count();
            if (numExisting > 10) throw new RuntimeException("Too many existing deployments");

            if (!urlValidator.get()) {
                return false;
            }

            V1Deployment deployment = new V1DeploymentBuilder()
                    .withNewMetadata()
                        .withName(name)
                        .addToLabels("app", name)
                    .endMetadata()
                    .withNewSpec()
                        .withNewSelector()
                        .addToMatchLabels("app", name)
                        .endSelector()
                        .withNewTemplate()
                            .withNewMetadata()
                                .addToLabels("app", name)
                            .endMetadata()
                            .withNewSpec()
                                .addNewContainer()
                                    .withName("ui")
                                    .withImage("modelix/modelix-ui:latest")
                                    .withImagePullPolicy("IfNotPresent")
                                    .addNewEnv()
                                        .withName("GIT_REPO_URI")
                                        .withValue(gitRepoUrl.getRepositoryUrl())
                                    .endEnv()
                                    .addNewEnv()
                                        .withName("GIT_COMMIT_ID")
                                        .withValue(gitRepoUrl.getCommitId())
                                    .endEnv()
                                    .addNewPort()
                                        .withContainerPort(33333)
                                    .endPort()
                                    .addNewVolumeMount()
                                        .withName("modelsecret")
                                        .withMountPath("/secrets/modelsecret")
                                        .withReadOnly(true)
                                    .endVolumeMount()
                                    .withNewResources()
                                        .addToRequests("memory", new Quantity("2.0Gi"))
                                        .addToRequests("cpu", new Quantity("0.8"))
                                        .addToLimits("memory", new Quantity("2.5Gi"))
                                        .addToLimits("cpu", new Quantity("1.5"))
                                    .endResources()
                                    .withNewReadinessProbe()
                                        .withNewHttpGet()
                                            .withNewPath("/health/check")
                                            .withNewPort(33333)
                                        .endHttpGet()
                                        .withInitialDelaySeconds(10)
                                        .withPeriodSeconds(5)
                                        .withTimeoutSeconds(3)
                                    .endReadinessProbe()
                                    .withNewLivenessProbe()
                                        .withNewHttpGet()
                                            .withNewPath("/health/check")
                                            .withNewPort(33333)
                                        .endHttpGet()
                                        .withInitialDelaySeconds(120)
                                        .withPeriodSeconds(20)
                                        .withTimeoutSeconds(10)
                                    .endLivenessProbe()
                                .endContainer()
                                .withNewRestartPolicy("Always")
                                .addNewVolume()
                                    .withName("modelsecret")
                                    .withNewSecret()
                                        .withNewSecretName("modelsecret")
                                    .endSecret()
                                .endVolume()
                            .endSpec()
                        .endTemplate()
                    .endSpec()
                    .build();
            System.out.println("Creating deployment: ");
            System.out.println(Yaml.dump(deployment));
            appsApi.createNamespacedDeployment(KUBERNETES_NAMESPACE, deployment, null, null, null);
        }

        CoreV1Api coreApi = new CoreV1Api();
        V1ServiceList services = coreApi.listNamespacedService(KUBERNETES_NAMESPACE, null, null, null, null, null, null, null, 5, false);
        boolean serviceExists = services.getItems().stream().anyMatch(s -> name.equals(s.getMetadata().getName()));
        if (!serviceExists) {
            V1Service service = new V1ServiceBuilder()
                    .withNewMetadata()
                    .addToLabels("app", name)
                    .withName(name)
                    .endMetadata()
                    .withNewSpec()
                    .withNewType("NodePort")
                    .addNewPort()
                    .withName("33333")
                    .withPort(33333)
                    .withNewTargetPort(33333)
                    .endPort()
                    .addToSelector("app", name)
                    .endSpec()
                    .build();
            System.out.println("Creating service: ");
            System.out.println(Yaml.dump(service));

            coreApi.createNamespacedService(KUBERNETES_NAMESPACE, service, null, null, null);
        }

        return true;
    }
}
