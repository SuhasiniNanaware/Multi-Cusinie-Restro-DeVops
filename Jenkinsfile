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
                    docker stop cuisine-live-site || true
                    docker rm cuisine-live-site || true
                    docker run -d --name cuisine-live-site -p 8097:80 cuisine-app
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