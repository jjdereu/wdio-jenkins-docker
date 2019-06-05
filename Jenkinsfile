pipeline {
    agent any
    tools {
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'dockerApps'
    }
    stages {
        stage('Back-end') {
            agent {
                docker { 
                  image 'maven:3-alpine'
                }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker { 
                  image 'node:7-alpine' 
                }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}