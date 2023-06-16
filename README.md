#To run from command line:
mvn test -Dkarate.options='-t=@wip'
mvn test -Dkarate.options='-t=@config' -Dkarate.env='dev'

https://karatelabs.github.io/karate/#index
https://www.w3schools.com/js/tryit.asp?filename=tryjs_functions


mvn help:all-profiles
mvn help:active-profiles
mvn -P local test
