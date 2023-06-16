Feature: LLamamos a otro Escenario

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

    Scenario: Llamamos a un escenario sin parámetros
    * def response_create = call read("../postrequest/createUSer.feature")
      And print "recuperado desde callScenario==> ", response_create


  Scenario: Llamamos a un escenario con parámetros
    * def response_create = call read("../chain/createUserWithParameters.feature") {name: 'morpheus', job: 'leader'}
    And print "recuperado desde callScenario==> ", response_create
    And print response_create.response.id
