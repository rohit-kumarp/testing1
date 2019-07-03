pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo building' 
                git branch
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
