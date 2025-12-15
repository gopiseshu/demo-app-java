pipeline {
    agent any
    environment{
        IMAGE_NAME= "gopikrishna1338/demo-java-app"
        IMAGE_TAG= "latest"
    }
    stages {
        stage('checkout') {
            steps{
                git branch: 'master',
                url : 'https://github.com/gopiseshu/demo-app-java.git'
            }
        }
        stage(' image Build'){
            steps{
                sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }
    }
}