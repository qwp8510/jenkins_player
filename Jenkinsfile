pipeline {
    agent { docker 'python:3.5.1' }
    stages {
        stage('Initialize'){
                def dockerHome = tool 'myDocker'
                env.PATH = "${dockerHome}/bin:${env.PATH}"
            }
        stage('Build') {
            steps {
                sh 'python --version'
                sh 'echo "Hello world"'
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