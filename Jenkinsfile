pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Clone Repository') {
            steps {
                
               git url: 'git@github.com:pramod0823/Dockerfile.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                
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

