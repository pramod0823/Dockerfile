pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
               git url: 'git@github.com:pramod0823/Dockerfile.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    def imageName = 'testing' 
                    echo "docker build -t ${imageName} ."
                }
            }
        }

        stage('Remove Docker Image') {
            steps {
                script {
                    def imageName = 'testing' 
                    // Remove the Docker image
                    sh "docker rmi ${imageName} || true" 
                }
            }
        }
    }

    post {
        always {
            echo "Done"
        }
    }
}

