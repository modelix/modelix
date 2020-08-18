/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
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

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.servlets.EventSource;
import org.eclipse.jetty.servlets.EventSourceServlet;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;

public class RestModelServer {
    private static final Logger LOG = LogManager.getLogger(RestModelServer.class);
    public static final Pattern HASH_PATTERN = Pattern.compile("[a-zA-Z0-9\\-_]{43}");
    public static final String PROTECTED_PREFIX = "$$$";
    private static final String REPOSITORY_ID_KEY = "repositoryId";
    private static final String TEXT_PLAIN = "text/plain";
    private String sharedSecret;

    private IStoreClient storeClient;

    public RestModelServer(IStoreClient storeClient) {
        this.storeClient = storeClient;
    }

    public void setSharedSecret(String sharedSecret) {
        this.sharedSecret = sharedSecret;
    }

    public void init(ServletContextHandler servletHandler) {
        if (storeClient.get(REPOSITORY_ID_KEY) == null) {
            storeClient.put(REPOSITORY_ID_KEY, randomUUID());
        }

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            private String HEALTH_KEY = PROTECTED_PREFIX + "health2";

                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (isHealthy()) {
                                    resp.setStatus(HttpServletResponse.SC_OK);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print("healthy");
                                } else {
                                    resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print("not healthy");
                                }
                            }

                            private boolean isHealthy() {
                                long value = toLong(storeClient.get(HEALTH_KEY)) + 1;
                                storeClient.put(HEALTH_KEY, Long.toString(value));
                                boolean healthy = toLong(storeClient.get(HEALTH_KEY)) >= value;
                                return healthy;
                            }

                            private long toLong(String value) {
                                return value == null || value.isEmpty() ? 0 : Long.parseLong(value);
                            }
                        }),
                "/health");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String key = req.getPathInfo().substring(1);
                                if (key.startsWith(PROTECTED_PREFIX)) {
                                    resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                    return;
                                }
                                String value = storeClient.get(key);
                                if (value == null) {
                                    resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                                } else {
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print(value);
                                }
                            }
                        }),
                "/get/*");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                String email = req.getHeader("X-Forwarded-Email");
                                if ((email == null || email.isEmpty()) && isTrustedAddress(req)) {
                                    email = "localhost";
                                }
                                if (email == null || email.isEmpty()) {
                                    resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print("Not logged in.");
                                    return;
                                }

                                String token = randomUUID();
                                storeClient.put(PROTECTED_PREFIX + "_token_email_" + token, email);
                                storeClient.put(
                                        PROTECTED_PREFIX + "_token_expires_" + token,
                                        Long.toString(
                                                System.currentTimeMillis()
                                                        + 7 * 24 * 60 * 60 * 1000));
                                resp.setContentType(TEXT_PLAIN);
                                resp.getWriter().print(token);
                            }
                        }),
                "/generateToken");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) {
                                    return;
                                }

                                String token = extractToken(req);
                                if (token == null) {
                                    resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
                                    return;
                                }
                                String email =
                                        storeClient.get(PROTECTED_PREFIX + "_token_email_" + token);
                                resp.setContentType(TEXT_PLAIN);
                                resp.getWriter().print(email);
                            }
                        }),
                "/getEmail");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doPost(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String key = req.getPathInfo().substring(1);
                                if (key.startsWith(PROTECTED_PREFIX)) {
                                    throw new RuntimeException("No permission to access " + key);
                                }
                                long value = storeClient.generateId(key);
                                resp.setContentType(TEXT_PLAIN);
                                resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                resp.getWriter().print(Long.toString(value));
                            }
                        }),
                "/counter/*");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String key = req.getPathInfo().substring(1);
                                resp.setContentType("application/json");
                                resp.getWriter().print(collect(key).toString(2));
                            }
                        }),
                "/getRecursively/*");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doPut(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                try {
                                    if (!checkAuthorization(storeClient, req, resp)) return;

                                    String key = req.getPathInfo().substring(1);
                                    if (REPOSITORY_ID_KEY.equals(key)) {
                                        throw new RuntimeException(
                                                "Changing '" + key + "' is not allowed");
                                    }
                                    if (key.startsWith(PROTECTED_PREFIX)) {
                                        throw new RuntimeException(
                                                "No permission to access " + key);
                                    }
                                    String value =
                                            IOUtils.toString(
                                                    req.getInputStream(), StandardCharsets.UTF_8);
                                    try {
                                        storeClient.put(key, value);
                                    } catch (Throwable t) {
                                        System.err.println("failed to write value");
                                        t.printStackTrace();
                                        resp.setStatus(
                                                HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                                        resp.setContentType(TEXT_PLAIN);
                                        resp.setCharacterEncoding(
                                                StandardCharsets.UTF_8.toString());
                                        resp.getWriter()
                                                .print(
                                                        "Put failed on server side: "
                                                                + t.getMessage());
                                        return;
                                    }
                                    resp.setStatus(HttpServletResponse.SC_OK);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                    resp.getWriter().print("OK");
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                                    resp.getWriter().print(e.getMessage());
                                }
                            }
                        }),
                "/put/*");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doPut(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String jsonStr =
                                        IOUtils.toString(
                                                req.getInputStream(), StandardCharsets.UTF_8);
                                JSONArray json = new JSONArray(jsonStr);
                                int writtenEntries = 0;
                                for (Object entry_ : json) {
                                    JSONObject entry = (JSONObject) entry_;
                                    if (!entry.has("key") || !entry.has("value")) {
                                        // We skip invalid entries instead of failing because we do
                                        // not
                                        // want to fail after having written some entries
                                        LOG.warn("Skipping invalid entry: " + entry);
                                        continue;
                                    }
                                    String key = entry.getString("key");
                                    String value = entry.getString("value");

                                    if (REPOSITORY_ID_KEY.equals(key)) {
                                        LOG.warn("Changing '" + key + "' is not allowed");
                                        continue;
                                    }
                                    if (key.startsWith(PROTECTED_PREFIX)) {
                                        LOG.warn("No permission to access " + key);
                                        continue;
                                    }
                                    storeClient.put(key, value);
                                    writtenEntries++;
                                }
                                resp.setStatus(HttpServletResponse.SC_OK);
                                resp.setContentType(TEXT_PLAIN);
                                resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                resp.getWriter().print(writtenEntries + " entries written");
                            }
                        }),
                "/putAll");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doPut(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String reqJsonStr =
                                        IOUtils.toString(
                                                req.getInputStream(), StandardCharsets.UTF_8);
                                JSONArray reqJson = new JSONArray(reqJsonStr);
                                JSONArray respJson = new JSONArray();
                                List<String> keys = new ArrayList<>(reqJson.length());
                                for (Object entry_ : reqJson) {
                                    String key = (String) entry_;

                                    if (key.startsWith(PROTECTED_PREFIX)) {
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
                        }),
                "/getAll");

        servletHandler.addServlet(
                new ServletHolder(
                        new HttpServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                resp.setContentType(TEXT_PLAIN);
                                resp.getWriter().println("Model Server");
                            }
                        }),
                "/");

        servletHandler.addServlet(
                new ServletHolder(
                        new EventSourceServlet() {
                            @Override
                            protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
                                if (!checkAuthorization(storeClient, req, resp)) return;
                                final String subscribedKey = req.getPathInfo().substring(1);
                                if (subscribedKey.startsWith(PROTECTED_PREFIX)) {
                                    resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter()
                                            .print("No permission to access " + subscribedKey);
                                }
                                super.doGet(req, resp);
                            }

                            @Override
                            protected EventSource newEventSource(HttpServletRequest req) {
                                final String subscribedKey = req.getPathInfo().substring(1);
                                return new EventSource() {
                                    private Emitter emitter;
                                    private IKeyListener listener =
                                            new IKeyListener() {
                                                @Override
                                                public void changed(
                                                        String changedKey, String value) {
                                                    if (emitter == null) return;
                                                    if (subscribedKey.equals(changedKey)) {
                                                        try {
                                                            emitter.data(value);
                                                        } catch (EofException e) {
                                                            System.err.println(
                                                                    "The peer has probably closed the connection, therefore we are unable to notify them of changes. We will not retry");
                                                            emitter = null;
                                                        } catch (IOException e) {
                                                            System.err.println(
                                                                    "Exception: " + e.getMessage());
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
                        }),
                "/subscribe/*");
    }

    public JSONArray collect(String rootKey) {
        JSONArray result = new JSONArray();
        Set<String> processed = new HashSet<>();
        Set<String> pending = new HashSet<>();
        pending.add(rootKey);

        while (!pending.isEmpty()) {
            List<String> keys = new ArrayList<>(pending);
            pending.clear();
            List<String> values = storeClient.getAll(keys);
            for (int i = 0; i < keys.size(); i++) {
                String key = keys.get(i);
                String value = values.get(i);
                processed.add(key);

                JSONObject entry = new JSONObject();
                entry.put("key", key);
                entry.put("value", value);
                result.put(entry);

                if (value != null) {
                    Matcher matcher = HASH_PATTERN.matcher(value);
                    while (matcher.find()) {
                        String foundKey = matcher.group();
                        if (!processed.contains(foundKey)) {
                            pending.add(foundKey);
                        }
                    }
                }
            }
        }

        return result;
    }

    private boolean checkAuthorization(
            IStoreClient store, HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        if (isValidAuthorization(store, req)) {
            return true;
        } else {
            resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
            resp.setContentType(TEXT_PLAIN);
            resp.getWriter().print("Not logged in.");
            return false;
        }
    }

    private boolean isValidAuthorization(IStoreClient store, HttpServletRequest req) {
        if (isTrustedAddress(req)) return true;

        String header = req.getHeader("Authorization");
        if (header == null) {
            return false;
        }
        if (!header.startsWith("Bearer ")) {
            return false;
        }
        String token = extractToken(req);
        if (token == null) {
            return false;
        }

        // Used by MPS instances running in the same kubernetes cluster
        if (sharedSecret != null && sharedSecret.length() > 0 && token.equals(sharedSecret)) {
            return true;
        }

        String expiresStr = store.get(PROTECTED_PREFIX + "_token_expires_" + token);
        if (expiresStr == null) {
            return false;
        }
        if (System.currentTimeMillis() > Long.parseLong(expiresStr)) {
            return false;
        }
        return true;
    }

    private static boolean isTrustedAddress(ServletRequest req) {
        try {
            InetAddress addr = InetAddress.getByName(req.getRemoteAddr());
            return addr.isLoopbackAddress() || addr.isLinkLocalAddress() || addr.isSiteLocalAddress();
        } catch (UnknownHostException e) {
            LOG.error("", e);
            return false;
        }
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
}
