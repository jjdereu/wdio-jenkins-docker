pipeline {
    agent {
      label 'docker'
    }
    stages {
        stage('Back-end') {
            agent {
                docker { 
                  label 'docker'
                  image 'maven:3-alpine'
                  args '--name docker-node'
                }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker { 
                  label 'docker'
                  image 'node:7-alpine' 
                }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}