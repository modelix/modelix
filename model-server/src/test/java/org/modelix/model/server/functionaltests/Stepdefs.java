package org.modelix.model.server.functionaltests;

import com.google.common.base.Charsets;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import static org.junit.Assert.*;

public class Stepdefs {

    private Process p;
    private HttpResponse<String> stringResponse;

    @Before
    public void prepare() {

    }

    @After
    public void cleanup() {
        if (p != null) {
            p.destroyForcibly();
            p = null;
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

            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        String s;
                        while ((s = stdInput.readLine()) != null) {
                            System.out.println(s);
                        }

                        // read any errors from the attempted command
                        while ((s = stdError.readLine()) != null) {
                            System.out.println(s);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();;
                    }
                }
            }).start();
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
        } catch (IOException|InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Then("I should get an OK response")
    public void i_should_get_an_ok_response() {
        Assert.assertEquals(200, stringResponse.statusCode());
    }

    @Then("the text of the page should be {string}")
    public void the_text_of_the_page_should_be(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

}
