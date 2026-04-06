pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t cuisine-app .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker rm -f cuisine-jenkins || echo done'
                bat 'docker run -d -p 8097:80 --name cuisine-jenkins cuisine-app'
            }
        }
    }
}
