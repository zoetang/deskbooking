# /users/sign_in.json
Feature: Login request

  Scenario: Login via a json request and get the tocken

    When I send a POST request to "https://apac-ar-test.herokuapp.com/users/sign_in.json" with:
      | user[email]    | user[password] |
      | danya0971@163.com | 123456 |
    Then the response status should be "201"
    And the JSON response root should be object
    And the JSON response should have "id" of type numeric and value "15"
    And the JSON response should have "email" of type string and value "danya0971@163.com"
    And the JSON response should have key "authentication_token"
