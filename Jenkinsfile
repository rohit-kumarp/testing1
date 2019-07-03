pipeline {
    agent any 
    stages {
        stage('Build') {
 	tools {
         maven 'M3'
         }
            steps {
                sh 'echo building' 
               sh '''
                    cd ~/Desktop/
                    pwd
                    echo "PATH = ${PATH}"
                    echo "mvn -version"
                '''
		sh 'mvn -version'
            
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


