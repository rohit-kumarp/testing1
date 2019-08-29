pipeline {
    agent any 
    stage('Server up/down Check') {
            steps {

               sh '''
                    sh /usr/local/project/jenkins-pipeline/apiServer-check.sh
                '''
            }

            post {

                    failure {
                        script {
                                    if (env.CHANGE_ID) {
                                pullRequest.comment('Auto "Pull Request" Check "FAILED" at stage 3(server restart) for Pull Request. PipeLine job failed to restart server with this pull request jar file.')
                             }
                        }
                    }

                }
        }

        stage('Tests') {

            steps {
                echo "*** starting automation smoke run ***"
            }
        }
}


