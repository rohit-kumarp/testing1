pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo building' 
               sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
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
tools {
    maven 'M3'
  }
}
