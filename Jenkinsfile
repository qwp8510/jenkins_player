Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker 'python:3.6.5' }
    stages {
        stage('Build') {
            steps {
                sh 'python --version'
                sh 'echo "Hello world"'
            }
        }
    }
}