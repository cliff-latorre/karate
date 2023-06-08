Feature: To Call a Java Class


  # read(<file_location>) API to read the data from file

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'


  Scenario: To create a user Entry in JSON format from Java Class
    Given path '/users'
    * def JavaUtils = Java.type('utils.Util')
    * def name = 'Cliff'
    * def randomName = JavaUtils.randomName('Renato')
    And print randomName
    And request {"name": "morpheus","job": "#(randomName)"}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == 'leader'
    And print response
