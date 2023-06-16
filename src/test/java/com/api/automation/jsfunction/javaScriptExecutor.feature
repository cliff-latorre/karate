Feature: To Call a JS function


  Scenario: Execute a JS function with an without parameter
    * def getIntValue = function() {return 11;}
    Then print "Function Value ==> ", getIntValue()
    * def getRandomValue = function(){return Math.floor((100) * Math.random());}
    Then print "Function Value ==> ", getRandomValue()
    * def getStringValue = function(arg1){return "Hello " + arg1;}
    Then print "Function Value ==> ", getStringValue("world")
