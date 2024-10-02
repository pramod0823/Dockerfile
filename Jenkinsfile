pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'pramod2308/docker'
        GITHUB_REPO = 'git@github.com:pramod0823/Dockerfile.git'
        BRANCH_NAME = 'main'
    }

    triggers {
        githubPush() // Trigger the pipeline on GitHub push events
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                git url: 'git@github.com:pramod0823/Dockerfile.git', branch: 'main'
            }
        }
    }
}
