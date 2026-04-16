pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t cuisine-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                bat '''
                docker stop cuisine-container || exit 0
                docker rm cuisine-container || exit 0
                docker run -d --name cuisine-container -p 8097:80 cuisine-app
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful'
        }
        failure {
            echo 'Deployment Failed'
        }
    }
}