pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo building' 
                sh "git branch | grep \* | cut -d ' ' -f2"
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
