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
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.function.Predicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
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
    public static final Pattern HASH_PATTERN =
            Pattern.compile("[a-zA-Z0-9\\-_]{5}\\*[a-zA-Z0-9\\-_]{38}");
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
                                resp.setStatus(HttpServletResponse.SC_OK);
                                resp.setContentType(TEXT_PLAIN);

                                for (String headerName : Collections.list(req.getHeaderNames())) {
                                    resp.getWriter().print(headerName);
                                    resp.getWriter().print(": ");
                                    resp.getWriter().println(req.getHeader(headerName));
                                }
                            }
                        }),
                "/headers");

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
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print("Protected key.");
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
                                // The email could be null because we can authorize also without a
                                // valid token
                                resp.getWriter().print(Objects.requireNonNullElse(email, "<no email>"));
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
                                    resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.getWriter().print("No permission to access protected keys.");
                                    return;
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
                                if (!checkAuthorization(storeClient, req, resp)) return;

                                String key = req.getPathInfo().substring(1);
                                String value =
                                        IOUtils.toString(
                                                req.getInputStream(), StandardCharsets.UTF_8);
                                try {
                                    putEntries(Collections.singletonMap(key, value));
                                    resp.setStatus(HttpServletResponse.SC_OK);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                    resp.getWriter().print("OK");
                                } catch (NotFoundException e) {
                                    resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                    resp.getWriter().print(e.getMessage());
                                } catch (UnauthorizedException e){
                                    resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                    resp.setContentType(TEXT_PLAIN);
                                    resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
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
                                try {
                                    if (!checkAuthorization(storeClient, req, resp)) return;

                                    String jsonStr =
                                            IOUtils.toString(
                                                    req.getInputStream(), StandardCharsets.UTF_8);
                                    JSONArray json = new JSONArray(jsonStr);
                                    Map<String, String> entries = new LinkedHashMap<>();
                                    for (Object entry_ : json) {
                                        JSONObject entry = (JSONObject) entry_;
                                        String key = entry.getString("key");
                                        String value = entry.optString("value", null);
                                        entries.put(key, value);
                                    }
                                    entries = sortByDependency(entries);
                                    try {
                                        putEntries(entries);
                                        resp.setStatus(HttpServletResponse.SC_OK);
                                        resp.setContentType(TEXT_PLAIN);
                                        resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                        resp.getWriter().print(entries.size() + " entries written");
                                    } catch (NotFoundException e) {
                                        resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
                                        resp.setContentType(TEXT_PLAIN);
                                        resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                        resp.getWriter().print(e.getMessage());
                                    } catch (UnauthorizedException e){
                                        resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
                                        resp.setContentType(TEXT_PLAIN);
                                        resp.setCharacterEncoding(StandardCharsets.UTF_8.toString());
                                        resp.getWriter().print(e.getMessage());
                                    }
                                } catch (Exception ex) {
                                    System.out.println(ex.getMessage());
                                    ex.printStackTrace();
                                    throw ex;
                                }
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

    private static class UnauthorizedException extends RuntimeException {
        public UnauthorizedException(String explanation) {
            super("Unauthorized because " + explanation);
        }
    }

    private static class NotFoundException extends RuntimeException {
        public NotFoundException(String description) {
            super(description);
        }
    }

    protected void putEntries(Map<String, String> newEntries) {
        Set < String > referencedKeys = new HashSet<>();
        for (Map.Entry<String, String> newEntry : newEntries.entrySet()) {
            String key = newEntry.getKey();
            String value = newEntry.getValue();
            if (REPOSITORY_ID_KEY.equals(key)) {
                throw new UnauthorizedException("Changing '" + key + "' is not allowed");
            }
            if (key.startsWith(PROTECTED_PREFIX)) {
                throw new UnauthorizedException("No permission to access " + key);
            }
            if (value != null) {
                Matcher matcher = HASH_PATTERN.matcher(value);
                while (matcher.find()) {
                    String foundKey = matcher.group();
                    if (!newEntries.containsKey(foundKey)) {
                        referencedKeys.add(foundKey);
                    }
                }
            }
        }

        Map<String, String> referencedEntries = storeClient.getAll(referencedKeys);
        for (String key : referencedKeys) {
            if (referencedEntries.get(key) == null) {
                throw new NotFoundException("Referenced key " + key + " not found");
            }
        }

        storeClient.putAll(newEntries);
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

                for (String foundKey : extractHashes(value)) {
                    if (!processed.contains(foundKey)) {
                        pending.add(foundKey);
                    }
                }
            }
        }

        return result;
    }

    private List<String> extractHashes(String input) {
        List<String> result = new ArrayList<>();
        if (input != null) {
            Matcher matcher = HASH_PATTERN.matcher(input);
            while (matcher.find()) {
                result.add(matcher.group());
            }
        }
        return result;
    }

    private Map<String, String> sortByDependency(final Map<String, String> unsorted) {
        Map<String, String> sorted = new LinkedHashMap<>();
        Set<String> processed = new HashSet<>();
        new Object() {
            void fill(String key) {
                if (processed.contains(key)) return;
                processed.add(key);
                String value = unsorted.get(key);
                for (String referencedKey : extractHashes(value)) {
                    if (unsorted.containsKey(referencedKey)) fill(referencedKey);
                }
                sorted.put(key, value);
            }

            void fill() {
                for (String key : unsorted.keySet()) {
                    fill(key);
                }
            }
        }.fill();
        return sorted;
    }

    private boolean checkAuthorization(
            IStoreClient store, HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        if (isValidAuthorization(store, req)) {
            return true;
        } else {
            resp.setStatus(HttpServletResponse.SC_FORBIDDEN);
            resp.setContentType(TEXT_PLAIN);
            resp.getWriter().print("Not authorized.");
            return false;
        }
    }

    private boolean isValidAuthorization(IStoreClient store, HttpServletRequest req) {
        if (isTrustedAddress(req)
                && parseXForwardedFor(req.getHeader("X-Forwarded-For")).stream()
                        .allMatch(RestModelServer::isTrustedAddress)) return true;

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

    private static List<InetAddress> parseXForwardedFor(String value) {
        List<InetAddress> result = new ArrayList<>();
        if (value != null) {
            return Stream.of(value.split(","))
                    .map(
                            v -> {
                                try {
                                    return InetAddress.getByName(v.trim());
                                } catch (UnknownHostException e) {
                                    LOG.warn("Failed to parse IP address: " + v, e);
                                    return null;
                                }
                            })
                    .filter(Objects::nonNull)
                    .collect(Collectors.toList());
        }
        return result;
    }

    private static boolean isTrustedAddress(ServletRequest req) {
        try {
            InetAddress addr = InetAddress.getByName(req.getRemoteAddr());
            return isTrustedAddress(addr);
        } catch (UnknownHostException e) {
            LOG.error("", e);
            return false;
        }
    }

    private static boolean isTrustedAddress(InetAddress addr) {
        return addr.isLoopbackAddress() || addr.isLinkLocalAddress() || addr.isSiteLocalAddress();
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
