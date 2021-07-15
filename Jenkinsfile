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
                                            echo git ----- test
                                                '''
                echo "*** successfully pushed temp branch with Pull Request, Merged with Latest Master"

		  }
        }
        stage('Deploy Admin Job') { 
            steps {
                
                    echo "*** starting deployemnt in admin build ***"
                
            }
        }
        stage('Delete temp PR Branch') { 
            steps {
                echo "*** removing temp PR branch ***"
                sh '''
                   echo "stage 2 delete"
                '''
            }
        }

        stage('Wait for Admin server to be up') { 
            steps {
                echo "*** checking for admin server up or not ... ***"
               sh '''
                    echo "Step wait for admin server"
                '''
            }
        }
        stage('test') { 

            steps {
                echo "*** starting automation sanity run ***"
            }
        }

     }

}


