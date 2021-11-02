pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    label 'py-docker'
                    image 'python:3.5.1'
                }
            }
            steps {
                sh 'python --version'
                sh 'echo "Hello world!!!"'
            }
        }

    }
}