Feature: Transpliting ES6 code to ES5
  Scenario: Using defaults
    Given the Server is running at "default-app"
    And I go to "/javascripts/application.js"
    Then I should see "var square = function square(x)"
