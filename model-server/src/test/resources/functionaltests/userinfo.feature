Feature: Basic routes
  We verify some basic routes work

  Scenario: No email to get when not logged
    Given the server has been started with in-memory storage
     When I visit "/getEmail"
     Then I should get an NO CONTENT response
      And the text of the page should be 0 characters long

#  Scenario: No email to get when logged
#    Given the server has been started with in-memory storage
#      And I PUT on "/put/" the value {string}
#     When I visit "/getEmail" with header "Authorization" set to "Bearer mySpectacularToken"
#     Then I should get an OK response