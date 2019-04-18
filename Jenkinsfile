node {
    stage('Build Docker Image') {
        sh '''
            cd env-ci/
            docker-compose --version
            docker --version
            docker-compose build
        '''
    }
}
