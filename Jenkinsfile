pipeline {
    agent { label 'dockerserver' }
    stages {
        stage('Back-end') {
            agent {
                docker { 
                    label 'dockerserver'
                    image 'maven:3-alpine' 
                    }
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}