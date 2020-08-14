package org.modelix.model.server.functionaltests;

import com.google.common.base.Charsets;
import io.cucumber.gherkin.internal.com.eclipsesource.json.JsonValue;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.messages.internal.com.google.gson.JsonElement;
import io.cucumber.messages.internal.com.google.gson.JsonParser;
import io.cucumber.messages.internal.com.google.gson.stream.JsonReader;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ConnectException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Arrays;
import java.util.regex.Pattern;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class Stepdefs {

    private Process p;
    private HttpResponse<String> stringResponse;
    private int nRetries;

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
        stringResponse = null;
    }

    @Given("the server has been started with in-memory storage")
    public void the_server_has_been_started_with_in_memory_storage() {
        try {
            p = Runtime.getRuntime().exec("../gradlew run --args='-inmemory'");BufferedReader stdInput = new BufferedReader(new
                    InputStreamReader(p.getInputStream()));

            BufferedReader stdError = new BufferedReader(new
                    InputStreamReader(p.getErrorStream()));

            new Thread(() -> {
                try {
                    String s;
                    while ((s = stdInput.readLine()) != null) {
                        if (VERBOSE_SERVER) {
                            System.out.println(s);
                        }
                    }

                    // read any errors from the attempted command
                    while ((s = stdError.readLine()) != null) {
                        if (VERBOSE_SERVER) {
                            System.out.println(s);
                        }
                    }
                } catch (IOException e) {
                    // this may happen when closing
                }
            }).start();

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
        try {
            var client = HttpClient.newHttpClient();
            var request = HttpRequest.newBuilder(
                    URI.create("http://localhost:28101" + path))
                    .header("accept", "application/json")
                    .build();

            stringResponse = client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8));
        } catch (ConnectException e) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    System.out.println("  (connection failed, retrying in a bit. nRetries=" + nRetries + ")");
                }
                nRetries--;
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e2) {

                }
                i_visit(path);
            } else {
                throw new RuntimeException(e);
            }
        } catch (IOException|InterruptedException e) {
            e.printStackTrace();
        }
    }

    @When("I PUT on {string} the value {string}")
    public void i_put_on_the_value(String path, String value) {
        try {
            var client = HttpClient.newHttpClient();
            var request = HttpRequest.newBuilder(
                    URI.create("http://localhost:28101" + path))
                    .method("PUT", HttpRequest.BodyPublishers.ofString(value))
                    .header("accept", "application/json")
                    .build();

            stringResponse = client.send(request, HttpResponse.BodyHandlers.ofString(Charsets.UTF_8));
        } catch (ConnectException e) {
            if (nRetries > 0) {
                if (VERBOSE_CONNECTION) {
                    System.out.println("  (connection failed, retrying in a bit. nRetries=" + nRetries + ")");
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
        } catch (IOException|InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Then("I should get an OK response")
    public void i_should_get_an_ok_response() {
        assertEquals(200, stringResponse.statusCode());
    }

    @Then("I should get a NOT FOUND response")
    public void i_should_get_a_not_found_response() {
        assertEquals(404, stringResponse.statusCode());
    }

    @Then("the text of the page should be {string}")
    public void the_text_of_the_page_should_be(String expectedText) {
        assertEquals(expectedText.strip(), stringResponse.body().strip());
    }

    @Then("the text of the page should be {int} characters long")
    public void theTextOfThePageShouldBeCharactersLong(int nLength) {
        assertEquals(nLength, stringResponse.body().length());
    }

    @Then("the text of the page contains only hexadecimal digits")
    public void theTextOfThePageContainsOnlyHexadecimalDigits() {
        Pattern.matches("[a-f0-9]+", stringResponse.body());
    }

    @Then("the text of the page should be this JSON {string}")
    public void theTextOfThePageShouldBeThisJSON(String expectedJsonStr) {
        JsonElement expectedJson = JsonParser.parseString(expectedJsonStr);
        assertEquals(expectedJson, JsonParser.parseString(stringResponse.body()));
    }
}
