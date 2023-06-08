Feature: To create a user in the application


  Scenario Outline:
    Given print '<url>'
    Then print '<path>'
    When print '<method>'
    And print '<status>'

    Examples:
      | url               | path              | method | status |
      | https://reqres.in | /api/users?page=2 | get    | 200    |
      | https://reqres.in | /api/users/       | post   | 201    |


  Scenario Outline: To create a user Entry in JSON format - <name>
    Given url 'https://reqres.in/api/users'
    And request {"name": "<name>","job": "<job>"}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    Then status <status>
    And match response.name == '<name>'
    And match response.job == '<job>'
    And print response
    Examples:
      | name     | job    |status|
      | Morpheus | leader |201   |
      | Cliff    | QA     |201   |
