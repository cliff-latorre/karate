Feature: To validate the JSON schema
  To validate the JSON schema for post

  # read(<file_location>) API to read the data from file

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'


  Scenario: To create a user Entry in JSON format from external file
    Given path '/users'
    * def body = read('../postrequest/data/userEntry.json')
    And request body
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status 201
    * def schema = read('data/createUserSchema.json')
    And match response == schema
    And print response
