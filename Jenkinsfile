pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo building' 
               sh 'BRANCH_NAME'
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
