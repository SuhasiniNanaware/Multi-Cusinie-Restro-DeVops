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
                bat 'docker rm -f cuisine-container || exit 0'
                bat 'docker run -d -p 8097:80 --name cuisine-container cuisine-app'
            }
        }
    }
    post{
        success{
            echo 'Deployment Successful'
        }
        failure {
            echo 'Deployment Failed'
        }
        }
    }
        