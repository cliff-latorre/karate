Feature: Probar secuencia de peticiones

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

  Scenario: Hacemos peticiones secuenciales, empezando con un listado de usuario para luego pedir el detalle del primero
    Given path '/users'
    And param page = 1
    When method get
    Then status 200
    And print response

    * def firstUser = response.data[0]
    Given path '/users', firstUser.id
    When method get
    Then status 200
    And print response
