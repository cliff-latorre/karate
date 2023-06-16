@config
Feature: To get the variables set by karate-config.js

  Background: To get the variable of myVarName
    * def localmyVarName = myVarName
    Given print "Backgroud Variable value ==>", localmyVarName

    Scenario: To get the value of username and password
      * def localusername = username
      * def localpassword = password
      Given print "Username value ==>", localusername
      And print "Password value ==>", localpassword
      And print "myVarName value ==>", myVarName
