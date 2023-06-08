Feature: To create a user in the application with embedded
  Use POST to do the operation


  Background: Setup the Base Path
    Given url 'https://reqres.in/api'
    And print '========This is the end Background ======'

  Scenario: To create a user Entry in JSON format with embedded
    Given path '/users'
    * def getJobId = function(){return Math.floor((100) * Math.random());}
    * def jobId = getJobId()
    #And request {"name": "morpheus","job": "#(getJobId())"}
    And request {"name": "morpheus","job": "#(jobId)"}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus'
    And match response.job == jobId
    And print response
