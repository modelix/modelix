Feature: Basic routes
  We verify some basic routes work

  Scenario: No email to get when not logged
    Given the server has been started with in-memory storage
     When I visit "/getEmail"
     Then I should get an NO CONTENT response
      And the text of the page should be 0 characters long

  Scenario: No email to get when logged
    # the token should expire in year 2286
    Given the server has been started with in-memory storage loaded with "$$$_token_expires_mySpectacularToken=9999999999999,$$$_token_email_mySpectacularToken=cool@mail.com"
     When I visit "/getEmail" with header "Authorization" set to "Bearer mySpectacularToken"
     Then I should get an OK response
      And the text of the page should be "cool@mail.com"
