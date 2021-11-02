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
        stage('self define') {
            steps {
                sh 'echo "self defined"'
            }
        }
    }
    post {
        always {
            echo "always run"
        }
        success {
            echo "here success"
        }
        failure {
            echo "fail haha"
        }
        unstable {
            echo "This will run only if the run was marked as unstable"
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}