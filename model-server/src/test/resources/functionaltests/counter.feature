Feature: Storing routes
  We verify the core storing routes work

  Scenario: We should get the same ID for the same key
    Given the server has been started with in-memory storage
     When I POST "/counter/a"
      And I should get an OK response
      And I POST "/counter/a"
     Then the text of the page should be the same as before

  Scenario: We should get different IDs for different keys
    Given the server has been started with in-memory storage
     When I POST "/counter/a"
      And I should get an OK response
      And I POST "/counter/b"
     Then the text of the page should be different than before
