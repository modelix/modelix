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

  Scenario: Retrieving forbidden key
    Given the server has been started with in-memory storage
    When I visit "/get/$$$_abc"
    Then I should get a FORBIDDEN response

  Scenario: Retrieving multiple keys, all existing
    Given the server has been started with in-memory storage
     When I PUT on "/put/aaa" the value "value1"
      And I PUT on "/put/bbb" the value "value2"
      And I PUT on "/put/ccc" the value "value3"
      And I PUT on "/getAll" the value "['aaa', 'bbb', 'ccc']"
     Then I should get an OK response
      And the text of the page should be this JSON "[{'value': 'value1', 'key': 'aaa'}, {'value': 'value2', 'key': 'bbb'}, {'value': 'value3', 'key': 'ccc'}]"

  Scenario: Retrieving multiple keys, some existing
    Given the server has been started with in-memory storage
     When I PUT on "/put/aaa" the value "value1"
      And I PUT on "/put/ccc" the value "value3"
      And I PUT on "/getAll" the value "['aaa', 'bbb', 'ccc']"
     Then I should get an OK response
      And the text of the page should be this JSON "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb'}, {'value': 'value3', 'key': 'ccc'}]"

  Scenario: Retrieving multiple keys, none existing
    Given the server has been started with in-memory storage
     When I PUT on "/getAll" the value "['aaa', 'bbb', 'ccc']"
     Then I should get an OK response
      And the text of the page should be this JSON "[{'key': 'aaa'}, {'key': 'bbb'}, {'key': 'ccc'}]"

  Scenario: Putting multiple keys, with some nulls, are stored correctly
    Given the server has been started with in-memory storage
    When I PUT on "/putAll" the value "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb'}, {'value': 'value3', 'key': 'ccc'}]"
     And I PUT on "/getAll" the value "['aaa', 'bbb', 'ccc']"
    Then I should get an OK response
     And the text of the page should be this JSON "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb'}, {'value': 'value3', 'key': 'ccc'}]"

  Scenario: Putting multiple keys, with some nulls, are recognized correctly
    Given the server has been started with in-memory storage
    When I PUT on "/putAll" the value "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb'}, {'value': 'value3', 'key': 'ccc'}]"
    Then I should get an OK response
    And the text of the page should be "3 entries written"

  Scenario: Putting multiple keys
    Given the server has been started with in-memory storage
    When I PUT on "/putAll" the value "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb', 'value': 'value2'}, {'value': 'value3', 'key': 'ccc'}]"
    And I PUT on "/getAll" the value "['aaa', 'bbb', 'ccc']"
    Then I should get an OK response
    And the text of the page should be this JSON "[{'value': 'value1', 'key': 'aaa'}, {'key': 'bbb', 'value': 'value2'}, {'value': 'value3', 'key': 'ccc'}]"

  Scenario: Get recursively
    Given the server has been started with in-memory storage
      And I PUT on "/put/hash-*0123456789-0123456789-0123456789-00001" the value "bar"
      And I PUT on "/put/existingKey" the value "hash-*0123456789-0123456789-0123456789-00001"
     When I visit "/getRecursively/existingKey"
     Then I should get an OK response
      And the text of the page should be this JSON "[{'value': 'hash-*0123456789-0123456789-0123456789-00001', 'key': 'existingKey'}, {'key': 'hash-*0123456789-0123456789-0123456789-00001', 'value': 'bar'}]"