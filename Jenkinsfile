pipeline{
    agent {
        dockerfile true
    }
    stages {
        stage('Build') {
            steps{
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps{
                sh 'npm run test'
            }
        }
    }
}