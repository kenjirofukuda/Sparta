pipeline {
    agent any
    stages {
        stage('Cleanup') {
            steps {
                cleanWs()
            }
        }
        stage('Load') {
            steps {
                sh 'git clean -f -d'
                sh 'scripts/build/load.sh'
            }
        }
        stage('Run examples') {
            steps {
                sh 'scripts/build/test.sh'
                junit '*.xml'
            }
        }
    }
}
