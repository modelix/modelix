Feature: Storing routes
  We verify the core storing routes work

  Scenario: Storing and retrieving
    Given the server has been started with in-memory storage
    When I PUT on "/put/abc" the value "qwerty6789"
     And I visit "/get/abc"
    Then I should get an OK response
     And the text of the page should be "qwerty6789"

  Scenario: Retrieving unexisting key
    Given the server has been started with in-memory storage
    When I visit "/get/abc"
    Then I should get a NOT FOUND response