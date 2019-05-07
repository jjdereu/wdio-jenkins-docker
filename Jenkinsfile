pipeline{

    agent {
        dockerfile true
    }
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