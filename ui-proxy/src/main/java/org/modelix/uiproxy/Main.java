package org.modelix.uiproxy;

import io.kubernetes.client.custom.Quantity;
import io.kubernetes.client.openapi.ApiException;
import io.kubernetes.client.openapi.Configuration;
import io.kubernetes.client.openapi.apis.AppsV1Api;
import io.kubernetes.client.openapi.apis.CoreV1Api;
import io.kubernetes.client.openapi.models.*;
import io.kubernetes.client.util.ClientBuilder;
import io.kubernetes.client.util.Yaml;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.proxy.ProxyServlet;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jgit.api.Git;
import org.eclipse.jgit.api.errors.GitAPIException;
import org.eclipse.jgit.lib.Ref;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Random;
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
            LOG.error(ex);
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
                            LOG.error(e);
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

                    String newTarget = "http://" + deploymentName + ":33333" + remainingPath;
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
        ServletContextHandler servletHandler = new ServletContextHandler();
        servletHandler.addServlet(new ServletHolder(proxyServlet), "/*");
        server.setHandler(servletHandler);
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

    private static String createDeployment(String gitRepoUrl, Supplier<Boolean> urlValidator) throws IOException, ApiException {
        Configuration.setDefaultApiClient(ClientBuilder.cluster().build());

        String namePrefix = "ui-git-";
        String name = namePrefix + DigestUtils.sha1Hex(gitRepoUrl);

        AppsV1Api appsApi = new AppsV1Api();

        V1DeploymentList deployments = appsApi.listNamespacedDeployment("default", null, null, null, null, null, null, null, 5, false);
        boolean deploymentExists = deployments.getItems().stream().anyMatch(d -> name.equals(d.getMetadata().getName()));
        if (!deploymentExists) {
            long numExisting = deployments.getItems().stream().filter(d -> d.getMetadata().getName().startsWith(namePrefix)).count();
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
