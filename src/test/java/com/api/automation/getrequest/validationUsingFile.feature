Feature: To validate the GET End response from file
  To validate the get end point response from external file

  # read(<file_location>) API to read the data from file

  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

  @wip
  Scenario: To get the data in JSON format and validate from file
    Given path '/users'
    And param page = 2
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def actualResponse = read('/data/JsonResponse.json')
    And match response == actualResponse
    And print "File ==> ", actualResponse
