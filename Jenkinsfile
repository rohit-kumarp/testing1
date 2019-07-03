pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo building' 
               sh 'mvn -version:'
            }
        }
        stage('Test') { 
            steps {
                sh 'echo testing'
            }
        }
        stage('Deploy') { 
            steps {
               sh 'echo "deployemnt done"'
            }
        }
    }
}
