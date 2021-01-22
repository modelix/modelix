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
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.function.Supplier;
import java.util.jar.Manifest;

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);

    public static void main(String[] args) {
        try {
            startServer();
        } catch (ApiException ex) {
            LOG.error("", ex);
            LOG.error("code: " + ex.getCode());
            LOG.error("body: " + ex.getResponseBody());
        } catch (Exception ex) {
            LOG.error("", ex);
        }
    }

    private static void startServer() throws Exception {
        Server server = new Server(33332);
        HandlerList handlerList = new HandlerList();
        server.setHandler(handlerList);

        Manifest manifest = readManifest();
        String modelixVersion = manifest.getMainAttributes().getValue("modelix-Version");

        DeploymentManagingHandler deploymentManagingHandler = new DeploymentManagingHandler();
        deploymentManagingHandler.setModelixVersion(modelixVersion);
        handlerList.addHandler(deploymentManagingHandler);

        WebSocketServlet webSocketServlet = new WebSocketProxyServlet() {
            @Override
            protected URI redirect(ServletUpgradeRequest request) {
                String path = request.getRequestURI().getPath();
                RedirectedURL redirectedURL = RedirectedURL.redirect(request.getHttpServletRequest());
                if (redirectedURL == null) return null;
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
                if (RedirectedURL.redirect(request) == null) return;
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
                if (redirectedURL == null) return null;
                return redirectedURL.getRedirectedUrl(false);
            }
        };
        proxyServlet.setTimeout(60_000);

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

    private static Manifest readManifest() {
        Enumeration<URL> resources = null;
        try {
            resources = Main.class.getClassLoader().getResources("META-INF/MANIFEST.MF");
            while (resources.hasMoreElements()) {
                try {
                    Manifest manifest = new Manifest(resources.nextElement().openStream());
                    if (manifest.getMainAttributes().getValue("modelix-Version") != null) {
                        return manifest;
                    }
                } catch (IOException ex) {
                    throw new RuntimeException("Failed to read MANIFEST.MF", ex);
                }
            }
        } catch (IOException ex) {
            throw new RuntimeException("Failed to read MANIFEST.MF", ex);
        }
        throw new RuntimeException("No MANIFEST.MF found containing 'modelix-Version'");
    }
}
