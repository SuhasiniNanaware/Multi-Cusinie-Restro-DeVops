pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SuhasiniNanaware/Multi-Cusinie-Restro-DeVops'
            }
        }

        stage('Build') {
            steps {
                echo 'Build successful'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying project'
            }
        }
    }
}
