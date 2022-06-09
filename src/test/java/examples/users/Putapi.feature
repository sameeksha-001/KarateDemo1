Feature: update user by put API

  Background:
    * url 'https://gorest.co.in'
    * def requestPayLoad =
    """
    {
    "status" : "inactive",
    "gender":"male"


    }
    """

  Scenario: update the user with the given data
    Given path '/public-api/users/2280'
    And request  requestPayLoad
    When method put
    Then status 200
    And match $ ==  {"code":401,"data":{"message":"Authentication failed"},"meta":null}{"code":404,"data":{"message":"Resource not found"},"meta":null}