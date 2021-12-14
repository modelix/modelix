package org.modelix.uiproxy;

import io.kubernetes.client.openapi.ApiException;
import org.eclipse.jetty.proxy.ProxyServlet;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.DefaultHandler;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.websocket.servlet.ServletUpgradeRequest;
import org.eclipse.jetty.websocket.servlet.WebSocketServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.Manifest;

public class Main {
    private static final Logger LOG = LoggerFactory.getLogger(Main.class);

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
