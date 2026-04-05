pipeline {
agent any

stages {
    stage('Checkout') {
        steps {
            git 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
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

    stage('Deploy') {
        steps {
            echo 'Deploying application...'
        }
    }
}

}
