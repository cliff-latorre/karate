Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'


  Scenario: To get the data in JSON format and validate attribute type
    Given path '/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response.data[0].id == '#number'
    #And match response.data[0].id == '#string'
    And match response.data[0].email == '#notnull'
    And match response.data[0].first_name == '#ignore'
    And match response.data[0].last_name == '#string'
    And match response.data[0].avatar == '#present'
    #And match response.data[0].address == '#present'
    And match response.data == '#array'
    #complex Fuzzy matcher
    And match response.data[0].id == '#? _ <= 7'
    And match response.data[0].first_name == '#string? _ .length >=1'
    #To validate the array
    And match response.data == '#[]'
    And match response.data == '#[6]'
    #validamos que el campo first_name sea de tipo string y que su longitud sea mayor o igual a 5 y que además lo hallemos 6 veces
    And match response.data[*].first_name == '#[6] #string? _ .length >=5'
