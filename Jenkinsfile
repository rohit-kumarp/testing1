
def BRANCH= 'UNKNOWN'
pipeline {
    agent any 
    stages {
        stage('merging with latest master and push to repo') {
 	tools {
         maven 'M3'
         }
            steps {
                
               sh '''
                    sh  merge_master.sh $GIT_BRANCH
                '''
		}
    }
        stage('Deploy Admin Job') { 
            steps {
                sh 'echo "starting deployemnt in admin build"'
                build job: 'tesing', parameters: [[$class: 'StringParameterValue', name: 'test', value: "$GIT_BRANCH"]]
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


