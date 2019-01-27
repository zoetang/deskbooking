# /users/sign_in.json
Feature: booking desk
  Given I send "(.*?)" and accept JSON

  Scenario: Login via a json request

    When I send a POST request to "https://apac-ar-test.herokuapp.com/users/sign_in.json" with:
      | user[email]    | user[password] |
      | danya0971@163.com | 123456 |
    Then the response status should be "201"
    And the JSON response root should be object
    And the JSON response should have "id" of type numeric and value "15"
    And the JSON response should have "email" of type string and value "danya0971@163.com"
    And the JSON response should have key "authentication_token"

  # Scenario: get desks and booking desk
    And set me as logined

    And I send a GET request to "https://apac-ar-test.herokuapp.com/desks.json"
    Then the response status should be "200"
    And the JSON response root should be array
    When I grab "$[0][id]" as "desk_id"
    When I send a POST request to "https://apac-ar-test.herokuapp.com/bookings.json" with:
      | booking[desk_id]  | booking[booked_from] | booking[booked_to] |
      | {desk_id} | 2019-01-27 | 2019-01-29 |
    Then the response status should be "201"
    And the JSON response root should be object
