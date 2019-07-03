pipeline {
    agent any 
    stages {
        stage('Build') {
 	tools {
         maven 'M3'
         }
	dir ('~/Desktop ') { 
    sh('JenkinsBuild.sh')
	}
            steps {
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
