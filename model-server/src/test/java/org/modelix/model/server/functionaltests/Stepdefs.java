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

package org.modelix.model.server.functionaltests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertTrue;

import com.google.common.base.Charsets;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.messages.internal.com.google.gson.JsonElement;
import io.cucumber.messages.internal.com.google.gson.JsonParser;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ConnectException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.sse.InboundSseEvent;
import javax.ws.rs.sse.SseEventSource;

public class Stepdefs {

    private Process p;
    private int nRetries;
    private SseEventSource source;
    private List<InboundSseEvent> events = new LinkedList<InboundSseEvent>();
    private List<HttpResponse<String>> allStringResponses = new LinkedList<>();

    private Executor longPollExecutor = Executors.newCachedThreadPool();
    private List<String> longPollResults = new ArrayList<String>();

    private static final boolean VERBOSE_SERVER = false;
    private static final boolean VERBOSE_CONNECTION = false;

    @Before
    public void prepare() {
        nRetries = 10;
    }

    @After
    public void cleanup() {
        if (p != null) {
            p.destroy();
            p = null;
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
        }
        if (source != null) {
            source.close();
        }
        source = null;
        events.clear();
        allStringResponses.clear();
    }

    @Given("the server has been started with in-memory storage")
    public void the_server_has_been_started_with_in_memory_storage() {
        startServerInMemory(Collections.emptyMap());
    }

    @Given("the server has been started with in-memory storage loaded with {string}")
    public void theServerHasBeenStartedWithInMemoryStorageLoadedWith(String presetValuesStr) {
        Map<String, String> presetValues = new HashMap<>();
        Arrays.stream(presetValuesStr.split(","))
                .forEach(
                        s -> {
                            String[] parts = s.split("=");
                            presetValues.put(parts[0].strip(), parts[1].strip());
                        });
        startServerInMemory(presetValues);
    }

    private void startServerInMemory(Map<String, String> presetValues) {
        try {
            String argsToSetValues =
                    presetValues.entrySet().stream()
                            .map(e -> " -set " + e.getKey() + " " + e.getValue())
                            .collect(Collectors.joining());
            File modelServerJar = new File("build/libs/model-server-latest-fatJar.jar");
            if (!modelServerJar.exists()) {
                throw new RuntimeException(
                        "Model server jar not found at " + modelServerJar.getAbsolutePath());
            }
            String commandLine =
                    "java -jar "
                            + modelServerJar.getAbsolutePath()
                            + " -inmemory"
                            + argsToSetValues;
            p = Runtime.getRuntime().exec(commandLine);
            BufferedReader stdInput = new BufferedReader(new InputStreamReader(p.getInputStream()));

            BufferedReader stdError = new BufferedReader(new InputStreamReader(p.getErrorStream()));

            new Thread(
                            () -> {
                                try {
                                    String s;
                                    while ((s = stdInput.readLine()) != null) {
                                        if (VERBOSE_SERVER) {
                                            System.out.println("SERVER OUT " + s);
                                        }
                                    }

                                    while ((s = stdError.readLine()) != null) {
                                        if (VERBOSE_SERVER) {
                                            System.out.println("SERVER ERR " + s);
                                        }
                                    }
                                } catch (IOException e) {
                                    // this may happen when closing
                                }
                            })
                    .start();

            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @When("I visit {string}")
    public void i_visit(String path) {
        httpRequest("GET", path);
    }

    private String httpRequest(String method, String path) {
        try {
            var client = HttpClient.newHttpClient();
            var request =
                    HttpRequest.newBuilder(URI.create("http://localhost:28101" + path))
                            .method(method, HttpRequest.BodyPublishers.noBody())
                            .header("accept", "application/json")
                            .build();

            HttpResponse<String> result =
                    client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8));
            allStringResponses.add(result);
            return result.body();
        } catch (ConnectException e) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    System.out.println(
                            "  (connection failed, retrying in a bit. nRetries=" + nRetries + ")");
                }
                nRetries--;
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e2) {

                }
                return httpRequest(method, path);
            } else {
                throw new RuntimeException(e);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    @When("I POST {string}")
    public void iPOST(String path) {
        httpRequest("POST", path);
    }

    @When("I visit {string} with headers {string}")
    public void iVisitWithHeaders(String path, String headersStr) {
        Map<String, String> headers = new HashMap<>();
        Arrays.stream(headersStr.split(","))
                .forEach(
                        s -> {
                            String[] parts = s.split("=");
                            headers.put(parts[0].strip(), parts[1].strip());
                        });
        visitPath(path, headers);
    }

    @When("I visit {string} with header {string} set to {string}")
    public void iVisitWithHeaderSetTo(String path, String header, String value) {
        visitPath(path, Collections.singletonMap(header, value));
    }

    private String lastStringResponse() {
        return allStringResponses.get(allStringResponses.size() - 1).body().strip();
    }

    private int lastStatusCode() {
        return allStringResponses.get(allStringResponses.size() - 1).statusCode();
    }

    private void visitPath(String path, Map<String, String> headers) {
        try {
            var client = HttpClient.newHttpClient();
            var builder =
                    HttpRequest.newBuilder(URI.create("http://localhost:28101" + path))
                            .header("accept", "application/json");
            for (Map.Entry<String, String> e : headers.entrySet()) {
                String value = e.getValue();
                if (value.contains("#TEXT_OF_LAST_PAGE#")) {
                    value = value.replaceAll("#TEXT_OF_LAST_PAGE#", lastStringResponse());
                }
                builder = builder.header(e.getKey(), value);
            }
            var request = builder.build();

            allStringResponses.add(
                    client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8)));
        } catch (ConnectException e) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    System.out.println(
                            "  (connection failed, retrying in a bit. nRetries=" + nRetries + ")");
                }
                nRetries--;
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e2) {

                }
                visitPath(path, headers);
            } else {
                throw new RuntimeException(e);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    @When("I PUT on {string} the value {string}")
    public void i_put_on_the_value(String path, String value) {
        try {
            var client = HttpClient.newHttpClient();
            var request =
                    HttpRequest.newBuilder(URI.create("http://localhost:28101" + path))
                            .method("PUT", HttpRequest.BodyPublishers.ofString(value))
                            .header("accept", "application/json")
                            .build();

            allStringResponses.add(
                    client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8)));
        } catch (ConnectException e) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    System.out.println(
                            "  (connection failed, retrying in a bit. nRetries=" + nRetries + ")");
                }
                nRetries--;
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e2) {

                }
                i_put_on_the_value(path, value);
            } else {
                throw new RuntimeException(e);
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Then("I should get an OK response")
    public void i_should_get_an_ok_response() {
        assertEquals(200, lastStatusCode());
    }

    @Then("I should get a NOT FOUND response")
    public void i_should_get_a_not_found_response() {
        assertEquals(404, lastStatusCode());
    }

    @Then("I should get an NO CONTENT response")
    public void iShouldGetAnNOCONTENTResponse() {
        assertEquals(204, lastStatusCode());
    }

    @Then("I should get a FORBIDDEN response")
    public void iShouldGetAFORBIDDENResponse() {
        assertEquals(403, lastStatusCode());
    }

    @Then("the text of the page should be {string}")
    public void the_text_of_the_page_should_be(String expectedText) {
        assertEquals(expectedText.strip(), lastStringResponse());
    }

    @Then("the text of the page should contain {string}")
    public void the_text_of_the_page_should_contain(String expectedText) {
        assertTrue(lastStringResponse().contains(expectedText.strip()));
    }

    @Then("the text of the page should be {int} characters long")
    public void theTextOfThePageShouldBeCharactersLong(int nLength) {
        assertEquals(nLength, lastStringResponse().length());
    }

    @Then("the text of the page contains only hexadecimal digits")
    public void theTextOfThePageContainsOnlyHexadecimalDigits() {
        Pattern.matches("[a-f0-9]+", lastStringResponse());
    }

    @Then("the text of the page should be this JSON {string}")
    public void theTextOfThePageShouldBeThisJSON(String expectedJsonStr) {
        JsonElement expectedJson = JsonParser.parseString(expectedJsonStr);
        assertEquals(expectedJson, JsonParser.parseString(lastStringResponse()));
    }

    @Then("I should get an event {string}")
    public void iShouldGetAnEvent(String expectedEventValue) {
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {

        }
        assertTrue(events.stream().anyMatch(e -> e.readData().equals(expectedEventValue)));
    }

    @Then("Long poll should return {string}")
    public void longPollShouldReturn(String expectedValue) {
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {

        }
        assertTrue(longPollResults.stream().anyMatch(e -> Objects.equals(expectedValue, e)));
    }

    @Then("Long poll should NOT return {string}")
    public void longPollShouldNOTReturn(String expectedValue) {
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {

        }
        assertTrue(longPollResults.stream().noneMatch(e -> Objects.equals(expectedValue, e)));
    }

    @Then("I should NOT get an event {string}")
    public void iShouldNOTGetAnEvent(String expectedEventValue) {
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {

        }
        assertTrue(events.stream().noneMatch(e -> e.readData().equals(expectedEventValue)));
    }

    @When("I prepare to receive events from {string}")
    public void iPrepareToReceiveEvents(String path) {
        // wait for server to be up
        i_visit("/");

        Client client = ClientBuilder.newClient();
        WebTarget target = client.target("http://localhost:28101" + path);

        source = SseEventSource.target(target).build();
        source.register(inboundSseEvent -> events.add(inboundSseEvent));
        source.open();
    }

    @When("I long poll {string}")
    public void iLongPoll(String path) {
        // wait for server to be up
        i_visit("/");

        longPollExecutor.execute(
                () -> {
                    String value = httpRequest("GET", path);
                    System.out.println("Polling " + path + " returned " + value);
                    longPollResults.add(value);
                });
    }

    @Then("the text of the page should be the same as before")
    public void theTextOfThePageShouldBeTheSameAsBefore() {
        String last = allStringResponses.get(allStringResponses.size() - 1).body().strip();
        String secondToLast = allStringResponses.get(allStringResponses.size() - 2).body().strip();
        assertEquals(secondToLast, last);
    }

    @Then("the text of the page should be different than before")
    public void theTextOfThePageShouldBeDifferentThanBefore() {
        String last = allStringResponses.get(allStringResponses.size() - 1).body().strip();
        String secondToLast = allStringResponses.get(allStringResponses.size() - 2).body().strip();
        assertNotEquals(secondToLast, last);
    }
}
