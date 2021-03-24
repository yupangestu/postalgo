pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker buid -t postalgo:1.0 .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}