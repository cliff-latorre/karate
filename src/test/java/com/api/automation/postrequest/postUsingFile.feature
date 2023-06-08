Feature: To validate the POST End response from file
  To validate the post end point response from external file

  # read(<file_location>) API to read the data from file

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'


  Scenario: To create a user Entry in JSON format from external file
    Given path '/users'
    * def body = read('/data/userEntry.json')
    And request body
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == 'leader'
    And print response
