package org.modelix.uiproxy;

import io.kubernetes.client.custom.Quantity;
import io.kubernetes.client.openapi.ApiException;
import io.kubernetes.client.openapi.Configuration;
import io.kubernetes.client.openapi.apis.AppsV1Api;
import io.kubernetes.client.openapi.apis.CoreV1Api;
import io.kubernetes.client.openapi.models.V1Deployment;
import io.kubernetes.client.openapi.models.V1DeploymentBuilder;
import io.kubernetes.client.openapi.models.V1DeploymentList;
import io.kubernetes.client.openapi.models.V1Service;
import io.kubernetes.client.openapi.models.V1ServiceBuilder;
import io.kubernetes.client.openapi.models.V1ServiceList;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Yaml;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.proxy.ProxyServlet;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.eclipse.jetty.server.handler.DefaultHandler;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.WebSocketServlet;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.api.errors.GitAPIException;
import org.eclipse.jgit.lib.Ref;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Collection;
import java.util.function.Supplier;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);


    public static void main(String[] args) {
        try {
            startServer();
        } catch (ApiException ex) {
            System.out.println("code: " + ex.getCode());
            System.out.println("body: " + ex.getResponseBody());
        } catch (Exception ex) {
            LOG.error("", ex);
            ex.printStackTrace();
            Throwable cause = ex.getCause();
            if (cause != null) {
                System.out.println(cause.getMessage());
                cause.printStackTrace();
            }
        }
    }

    private static void startServer() throws Exception {
        Server server = new Server(33332);
        HandlerList handlerList = new HandlerList();
        server.setHandler(handlerList);

        Handler deploymentManagingHandler = new AbstractHandler() {
            @Override
            public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
                try {
                    System.out.println("requestURI: " + request.getRequestURI());
                    RedirectedURL redirectedURL = RedirectedURL.redirect(request);
                    if (redirectedURL == null) throw new RuntimeException("Invalid request: " + request.getRequestURI());
                    System.out.println("repo URL: " + redirectedURL.getRepositoryUrl());
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
                        response.getWriter()
                                .append("<html>")
                                .append("<head>")
                                .append("<meta http-equiv=\"refresh\" content=\"5\">")
                                .append("</head>")
                                .append("<body>")
                                .append("Starting MPS and loading " + redirectedURL.getRepositoryUrl() + " ...")
                                .append("</body>")
                                .append("</html>");
                    }
                } catch (Exception ex) {
                    throw new RuntimeException(ex);
                }
            }
        };
        handlerList.addHandler(deploymentManagingHandler);

        WebSocketServlet webSocketServlet = new WebSocketProxyServlet() {
            @Override
            protected URI redirect(ServletUpgradeRequest request) {
                String path = request.getRequestURI().getPath();
                RedirectedURL redirectedURL = RedirectedURL.redirect(request.getHttpServletRequest());
                try {
                    return new URI(redirectedURL.getRedirectedUrl(true));
                } catch (URISyntaxException e) {
                    throw new RuntimeException(e);
                }
            }
        };
        HandlerWrapper webSocketHandlerCondition = new HandlerWrapper() {
            @Override
            public void handle(String target, Request baseRequest, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
                if (!baseRequest.getRequestURI().contains("/ws/")) return;
                super.handle(target, baseRequest, request, response);
            }
        };
        ServletContextHandler webSocketHandler = new ServletContextHandler();
        webSocketHandler.addServlet(new ServletHolder(webSocketServlet), "/*");
        webSocketHandlerCondition.setHandler(webSocketHandler);
        handlerList.addHandler(webSocketHandlerCondition);


        ProxyServlet proxyServlet = new ProxyServlet() {
            @Override
            protected String rewriteTarget(HttpServletRequest clientRequest) {
                RedirectedURL redirectedURL = RedirectedURL.redirect(clientRequest);
                return redirectedURL.getRedirectedUrl(false);
            }
        };

        ServletContextHandler proxyHandler = new ServletContextHandler();
        proxyHandler.addServlet(new ServletHolder(proxyServlet), "/*");
        handlerList.addHandler(proxyHandler);

        handlerList.addHandler(new DefaultHandler());
        server.start();

        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                try {
                    server.stop();
                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                    ex.printStackTrace();
                }
            }
        });
    }

    private static boolean isDeploymentReady(String name) throws ApiException {
        V1Deployment deployment = getDeployment(name);
        if (deployment == null) return false;
        return deployment.getStatus().getReadyReplicas() > 0;
    }

    private static V1Deployment getDeployment(String name) throws ApiException {
        AppsV1Api appsApi = new AppsV1Api();
        V1DeploymentList deployments = appsApi.listNamespacedDeployment("default", null, null, null, null, null, null, null, null, null);
        for (V1Deployment deployment : deployments.getItems()) {
            if (name.equals(deployment.getMetadata().getName())) return deployment;
        }
        return null;
    }

    private static boolean createDeployment(RedirectedURL gitRepoUrl, Supplier<Boolean> urlValidator) throws IOException, ApiException {
        Configuration.setDefaultApiClient(ClientBuilder.cluster().build());

        String name = gitRepoUrl.getDeploymentName();

        AppsV1Api appsApi = new AppsV1Api();

        V1DeploymentList deployments = appsApi.listNamespacedDeployment("default", null, null, null, null, null, null, null, 5, false);
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
            appsApi.createNamespacedDeployment("default", deployment, null, null, null);
        }

        CoreV1Api coreApi = new CoreV1Api();
        V1ServiceList services = coreApi.listNamespacedService("default", null, null, null, null, null, null, null, 5, false);
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

            coreApi.createNamespacedService("default", service, null, null, null);
        }

        return true;
    }
}
