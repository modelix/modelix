Feature: Storing routes
  We verify the core storing routes work

  Scenario: Events are received after subscription
    Given the server has been started with in-memory storage
     When I prepare to receive events from "/subscribe/dylandog"
      And I PUT on "/put/dylandog" the value "a comic book"
     Then I should get an event "a comic book"
