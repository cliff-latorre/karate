Feature: Variables Creation in Karate Framework

  Background: Create and Initialize the Variable
    * def app_name = "Google"
    * def page_lode_timeout = 20


# <Gherkin Keyword> <def> <variable_name> = <value>
# * <def> <variable_name> = <value>
  Scenario: To create a Variable
  # Use Variable dor repeating value
  # Storing the data from a external file
  # In the matcher expression
  # Passing the Data from one feature file to another
    Given def var_int = 10
    And def var_string = 'This is a String'
    Then print var_int
    And print "String Variable ==>", var_string
    #During the variable creation. Gherkin keyword is optional.
    # you caun use "*" instead of the Gherkin Keyword
    * print "String Variable ==>", var_string
    * print var_int_2 = var_int + 10
    And print "New Variable ==>", var_int_2
    And print "Background Section Variable ==>", app_name, page_lode_timeout



    #We cannot access those very well in the second scenario
  Scenario: Access the Variable
    Given print "Previous Scenario ==>", var_int
    And print "Previous Scenario ==>", var_string
    And print "Previous Scenario ==>", var_int_2


  Scenario: Access the Variable 2
    * def var_int = 1
    * def var_string = 'New'
    * print var_int_2 = var_int + 10
    Given print "Previous Scenario ==>", var_int
    And print "Previous Scenario ==>", var_string
    And print "Previous Scenario ==>", var_int_2
