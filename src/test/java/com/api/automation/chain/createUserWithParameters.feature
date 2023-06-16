Feature: To create a user in the application
  Use POST to do the operation


  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

  Scenario: To create a user Entry in JSON format
    Given path '/users'
    And request {"name": "#(name)","job": "#(job)"}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == 'leader'
    And print response
