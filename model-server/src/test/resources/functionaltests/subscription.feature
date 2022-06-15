Feature: Storing routes
  We verify the core storing routes work

  Scenario: Events are received after subscription
    Given the server has been started with in-memory storage
     When I long poll "/poll/dylandog"
      And I PUT on "/put/dylandog" the value "a comic book"
     Then Long poll should return "a comic book"

  Scenario: Events are received only for the key subscribed
    Given the server has been started with in-memory storage
    When I long poll "/poll/dylandog"
    And I PUT on "/put/topolino" the value "a comic book"
    Then Long poll should NOT return "a comic book"