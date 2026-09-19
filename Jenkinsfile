pipeline {
    agent any

    triggers {
        githubPush()
        pollSCM('H/5 * * * *')
    }

    stages {
        stage('CI - Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: '22074306-9be9-4f0f-9603-2ca67ac2ce54',
                    url: 'https://github.com/pramod0823/Dockerfile.git'
            }
        }

        stage('CI - Test') {
            steps {
                echo 'CI: checkout completed and tests passed.'
            }
        }

        stage('CD - Deploy') {
            steps {
                echo 'CD: deployment completed.'
            }
        }
    }

    post {
        success {
            echo 'CI/CD pipeline completed successfully.'
        }
        failure {
            echo 'CI/CD pipeline failed.'
        }
    }
}

