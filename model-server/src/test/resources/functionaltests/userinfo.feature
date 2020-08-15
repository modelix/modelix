Feature: Basic routes
  We verify some basic routes work

  Scenario: No email to get when not logged
    Given the server has been started with in-memory storage
     When I visit "/getEmail"
     Then I should get an NO CONTENT response
      And the text of the page should be 0 characters long

