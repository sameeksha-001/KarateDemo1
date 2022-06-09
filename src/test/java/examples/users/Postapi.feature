Feature: check generated token by API

  Background:
    * url 'https://gorest.co.in'

  Scenario: create a user
    Given path '/public-api/users'
    And request  {"id": 22930,"name": "ABC","email": "abc@lemke-langosh.io","gender": "male","status": "inactive"}
    When method POST
    Then status 200