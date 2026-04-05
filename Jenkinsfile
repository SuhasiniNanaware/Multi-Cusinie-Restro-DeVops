pipeline {
agent any

stages {

    stage('Checkout') {
        steps {
            checkout scm
        }
    }

    stage('Build') {
        steps {
            echo 'Building project...'
        }
    }

    stage('Test') {
        steps {
            echo 'Running tests...'
        }
    }

    stage('Code Quality') {
        steps {
            echo 'Checking code quality...'
        }
    }

    stage('Deploy') {
        steps {
            echo 'Deploying app...'
        }
    }
}

post {
    success {
        echo 'Pipeline succeeded!'
    }
    failure {
        echo 'Pipeline failed!'
    }
}

}
