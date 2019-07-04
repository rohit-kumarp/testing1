pipeline {
    agent any 
    stages {
        stage('merging with latest master') {
 	tools {
         maven 'M3'
         }
            steps {
                sh 'echo building' 
                sh 'echo $env.GIT_BRANCH'
                sh 'echo $BRANCH_NAME'
               sh '''
                    git --version
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
        stage('start automation script run') { 
            steps {
               sh 'echo "starting automation job"'
            }
        }

    }
}


