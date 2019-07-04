pipeline {
    agent any 
    stages {
        stage('merge master and push') {
 	/* This is not required, as of now.
    tools {
         maven 'M3'
         }*/
            steps {
                
               sh '''
                    sh  merge_master.sh $GIT_BRANCH
                '''
		  }
        }
        stage('Deploy Admin Job') { 
            steps {
                sh 'echo "*** starting deployemnt in admin build ***"'
                build job: 'tesing', parameters: [[$class: 'StringParameterValue', name: 'test', value: "$GIT_BRANCH"]]
            }
        }
        stage('Delete temp PR Branch') { 
            steps {
                sh '''
                    echo "*** removing temp PR branch ***"
                    git push \'https://github.com/rohitAutomation/testing1.git\' --delete --force $GIT_BRANCH
                '''
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


