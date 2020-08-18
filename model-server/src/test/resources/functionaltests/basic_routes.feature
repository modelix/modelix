Feature: Basic routes
  We verify some basic routes work

  Scenario: Homepage works
    Given the server has been started with in-memory storage
     When I visit "/"
     Then I should get an OK response
      And the text of the page should be "Model Server"

  Scenario: Heartbeat works
    Given the server has been started with in-memory storage
     When I visit "/health"
     Then I should get an OK response
     And the text of the page should be "healthy"