/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License. 
 */

package org.modelix.model.server;


import com.beust.jcommander.IStringConverter;
import com.beust.jcommander.JCommander;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.servlets.EventSource;
import org.eclipse.jetty.servlets.EventSourceServlet;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.beust.jcommander.Parameter;

class CmdLineArgs {

    @Parameter(names = "-secret", description = "Path to the secretfile", converter = FileConverter.class)
    File secretFile = new File("/secrets/modelsecret/modelsecret.txt");

    @Parameter(names = "-jdbcconf", description = "Path to the JDBC configuration file", converter = FileConverter.class)
    File jdbcConfFile = null;
}

public class Main {
    private static final Logger LOG = Logger.getLogger(Main.class);
    private static final String REPOSITORY_ID_KEY = "repositoryId";
    private static String sharedSecret;

    public static void main(String[] args) {
        CmdLineArgs cmdLineArgs = new CmdLineArgs();
        new JCommander(cmdLineArgs).parse(args);

        System.out.println("Max memory (bytes): " + Runtime.getRuntime().maxMemory());
        System.out.println("Server process started");
        System.out.println("Path to secret file: " + cmdLineArgs.secretFile);
        System.out.println("Path to JDBC configuration file: " + cmdLineArgs.jdbcConfFile);

        System.out.println("Waiting ");

        try {
            File sharedSecretFile = cmdLineArgs.secretFile;
            if (sharedSecretFile.exists()) {
                sharedSecret = FileUtils.readFileToString(sharedSecretFile, StandardCharsets.UTF_8);
            }

            String portStr = System.getenv("PORT");
            InetSocketAddress bindTo = new InetSocketAddress(InetAddress.getByName("0.0.0.0"),
                    portStr == null ? 28101 : Integer.parseInt(portStr));
            IgniteStoreClient storeClient = new IgniteStoreClient(cmdLineArgs.jdbcConfFile);
            ModelServer modelServer = new ModelServer(storeClient);
            final Server server = new Server(bindTo);

            if (storeClient.get(REPOSITORY_ID_KEY) == null) {
                storeClient.put(REPOSITORY_ID_KEY, randomUUID());
            }

            ServletContextHandler servletHandler = new ServletContextHandler();
            servletHandler.addServlet(new ServletHolder(new ModelServerServlet(modelServer)), "/ws");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                private String HEALTH_KEY = ModelServer.PROTECTED_PREFIX + "health2";
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (isHealthy()) {
                        resp.setStatus(HttpServletResponse.SC_OK);
                        resp.setContentType("text/plain");
                        resp.getWriter().print("healthy");
                    } else {
                        resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                        resp.setContentType("text/plain");
                        resp.getWriter().print("not healthy");
                    }
                }

                private boolean isHealthy() {
                    long value = toLong(storeClient.get(HEALTH_KEY)) + 1;
                    storeClient.put(HEALTH_KEY, Long.toString(value));
                    if (toLong(storeClient.get(HEALTH_KEY)) < value) return false;
                    return true;
                }

                private long toLong(String value) {
                    return value == null || value.isEmpty() ? 0 : Long.parseLong(value);
                }
            }), "/health");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String key = req.getPathInfo().substring(1);
                    if (key.startsWith(ModelServer.PROTECTED_PREFIX)) throw new RuntimeException("No permission to access " + key);
                    String value = storeClient.get(key);
                    if (value == null) {
                        resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                    } else {
                        resp.setContentType("text/plain");
                        resp.getWriter().print(value);
                    }
                }
            }), "/get/*");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    String email = req.getHeader("X-Forwarded-Email");
                    if ((email == null || email.isEmpty()) && isLocalhost(req)) {
                        email = "localhost";
                    }
                    if (email == null || email.isEmpty()) {
                        resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                        resp.setContentType("text/plain");
                        resp.getWriter().print("Not logged in.");
                        return;
                    }

                    String token = randomUUID();
                    storeClient.put(ModelServer.PROTECTED_PREFIX + "_token_email_" + token, email);
                    storeClient.put(ModelServer.PROTECTED_PREFIX + "_token_expires_" + token,
                            Long.toString(System.currentTimeMillis() + 7*24*60*60*1000));
                    resp.setContentType("text/plain");
                    resp.getWriter().print(token);
                }
            }), "/generateToken");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String token = extractToken(req);
                    String email = storeClient.get(ModelServer.PROTECTED_PREFIX + "_token_email_" + token);
                    resp.setContentType("text/plain");
                    resp.getWriter().print(email);
                }
            }), "/getEmail");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String key = req.getPathInfo().substring(1);
                    if (key.startsWith(ModelServer.PROTECTED_PREFIX)) throw new RuntimeException("No permission to access " + key);
                    long value = storeClient.generateId(key);
                    resp.setContentType("text/plain");
                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                    resp.getWriter().print(Long.toString(value));
                }
            }), "/counter/*");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String key = req.getPathInfo().substring(1);
                    resp.setContentType("application/json");
                    resp.getWriter().print(modelServer.collect(key).toString(2));
                }
            }), "/getRecursively/*");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String key = req.getPathInfo().substring(1);
                    if (REPOSITORY_ID_KEY.equals(key)) throw new RuntimeException("Changing '" + key + "' is not allowed");
                    if (key.startsWith(ModelServer.PROTECTED_PREFIX)) throw new RuntimeException("No permission to access " + key);
                    String value = IOUtils.toString(req.getInputStream(), StandardCharsets.UTF_8);
                    storeClient.put(key, value);
                    resp.setStatus(HttpServletResponse.SC_OK);
                    resp.setContentType("text/plain");
                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                    resp.getWriter().print("OK");
                }
            }), "/put/*");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String jsonStr = IOUtils.toString(req.getInputStream(), StandardCharsets.UTF_8);
                    JSONArray json = new JSONArray(jsonStr);
                    for (Object entry_ : json) {
                        JSONObject entry = (JSONObject) entry_;
                        String key = entry.getString("key");
                        String value = entry.getString("value");

                        if (REPOSITORY_ID_KEY.equals(key)) {
                            LOG.warn("Changing '" + key + "' is not allowed");
                            continue;
                        }
                        if (key.startsWith(ModelServer.PROTECTED_PREFIX)) {
                            LOG.warn("No permission to access " + key);
                            continue;
                        }
                        storeClient.put(key, value);
                    }
                    resp.setStatus(HttpServletResponse.SC_OK);
                    resp.setContentType("text/plain");
                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                    resp.getWriter().print(json.length() + " entries written");
                }
            }), "/putAll");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;

                    String reqJsonStr = IOUtils.toString(req.getInputStream(), StandardCharsets.UTF_8);
                    JSONArray reqJson = new JSONArray(reqJsonStr);
                    JSONArray respJson = new JSONArray();
                    List<String> keys = new ArrayList<String>(reqJson.length());
                    for (Object entry_ : reqJson) {
                        String key = (String) entry_;

                        if (key.startsWith(ModelServer.PROTECTED_PREFIX)) {
                            LOG.warn("No permission to access " + key);
                            continue;
                        }
                        keys.add(key);
                    }

                    List<String> values = storeClient.getAll(keys);
                    for (int i = 0; i < keys.size(); i++) {
                        JSONObject respEntry = new JSONObject();
                        respEntry.put("key", keys.get(i));
                        respEntry.put("value", values.get(i));
                        respJson.put(respEntry);
                    }

                    resp.setStatus(HttpServletResponse.SC_OK);
                    resp.setContentType("application/json");
                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                    resp.getWriter().print(respJson.toString());
                }
            }), "/getAll");

            servletHandler.addServlet(new ServletHolder(new HttpServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    resp.setContentType("text/plain");
                    resp.getWriter().println("Model Server");
                }
            }), "/");

            servletHandler.addServlet(new ServletHolder(new EventSourceServlet() {
                @Override
                protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                    if (!checkAuthorization(storeClient, req, resp)) return;
                    final String subscribedKey = req.getPathInfo().substring(1);
                    if (subscribedKey.startsWith(ModelServer.PROTECTED_PREFIX)) {
                        resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                        resp.setContentType("text/plain");
                        resp.getWriter().print("No permission to access " + subscribedKey);
                    }
                    super.doGet(req, resp);
                }

                @Override
                protected EventSource newEventSource(HttpServletRequest req) {
                    final String subscribedKey = req.getPathInfo().substring(1);
                    return new EventSource() {
                        private Emitter emitter;
                        private IKeyListener listener = new IKeyListener() {
                            @Override
                            public void changed(String changedKey, String value) {
                                if (emitter == null) return;
                                if (subscribedKey.equals(changedKey)) {
                                    try {
                                        emitter.data(value);
                                    } catch (IOException e) {
                                        System.out.println(e.getMessage());
                                        e.printStackTrace();
                                    }
                                }
                            }
                        };

                        @Override
                        public void onOpen(Emitter emitter) throws IOException {
                            this.emitter = emitter;
                            storeClient.listen(subscribedKey, listener);
                        }

                        @Override
                        public void onClose() {
                            storeClient.removeListener(subscribedKey, listener);
                            emitter = null;
                        }
                    };
                }
            }), "/subscribe/*");

            HandlerList handlerList = new HandlerList();
            handlerList.addHandler(servletHandler);

            server.setHandler(handlerList);
            server.start();
            System.out.println("Server started");

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
        } catch (Exception ex) {
            System.out.println("Server failed: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    private static boolean checkAuthorization(IStoreClient store, HttpServletRequest req, HttpServletResponse resp) throws IOException {
        if (isValidAuthorization(store, req)) {
            return true;
        } else {
            resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
            resp.setContentType("text/plain");
            resp.getWriter().print("Not logged in.");
            return false;
        }
    }

    private static boolean isValidAuthorization(IStoreClient store, HttpServletRequest req) {
        if (isLocalhost(req)) return true;

        String header = req.getHeader("Authorization");
        if (header == null) return false;
        if (!header.startsWith("Bearer ")) return false;
        String token = extractToken(req);
        if (token == null) return false;

        // Used by MPS instances running in the same kubernetes cluster
        if (sharedSecret != null && sharedSecret.length() > 0 && token.equals(sharedSecret)) return true;

        String expiresStr = store.get(ModelServer.PROTECTED_PREFIX + "_token_expires_" + token);
        if (expiresStr == null) return false;
        if (System.currentTimeMillis() > Long.parseLong(expiresStr)) return false;
        return true;
    }

    private static boolean isLocalhost(String ip) {
        return "0:0:0:0:0:0:0:1".equals(ip) || "127.0.0.1".equals(ip);
    }

    private static boolean isLocalhost(ServletRequest req) {
        return isLocalhost(req.getRemoteAddr());
    }

    private static String extractToken(HttpServletRequest req) {
        String header = req.getHeader("Authorization");
        if (header == null) return null;
        if (!header.startsWith("Bearer ")) return null;
        String token = header.substring("Bearer ".length());
        return token;
    }

    @NotNull
    private static String randomUUID() {
        return UUID.randomUUID().toString().replaceAll("[^a-zA-Z0-9]", "");
    }

    private static Handler withContext(String path, Handler handler) {
        ContextHandler contextHandler = new ContextHandler();
        contextHandler.setContextPath(path);
        contextHandler.setHandler(handler);
        return contextHandler;
    }
}
