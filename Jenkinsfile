pipeline {
    agent any 
    stages {
        stage('merging with latest master') {
 	tools {
         maven 'M3'
         }
            steps {
                sh 'echo building' 
               sh '''
                    sh  merge_master.sh
                '''
		sh 'mvn -version'
            
        }
    }
        stage('Deploy Admin Job') { 
            steps {
                sh 'echo "starting deployemnt in admin build"'
            }
        }
        stage('Wait for Admin server to be up') { 
            steps {
               sh 'echo "checking if server is up or not?"'
            }
        }
        stage('Wait for Admin server to be up') { 
            steps {
               sh 'echo "checking if server is up or not?"'
            }
        }

    }
}


