pipeline {
    agent any
    stages {
        stage('checkout') {
            steps{
                git branch: 'master',
                url : 'https://github.com/gopiseshu/demo-app-java.git'
            }
        }
        stage('Build'){
            steps{
                sh 'mvn clean package -DskipTests'
            }
        }
    }
}