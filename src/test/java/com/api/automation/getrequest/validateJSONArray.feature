Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

    Scenario: To get the data in JSON format
      Given path '/users'
      And param page = 2
      When method get
      Then status 200
      And print response
      #validando tamaño del arreglo
      And match response.data == '#[6]'
      #validando todos los id's del arreglo, es sensible al orden
      And match response.data[*].id == [7,8,9,10,11,12]
      #validando la existencia de algunos id's del arreglo, no es sensible al orden
      And match response.data[*].id contains [7,8,9]
      And match response.data[*].first_name contains 'Cliff'


