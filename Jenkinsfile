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
                sh 'docker build -t cuisine-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    docker stop cuisine-container || true
                    docker rm cuisine-container || true
                    docker run -d -p 8097:80 --name cuisine-container cuisine-app
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