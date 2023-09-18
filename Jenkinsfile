pipeline{
    agent any
    tools {
        maven 'Maven 3.9.2'
    }
      parameters { choice(name: 'Environment', choices: ['local', 'dev', 'certi'], description: 'Profile needs to be used while executing test') }

    stages{
        stage ('Clean WorkSpace Directory'){
            steps {
                //define the single or multiple step
                sh 'echo CleanUp Stage'
                cleanWs notFailBuild: true
            }
        }
        stage ('Git CheckOut'){
            steps {
               //define the single or multiple step
                sh 'echo Git Checkout'
                checkout([$class: 'GitSCM', branches: [[name: 'main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/cliff-latorre/KarateTaller.git']]])
            }

        }
        stage ('Restore Packages'){
            steps {
                //define the single or multiple step
                sh 'echo Restore Package'
            }
        }
        stage ('Build'){
            steps {
               //define the single or multiple step
                sh 'echo Build'
                sh 'mvn clean compile'

            }
        }
        stage ('Deploy'){
            steps {
                sh 'echo Deploying the application..'
            }
        }
        stage ('Run the Test') {
            steps {
                 //define the single or multiple step
                sh 'echo Test Execution Started'
                sh 'mvn -P %Environment% test'
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
            cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'target/karate-reports', pendingStepsNumber: -1, reportTitle: 'Karate Test Execution', skipEmptyJSONFiles: true, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }

    }
}
