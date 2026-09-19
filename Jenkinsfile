pipeline {
    agent any

    triggers {
        pollSCM('H/5 * * * *')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('CI') {
            steps {
                echo 'CI completed.'
            }
        }

        stage('CD') {
            steps {
                echo 'CD completed.'
            }
        }
    }
}



