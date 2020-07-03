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
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
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
    private static final String DEPLOYMENT_PREFIX = "ui-git-";

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


        WebSocketServlet webSocketServlet = new WebSocketProxyServlet() {
            @Override
            protected URI redirect(ServletUpgradeRequest request) {
                String path = request.getRequestURI().getPath();
                String[] repoUrlAndRemainingPath = repoUrlFromRequest(path);
                String repoUrl = repoUrlAndRemainingPath[0];
                String remainingPath = repoUrlAndRemainingPath[1];
                String deploymentName = repoUrlTodeploymentName(repoUrl);
                try {
                    return new URI(targetUrl(deploymentName, remainingPath, true));
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
                System.out.println("requestURI: " + clientRequest.getRequestURI());
                String[] repoUrlAndRemainingPath = repoUrlFromRequest(clientRequest.getRequestURI());
                if (repoUrlAndRemainingPath == null) return null;
                String repoUrl = repoUrlAndRemainingPath[0];
                String remainingPath = repoUrlAndRemainingPath[1];
                String deploymentName;
                System.out.println("repo URL: " + repoUrl);
                try {
                    deploymentName = createDeployment(repoUrl, () -> {
                        Collection<Ref> refs = null;
                        try {
                            refs = Git.lsRemoteRepository()
                                    .setRemote(repoUrl)
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
                    if (deploymentName == null) return null;

                    String newTarget = targetUrl(deploymentName, remainingPath, false);
                    if (clientRequest.getQueryString() != null && clientRequest.getQueryString().length() != 0) {
                        newTarget += "?" + clientRequest.getQueryString();
                    }
                    System.out.println("Redirecting to " + newTarget);
                    return newTarget;
                } catch (Exception ex) {
                    throw new RuntimeException(ex);
                }

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

    private static String repoUrlTodeploymentName(String repoUrl) {
        return DEPLOYMENT_PREFIX + DigestUtils.sha1Hex(repoUrl);
    }

    private static String targetUrl(String deploymentName, String remainingPath, boolean websocket) {
        return (websocket ? "ws" : "http")  + "://" + deploymentName + ":33333" + remainingPath;
    }

    private static String createDeployment(String gitRepoUrl, Supplier<Boolean> urlValidator) throws IOException, ApiException {
        Configuration.setDefaultApiClient(ClientBuilder.cluster().build());

        String name = repoUrlTodeploymentName(gitRepoUrl);

        AppsV1Api appsApi = new AppsV1Api();

        V1DeploymentList deployments = appsApi.listNamespacedDeployment("default", null, null, null, null, null, null, null, 5, false);
        boolean deploymentExists = deployments.getItems().stream().anyMatch(d -> name.equals(d.getMetadata().getName()));
        if (!deploymentExists) {
            long numExisting = deployments.getItems().stream().filter(d -> d.getMetadata().getName().startsWith(DEPLOYMENT_PREFIX)).count();
            if (numExisting > 10) throw new RuntimeException("Too many existing deployments");

            if (!urlValidator.get()) {
                return null;
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
                                        .withValue(gitRepoUrl)
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

        return name;
    }

    private static String[] repoUrlFromRequest(String path) {
        String[] parts = path.split("/", -1);
        if (parts.length < 4) return null;
        if (parts[0].length() != 0) return null;
        if (!"github".equals(parts[1])) return null;
        String remainingPath = Arrays.asList(parts).subList(4, parts.length).stream().reduce("/", (a, b) -> a + "/" + b);
        if (!remainingPath.startsWith("/")) remainingPath = "/" + remainingPath;
        if (remainingPath.startsWith("//")) remainingPath = remainingPath.substring(1);
        return new String[]{
                "https://github.com/" + parts[2] + "/" + parts[3] + ".git",
                remainingPath
        };
    }
}
