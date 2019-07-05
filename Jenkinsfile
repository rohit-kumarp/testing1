pipeline {

    agent any 
    stages {
        stage('merge master and push') {
 	/* This is not required, as of now.
    tools {
         maven 'M3'
         }*/
            steps {
                echo "*** creating temp branch with Pull Request & Merge with Latest Master"
               sh ''' 
                    result= curl -s -I https://admin.qa1freshbots.com/hello | grep HTTP/2 
                    echo $result
                    if  ! git fetch origin master ; then
                     echo "*** error: Failed to fetech latest master ***"
                    exit 1
                    fi
                    if  ! git merge FETCH_HEAD --no-ff  --no-edit  ; then
                     echo "*** error: Failed to merge with master ***"
                    exit 1
                    fi
                    git push origin $GIT_BRANCH
                '''
                echo "*** successfully pushed temp branch with Pull Request, Merged with Latest Master"

		  }
        }
        stage('Deploy Admin Job') { 
            steps {
                
                    echo "*** starting deployemnt in admin build ***"
                    build job: 'tesing', parameters: [[$class: 'StringParameterValue', name: 'test', value: "$GIT_BRANCH"]]
                
            }
        }
        stage('Delete temp PR Branch') { 
            steps {
                echo "*** removing temp PR branch ***"
                sh '''
                    if ! git push origin --delete --force $GIT_BRANCH ; then
                    echo "*** error: Failed to remove temp branch ***"
                    exit 1
                    fi
                '''
            }
        }

        stage('Wait for Admin server to be up') { 
            steps {
                echo "*** checking for admin server up or not ... ***"
               sh '''
                    result= curl -s -I https://admin.qa1freshbots.com/hello | grep HTTP/2 
                    echo $result
                '''//sh server_up_status.sh
            }
        }
        stage('test') { 

            steps {
                echo "*** starting automation sanity run ***"
            }
        }

     }

}


