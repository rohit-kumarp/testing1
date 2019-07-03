pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
               tools {
   	 maven 'M3'
 	 }
                sh 'echo building' 
               sh '''
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
