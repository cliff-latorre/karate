Feature: Probar endpoint get de la aplicación
  para probar digerentes get con diferentes formatos de datos soportados por la aplicación

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

  Scenario: To test the get end point with JSON data
    Given path '/users'
    And param page = 2
    When method get
    Then status 200
    And print response

  Scenario: To test the get end point with JSON data full url
    Given  url 'https://reqres.in/api/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
