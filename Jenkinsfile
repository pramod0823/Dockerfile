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
                    def imageName = 'testing' // Replace with your desired image name
                    echo "docker build -t ${imageName} ."
                }
            }
        }

        stage('Remove Docker Image') {
            steps {
                script {
                    def imageName = 'testing' // Ensure this matches the image name used above
                    // Remove the Docker image
                    sh "docker rmi ${imageName} || true" // '|| true' is used to ignore errors if the image doesn't exist
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

