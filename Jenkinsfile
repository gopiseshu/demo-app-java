pipeline {
    agent any

    environment {
        IMAGE_NAME = 'gopikrishna1338/demo-java-app'
        IMAGE_TAG  = 'latest'
    }

    stages {

        stage('Clean Workspace') {
            steps {
                deleteDir()
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ."
            }
        }
    }
}
